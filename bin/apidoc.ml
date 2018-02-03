#!/usr/bin/env utop

#require "re.pcre"
#require "owl_top"


(* parse module.txt to get a list of modules to generate api doc *)
let get_module_files fname =
  Owl.Utils.read_file fname
  |> Array.map (fun s ->
      let l = String.split_on_char ' ' s in
      let file_name = List.nth l 0 in
      let module_name = List.nth l 1 in
      file_name, module_name
    )


(* simple function to read in the content of a file *)
let get_content fname =
  Owl.Utils.read_file fname
  |> Array.fold_left (fun a b -> a ^ (String.trim b) ^ "\n") ""


(* convert some ocaml doc string into sphinx *)
let ocaml_to_sphinx doc =
  let restr = "\[(.+?)\]" in
  let regex = Re_pcre.regexp ~flags:[`MULTILINE] restr in
  Re.replace ~all:false regex ~f:(fun x ->
    Re.Group.get x 1 |> Printf.sprintf "``%s``"
  ) doc


(* given a mli, parse to retrieve api doc and save to a hashtbl *)
let parse_one_mli fname =
  let s = get_content fname in
  let apidoc = Owl.Utils.Stack.make () in
  let restr = "^(val .+)[ \n]*\(\*\*[ \n]*([\S\s]+?)[ \n]*\*\)" in
  let regex = Re_pcre.regexp ~flags:[`MULTILINE] restr in
  Re.all regex s |> List.iter (fun mc ->
    let _fun_typ = Re.Group.get mc 1 in
    let _fun_doc = Re.Group.get mc 2 in
    (* Printf.printf ">>> %s ||| %s <<<\n" _fun_typ _fun_doc; flush_all (); *)
    Owl.Utils.Stack.push apidoc (_fun_typ, _fun_doc)
  );
  Owl.Utils.Stack.to_array apidoc


(* dump the api doc to a rst file *)
let write_to_rst apidoc fname module_name =
  let h = open_out fname in
  Printf.fprintf h "%s\n%s\n\n" module_name (String.make 79 '=');
  Printf.fprintf h "This document is auto-generated for Owl's APIs.\n";
  Printf.fprintf h "#%i functions have been extracted.\n" (Array.length apidoc);
  Printf.fprintf h "timestamp:%.0f\n\n" (Unix.gettimeofday ());

  Array.iter (fun (api, doc) ->
    Printf.fprintf h ".. code-block:: ocaml\n\n  %s\n\n" api;
    Printf.fprintf h "%s\n\n" doc;
  ) apidoc;

  close_out h


(* parse all the modules to extract docs *)
let parse_modules src_root dst_root modules =
  let h = open_out (dst_root ^ "module_index.rst") in
  Printf.fprintf h "%s\n%s\n\n" "Owl's API Dcoumentation" (String.make 79 '=');
  Printf.fprintf h ".. toctree::\n  :maxdepth: 2\n  :caption: Modules:\n\n";
  let num_funs = ref 0 in

  Array.iter (fun (file_name, module_name) ->
    Owl_log.info "apidoc: parsing %s ..." file_name;
    let bname = Filename.(basename file_name |> chop_extension) in
    let iname = src_root ^ file_name in
    let oname = dst_root ^ bname ^ ".rst" in
    let apidoc = parse_one_mli iname in
    write_to_rst apidoc oname module_name;

    Printf.fprintf h "  %s\n\n" bname;
    num_funs := !num_funs + (Array.length apidoc);
  ) modules;

  Printf.fprintf h "#%i functions have extracted.\n\n" !num_funs;
  close_out h


let _ =
  Owl_log.info "apidoc: start ...";
  let src_root = Sys.argv.(1) in
  let dst_root = Sys.argv.(2) in
  let module_file = Sys.argv.(3) in

  let module_list = get_module_files module_file in
  parse_modules src_root dst_root module_list;
  Owl_log.info "apidoc: finished!"
