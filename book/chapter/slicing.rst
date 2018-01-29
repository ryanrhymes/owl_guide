Indexing and Slicing
=================================================

Indexing and slicing is arguably one of the most important and fundamental functions in any numerical library. The flexible design can significantly reduce the code and enable us to write concise algorithms. In this tutorial, I will present how to use slicing related function in Owl.

Before we start, let's clarify some things.

* Slicing refers to the operation that extracts part of the data (e.g., ndarrays or matrices) according to the well-defined **slice definition**.

* Slice can be applied to all the dense data structures such as Ndarray, Matrix, and Vector. In this tutorial, I will only use matrix to present examples.

* Slice definition is an `index list` which clarifies what indices will be accessed and in what order for each dimension of the passed in variable.


Types and Functions
-------------------------------------------------

As we have mentioned, slice is defined by an `index list` wherein you can specify: 1) individual index (using `I` constructor); 2) a list of indices (using `L` constructor); 3) a range of indices (using `R` constructor). The type definition clarifies what I have told you.

.. code-block:: ocaml

  type index =
    | I of int       (* single index *)
    | L of int list  (* list of indices *)
    | R of int list  (* index range *)


There are two main functions in Owl to handle slicing operations. You can find both functions in all `Dense` modules such as `Ndarray` and `Matrix` modules.

.. code-block:: ocaml

  val get_slice : index list -> ('a, 'b) t -> ('a, 'b) t

  val set_slice : index list -> ('a, 'b) t -> ('a, 'b) t -> unit


`get_slice s x` is used to retrieve a slice of `x` defined by `s`; whereas `set_slice s x y` assigns the slice of `x` defined by `s` according to values in `y`. Note that `y` must have the same shape as the defined slice in `x`.



Basic Conventions
-------------------------------------------------

Essentially, Owl offers a slicing function very similar to that in Numpy. So if you already know how to slice n-dimensional arrays in Numpy, you should find this tutorial very easy.

The basic grammar is `Mat.get_slice s x` where `x` is the data (a matrix in this case) to be sliced, and `s` is the slice definition. The returned result is part of `x` of the same dimensionality (but may have different shape). Briefly, the `get_slice` function follows the conventions below.

- Slice definition is a `index list`. Each element within the `index list` corresponds one dimension in the passed in data, and it defines how the indices along this dimension should be accessed. Owl provides three constructors `I`, `L`, and `R` to let you specify single index, a list of indices, or a range of indices.

- Constructor `I` is trivial, it specifies a specific index. E.g., `[ I 2; I 5 ]` returns the element at position `(2, 5)` in a matrix.

- Constructor `L` is used to specify a list of indices. E.g., `[ I 2; L [5;3] ]` returns a `1 x 2` matrix consists of the elements at `(2, 5)` and `(2, 3)` in the original matrix.

- Constructor `R` is for specifying a range of indices. It has more conventions but by no means complicated. The following text is dedicated for range conventions.

- The format of the range definition follows **`R [ start; stop; step ]`**. Obviously, `start` specifies the starting index; `stop` specifies the stopping index (inclusive); and `step` specifies the step size. You do not have to specifies all three variables in the definition, please see the following rules.

- All three variables `start`, `stop`, and `step` can take both positive and negative values, but `step` is not allowed to take `0` value. Positive step indicates that indices will be visited in increasing order from `start` to `stop`; and vice versa.

- For `start` and `stop` variables, positive value refers to a specific index; whereas negative value `a` will be translated into `n + a` where `n` is the total number of indices. E.g., `[ -1; 0 ]` means from the last index to the first one.

- If you pass in an empty list `R []`, this will be expanded into `[ 0; n - 1; 1 ]` which means all the indices will be visited in increasing order with step size `1`.

- If you only specify one variable such as `[ start ]`, then `get_slice` function assumes that you will take one specific index by automatically extending it into `[ start; start; 1 ]`. As we can see, `start` and `stop` are the same, with step size 1.

- If you only specify two variables then `slice` function assumes they are `[ start; stop ]` which defines the range of indices. However, how `get_slice` will expand this slice definition depends, as we can see in the below, `slice` will visit the indices in different orders.
  * if `start <= stop`, then it will be expanded to `[ start; stop; 1 ]`;
  * if `start > stop`, then it will be expanded to `[ start; stop; -1 ]`;

- It is not necessary to specify all the definitions for all the dimensions, `get_slice` function will also expand it by assuming you will take all the data in higher dimensions. E.g., `x` has the shape `[ 2; 3; 4 ]`, if we define the slice as `[ [0] ]` then `get_slice` will expand the definition into `[ [0]; []; [] ]`

OK, that's all. Please make sure you understand it well before you start, but it is also fine you just learn by doing.



A Simpler Version
-------------------------------------------------

What I told you before was that Owl provides two function `get_slice` and `set_slice` to retrieve and assign slice values, but I didn't tell you there is also a simplified version of two functions.

.. code-block:: ocaml

val get_slice_simple : int list list -> ('a, 'b) t -> ('a, 'b) t

val set_slice_simple : int list list -> ('a, 'b) t -> ('a, 'b) t -> unit


The different is that the simplified functions accept `int list list` as slice definition. Every `list` element in the passed in `int list list` is assumed to be a range. E.g., `[ []; [2]; [-1;3] ]` is equivalent to its full slice definition `[ R []; R [2]; R [-1;3] ]`.

The advantage of introducing these two simplified functions is to reduce some typing on the keyboard. In reality, only range definition can already help us in sorting out many programming problem.



Some Slicing Examples
-------------------------------------------------

I always believe that nothing is better than concrete example while learning. I will use the simplified slicing functions for demonstrating examples. Also, note that all the following example can be equally applied to ndarray. OK, here they are.

Let's first define a sequential matrix as the input data for the following examples.

.. code-block:: ocaml

  let x = Mat.sequential 5 7;;


You should be able to see the following output in `utop`.

.. code-block:: bash

     C0 C1 C2 C3 C4 C5 C6
  R0  0  1  2  3  4  5  6
  R1  7  8  9 10 11 12 13
  R2 14 15 16 17 18 19 20
  R3 21 22 23 24 25 26 27
  R4 28 29 30 31 32 33 34

  val x : Mat.mat =


Now, we can finally start our experiment. It is better you play around with these code in `utop` so that you can observe the output to help you understand how `slice` function works.

.. code-block:: ocaml

  (* simply take all the elements *)
  let s = [ ] in
    Mat.get_slice_simple s x;;

  (* take row 2 *)
  let s = [ [2]; [] ] in
    Mat.get_slice_simple s x;;

  (* same as above, take row 2, but only specify low dimension slice definition *)
  let s = [ [2] ] in
    Mat.get_slice_simple s x;;

  (* take from row 1 to 3 *)
  let s = [ [1;3] ] in
    Mat.get_slice_simple s x;;

  (* take from row 3 to 1, same as the example above but in reverse order *)
  let s = [ [3;1] ] in
    Mat.get_slice_simple s x;;


Let' see some slightly more complicated examples, but they should be easy to understand.

.. code-block:: ocaml

  (* take from row 1 to 3 and column 3 to 5, so a sub-matrix of x *)
  let s = [ [1;3]; [3;5] ] in
    Mat.get_slice_simple s x;;

  (* take from row 1 to the last row *)
  let s = [ [1;-1]; [] ] in
    Mat.get_slice_simple s x;;

  (* take the rows of even number indices, i.e., 0;2;4 *)
  let s = [ [0;-1;2] ] in
    Mat.get_slice_simple s x;;

  (* take the column of odd number indices, i.e.,1;3;5 ... *)
  let s = [ []; [1;-1;2] ] in
    Mat.get_slice_simple s x;;

  (* reverse all the rows of x *)
  let s = [ [-1;0] ] in
    Mat.get_slice_simple s x;;

  (* reverse all the elements of x, same as applying reverse function *)
  let s = [ [-1;0]; [-1;0] ] in
    Mat.get_slice_simple s x;;

  (* take the second last row, from the first column to the last, with step size 3 *)
  let s = [ [-2]; [0;-1;3] ] in
    Mat.get_slice_simple s x;;


Iterate Slices
-------------------------------------------------

You can also iterate all slices along selected axes by calling `iter_slice` or `iteri_slice` functions. E.g., in `iteri_slice axis x`, `x` is the input data, and `axis` is an `int array` containing the indices of the axes that we can want to iterate. Note that the order of the indices in `axis` can be arbitrary, not necessarily in increasing order.

Again, a simple example will make everything clear. I will use a 3-dimensional array in the following example. E.g., a ndarray of dimension
`[|2; 2; 3|]`, `iter_slice [0] x` takes the following slices in order

.. code-block:: bash

  slice `[ [0]; []; [] ]`;
  slice `[ [1]; []; [] ]`;


Another example, `iter_slice [1] x` will visit the slices in the following order:

.. code-block:: bash

  slice `[ []; [0]; [] ]`;
  slice `[ []; [1]; [] ]`;
  slice `[ []; [2]; [] ]`;


Third example, `iter_slice [1;0] x` will visit the slices in the following order:

.. code-block:: bash

  slice `[ [0]; [0]; [] ]`;
  slice `[ [1]; [0]; [] ]`;
  slice `[ [0]; [1]; [] ]`;
  slice `[ [1]; [1]; [] ]`;
  slice `[ [0]; [2]; [] ]`;
  slice `[ [1]; [2]; [] ]`;


Fourth example, `iter_slice [0;1] x` will visit the slices in the following order:

.. code-block:: bash

  slice `[ [0]; [0]; [] ]`;
  slice `[ [0]; [1]; [] ]`;
  slice `[ [0]; [2]; [] ]`;
  slice `[ [1]; [0]; [] ]`;
  slice `[ [1]; [1]; [] ]`;
  slice `[ [1]; [2]; [] ]`;


I think you are smart enough to figure out the order in `axis` variable indicates the order we visit each slice, the higher position indicates the higher priority of increasing the corresponding index. Here are some examples with concrete outputs.

.. code-block:: ocaml

  let x = Arr.sequential [|2;3;4|];;

  Arr.iter_slice [|0|] (fun a -> Arr.print a; print_endline "===") x;;
  Arr.iter_slice [|0;1|] (fun a -> Arr.print a; print_endline "===") x;;
  Arr.iter_slice [|1;0|] (fun a -> Arr.print a; print_endline "===") x;;
  Arr.iter_slice [|2;0|] (fun a -> Arr.print a; print_endline "===") x;;
  ...


Observing the outputs of these examples should help you in understanding how iteration of slice works in Owl. In general, slice operation and iteration is easy and flexible in Owl, using `slice` properly can help you in writing elegant and concise code.
