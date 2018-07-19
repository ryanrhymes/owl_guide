#!/usr/bin/env owl

open Owl
module G = Owl_lazy.Make (Arr)


let f x y = G.(sin (mul x y))

let visualise_01 () =
  let x = G.var_arr "x" ~shape:[|8;4|] in
  let y = G.var_arr "y" ~shape:[|1;4|] in
  let z = f x y in

  let input = [|G.arr_to_node x; G.arr_to_node y|] in
  let output = [|G.arr_to_node z|] in
  let graph = G.make_graph ~input ~output "test" in
  let s = G.graph_to_dot graph in

  Owl_io.write_file "plot_cgraph_01.dot" s;
  Sys.command "dot -Tpdf plot_cgraph_01.dot -o plot_cgraph_01.pdf" |> ignore


let _ =
  visualise_01 ()
