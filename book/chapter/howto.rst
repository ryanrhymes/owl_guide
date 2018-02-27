How-To?
=================================================

`#0` How to quickly try out the latest build?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This can be achieved by simply pulling Owl's docker image.

.. code-block:: bash

  docker pull ryanrhymes/owl
  docker run -t -i ryanrhymes/owl

If you want to run Owl on different platforms such as ARM, please refer [here](https://github.com/ryanrhymes/owl#run-owl-on-different-platforms) for more details.


`#1` How to make toplevel automatically load Owl when it starts?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can edit the ``.ocamlinit`` file in your home directory by adding the following lines.

.. code-block:: ocaml
  #use "topfind"
  #require "owl"
  open Owl


If you don't want to open Owl module, please remove the ``open Owl``. If you use ``utop`` rather than OCaml's default toplevel, remove the redundant ``#use "topfind"``.


`#2` How to check the performance of Linalg module?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Calling the ``Linalg.Generic.peakflops ()`` function will return you the number of float operations per second (flops). This number is derived by calculating the amount of time spent in multiplying two ``2000 x 2000`` matrices. Julia provides the same function and you can use this to compare two.


`#3` How to measure the time spent in an operation?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

``Owl.Utils.time`` function can be used to measure the time spent in one operation. It takes a function of type ``(unit -> 'a)`` as input and returns a float number represent the time in ``ms``. Here is an example.

.. code-block:: ocaml

  let x = Mat.uniform 1000 1000 in
  let f () = Mat.sum x in
  Owl.Utils.time f;;


`#4` How to concatenate a list of ndarrays?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: ocaml

  Arr.concatenate ~axis:0 [|x; y; z|];;



`#5` How to split an ndarray?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: ocaml

  Arr.split ~axis:0 [|2;4;2|] x;;



`#6` How to make one-hot vectors?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: ocaml

  let x = Mat.zeros 4 4;;
  Mat.set_index x [| Utils.range 0 3; [|3;2;1;0|] |] [|1.|];;



`#7` How to circular shift the columns/rows of a matrix?
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: ocaml

  Mat.get_slice [ R []; L [1;2;3;0] ] x;;



`#8` Save & Load Matrices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

All matrices can be serialised to storage by using ``save``. Later, you can load a matrix using ``load`` function.

.. code-block:: ocaml

  Mat.save x "m0.mat";;    (* save x to m0.mat file *)
  Mat.load "m0.mat";;      (* load m0.mat back to the memory *)


There are also corresponding ``save_txt`` and ``load_txt`` functions for a simple tab-delimited, human-readable format.  Note the performance is much worse than the corresponding ``save`` and ``load``.
