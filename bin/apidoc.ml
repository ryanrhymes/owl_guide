#!/usr/bin/env utop

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


(* given a mli, parse to retrieve api doc and save to a hashtbl *)
let parse_one_mli fname =
  let s = get_content fname in
  let apidoc = Owl.Utils.Stack.make () in
  (* TODO: still need to improve this regexp *)
  let regex = Str.regexp "^\\(val [_a-zA-Z0-9? ->:]+\\)[ \n]*(\*\*[ ]*\\([^*)]+\\)\*)" in
  let ofs = ref 0 in
  (
    try while true do
      let _ofs = Str.search_forward regex s !ofs in
      let _s = Str.matched_group 0 s in
      ofs := _ofs + (String.length _s);

      let _fun_typ = Str.matched_group 1 s in
      let _fun_doc = Str.matched_group 2 s in
      (* Printf.printf ">>> %s ||| %s <<<\n" _fun_typ _fun_doc; flush_all (); *)
      Owl.Utils.Stack.push apidoc (_fun_typ, _fun_doc)
    done with exn -> ()
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

  Array.iter (fun (file_name, module_name) ->
    Owl_log.info "parsing %s ..." file_name;
    let iname = src_root ^ file_name in
    let oname = dst_root ^ Filename.(basename file_name |> chop_extension) ^ ".rst" in
    let apidoc = parse_one_mli iname in
    write_to_rst apidoc oname module_name;

    Printf.fprintf h "%s\n\n" module_name;
  ) modules;

  close_out h


let _ =
  Owl_log.info "apidoc: start ...";
  let src_root = Sys.argv.(1) in
  let dst_root = Sys.argv.(2) in
  let module_file = Sys.argv.(3) in

  let module_list = get_module_files module_file in
  parse_modules src_root dst_root module_list;
  Owl_log.info "apidoc: finished!"
