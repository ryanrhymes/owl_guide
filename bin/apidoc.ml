#!/usr/bin/env utop
(** This script is for building Owl's API documentation.           *)
(** Liang Wang, Computer Lab, University of Cambridge, 2018.02.01. *)

#require "re.pcre"
#require "owl_top"


(* simple function to read in the content of a file *)
let get_content fname = Owl.Utils.read_file_string ~trim:false fname


(* parse module.txt to get a list of modules to generate api doc *)
let get_module_files fname =
  Owl.Utils.read_file fname |>
  Array.map (fun s ->
    let l = String.split_on_char '|' s in
    let file_name = List.nth l 0 |> String.trim in
    let module_name = List.nth l 1 |> String.trim in
    file_name, module_name
  )


(* extract sections for source file *)
let extract_sections s =
  let regstr = "\(\*\*[ ]*\{[ \d]*(.+?)\}[ ]*\*\)[ \n]*" in
  let regex = Re_pcre.regexp ~flags:[`MULTILINE] regstr in
  let sec_head = Owl.Utils.Stack.make () in
  let sec_body = Owl.Utils.Stack.make () in

  Re.split_full regex s |> List.iter (function
    | `Delim x -> Owl.Utils.Stack.push sec_head (Re.Group.get x 1)
    | `Text x  -> Owl.Utils.Stack.push sec_body x
  );

  let sections = Owl.Utils.Stack.make () in
  let _head = Owl.Utils.Stack.to_array sec_head in
  let _body = Owl.Utils.Stack.to_array sec_body in
  Array.iteri (fun i head ->
    let body = _body.(i + 1) in
    Owl.Utils.Stack.push sections (head, body)
  ) _head;

  Owl.Utils.Stack.to_array sections


(* given a section, parse to retrieve api/type and save to a hashtbl *)
let parse_one_section regstr s =
  let apidoc = Owl.Utils.Stack.make () in
  let regex = Re_pcre.regexp ~flags:[`MULTILINE] regstr in
  Re.all regex s |> List.iter (fun mc ->
    let _fun_typ = Re.Group.get mc 1 in
    let _fun_doc = Re.Group.get mc 2 in
    let _fun_tup = `Function (_fun_typ, _fun_doc) in
    Owl.Utils.Stack.push apidoc _fun_tup
  );
  Owl.Utils.Stack.to_array apidoc


(* given a mli, parse to retrieve api doc and save to a hashtbl *)
let parse_one_mli fname =
  let res0 = "[ \n]*(type .+?)[ \n]*\(\*\*[ \n]*([\S\s]+?)[ \n]*\*\)" in
  let res1 = "[ \n]*(val .+?)[ \n]*\(\*\*[ \n]*([\S\s]+?)[ \n]*\*\)" in

  let s = get_content fname in
  let sections = extract_sections s in

  if Array.length sections = 0 then (
    let typdoc = parse_one_section res0 s in
    let apidoc = parse_one_section res1 s in
    Array.append typdoc apidoc
  )
  else (
    Array.fold_left (fun acc (head, body) ->
      let typdoc = parse_one_section res0 body in
      let apidoc = parse_one_section res1 body in
      Array.append typdoc apidoc |>
      Array.append [| `Section head |] |>
      Array.append acc
    ) [||] sections;
  )


(* dump the api doc to a rst file *)
let write_to_rst apidoc fname module_name =
  let h = open_out fname in
  Printf.fprintf h "%s\n%s\n\n" module_name (String.make 79 '=');
  Printf.fprintf h "This document is auto-generated for Owl's APIs.\n";
  Printf.fprintf h "#%i entries have been extracted.\n" (Array.length apidoc);
  Printf.fprintf h "timestamp:%.0f\n\n" (Unix.gettimeofday ());

  Array.iter (function
    | `Section section_head -> (
        let len = String.length section_head in
        let line = String.make (max len 79) '-' in
        Printf.fprintf h "%s\n%s\n\n\n\n" section_head line;
      )
    | `Function (api, doc)  -> (
        Printf.fprintf h ".. code-block:: ocaml\n\n  %s\n\n" api;
        Printf.fprintf h "%s\n\n\n\n" doc;
      )
  ) apidoc;

  close_out h


(* parse all the modules to extract docs *)
let parse_modules src_root dst_root modules =
  let h = open_out (dst_root ^ "module_index.rst") in
  Printf.fprintf h "%s\n%s\n\n" "Owl's API Dcoumentation" (String.make 79 '=');
  Printf.fprintf h ".. toctree::\n  :maxdepth: 2\n  :caption: Modules:\n\n";
  let num_funs = ref 0 in

  Array.iter (fun (file_name, module_name) ->
    Owl_log.info "owl_doc: parsing %s ..." file_name;
    let bname = Filename.(basename file_name |> chop_extension) in
    let iname = src_root ^ file_name in
    let oname = dst_root ^ bname ^ ".rst" in
    let alldoc = parse_one_mli iname in
    write_to_rst alldoc oname module_name;

    Printf.fprintf h "  %s\n\n" bname;
    num_funs := !num_funs + (Array.length alldoc);
  ) modules;

  Printf.fprintf h "#%i entries (incl. constants, types, and functions) have been extracted.\n\n" !num_funs;
  close_out h


let _ =
  Owl_log.info "owl_doc: start ...";
  let src_root = Sys.argv.(1) in
  let dst_root = Sys.argv.(2) in
  let module_file = Sys.argv.(3) in

  let module_list = get_module_files module_file in
  parse_modules src_root dst_root module_list;
  Owl_log.info "owl_doc: finished!"
