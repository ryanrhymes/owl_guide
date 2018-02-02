#!/usr/bin/env utop

#require "owl_top"


(* parse module.txt to get a list of modules to generate api doc *)
let get_module_files fname =
  Owl.Utils.read_file fname


(* simple function to read in the content of a file *)
let get_content fname =
  Owl.Utils.read_file fname
  |> Array.fold_left (fun a b -> a ^ (String.trim b) ^ "\n") ""


(* given a mli, parse to retrieve api doc and save to a hashtbl *)
let parse_one_mli fname =
  let s = get_content fname in
  let apidoc = Owl.Utils.Stack.make () in
  (* TODO: still need to improve this regexp *)
  let regex = Str.regexp "^\\(val [a-zA-Z0-9? ->:]+\\)[ \n]*(\*\*[ ]*\\([^*)]+\\)\*)" in
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
let write_to_rst apidoc fname =
  let h = open_out fname in
  Printf.fprintf h "### auto-generated api doc, timestamp:%.0f *)\n\n" (Unix.gettimeofday ());

  Array.iter (fun (api, doc) ->
    Printf.fprintf h ".. code-block:: ocaml\n\n  %s\n\n" api;
    Printf.fprintf h "%s\n\n" doc;
  ) apidoc;

  close_out h


let _ =
  Owl_log.info "apidoc: start ...";
  let src_root = Sys.argv.(1) in
  let module_file = Sys.argv.(2) in
  let module_list = get_module_files module_file in
  let apidoc = parse_one_mli "/Users/liang/code/owl/src/owl/dense/owl_dense_ndarray_generic.mli" in
  write_to_rst apidoc "zzz.rst";
  Owl_log.info "apidoc: finished!"
