Indexing and Slicing
=================================================

Indexing and slicing is arguably the most important and fundamental functions in any numerical library. The flexible design can significantly simplify the code and enables us to write concise algorithms. In this chapter, I will present how to use slicing function in Owl.

Before we start, let's clarify some things.

* Slicing refers to the operation that extracts part of the data from an ndarrays or a matrix according to the well-defined **slice definition**.

* Slicing can be applied to all the dense data structures, i.e. both ndarrays and matrice.

* Slice definition is an `index list` which clarifies **what indices** should be accessed and in **what order** for each dimension of the passed in variable.

* There are two types of slicing in Owl: `basic slicing` and `fancy slicing`. The difference between the two is how the slice is define.



Basic Slicing
-------------------------------------------------

For basic slicing, each dimension in the slice definition must be defined in the format of **[start:stop:step]**. Owl provides two functions ``get_slice`` and ``set_slice`` to retrieve and assign slice values respectively.

.. code-block:: ocaml

  val get_slice : int list list -> ('a, 'b) t -> ('a, 'b) t

  val set_slice : int list list -> ('a, 'b) t -> ('a, 'b) t -> unit


Both functions accept ``int list list`` as its slice definition. Every ``list`` element in the ``int list list`` is assumed to be a range. E.g., `[ []; [2]; [-1;3] ]` is equivalent to its full slice definition ``[ R []; R [2]; R [-1;3] ]``, as we will introduce below in fancy slicing.



Fancy Slicing
-------------------------------------------------

Fancy slicing is more powerful than the basic one thanks to its slice definition. With fancy slicing, we can pass in a list of arbitrary indices which may not be possible to specify with aforementioned ``[start;stop;step]`` format.

.. code-block:: ocaml

  type index =
    | I of int       (* single index *)
    | L of int list  (* list of indices *)
    | R of int list  (* index range *)


Fancy slice is defined by an ``index list`` where you can use three type constructors to specify:

1) an individual index (using ``I`` constructor);
2) a list of indices (using ``L`` constructor);
3) a range of indices (using ``R`` constructor).


There are two functions to handle fancy slicing operations.

.. code-block:: ocaml

  val get_fancy : index list -> ('a, 'b) t -> ('a, 'b) t

  val set_fancy : index list -> ('a, 'b) t -> ('a, 'b) t -> unit


``get_fancy s x`` retrieves a slice of ``x`` defined by ``s``; whereas ``set_fancy s x y`` assigns the slice of ``x`` defined by ``s`` according to values in ``y``. Note that ``y`` must have the same shape as that defined by ``s``.

Basic slicing is a special case of fancy slicing where only type constructor ``R`` is used in the definition. For example, the following two definitions are equivalent.

.. code-block:: ocaml

  Arr.get_basic [ []; [0;8]; [3;9;2] ];;

  Arr.get_fancy [ R[]; R[0;8]; R[3;9;2] ];;


Note that both ``get_basic`` and ``get_fancy`` return a copy (rather than a view as that in Numpy); whilst ``set_basic`` and ``set_fancy`` modifies the original data in place.



Conventions in Definition
-------------------------------------------------

Essentially, Owl's slicing functions are very similar to those in Numpy. So if you already know how to slice n-dimensional arrays in Numpy, you should find this chapter very easy.

The following conventions require our attentions in order to write correct slice definition. These conventions can be equally applied to both basic and fancy slicing.

* Slice definition is a ``index list``. Each element within the ``index list`` corresponds one dimension in the passed in data, and it defines how the indices along this dimension should be accessed. Owl provides three constructors ``I``, ``L``, and ``R`` to let you specify single index, a list of indices, or a range of indices.

* Constructor ``I`` is trivial, it specifies a specific index. E.g., ``[ I 2; I 5 ]`` returns the element at position ``(2, 5)`` in a matrix.

* Constructor ``L`` is used to specify a list of indices. E.g., ``[ I 2; L [5;3] ]`` returns a ``1 x 2`` matrix consists of the elements at ``(2, 5)`` and ``(2, 3)`` in the original matrix.

* Constructor ``R`` is for specifying a range of indices. It has more conventions but by no means complicated. The following text is dedicated for range conventions.

* The format of the range definition follows **R [ start; stop; step ]**. Obviously, ``start`` specifies the starting index; ``stop`` specifies the stopping index (inclusive); and ``step`` specifies the step size. You do not have to specifies all three variables in the definition, please see the following rules.

* All three variables ``start``, ``stop``, and ``step`` can take both positive and negative values, but ``step`` is not allowed to take ``0`` value. Positive step indicates that indices will be visited in increasing order from ``start`` to ``stop``; and vice versa.

* For ``start`` and ``stop`` variables, positive value refers to a specific index; whereas negative value ``a`` will be translated into ``n + a`` where ``n`` is the total number of indices. E.g., ``[ -1; 0 ]`` means from the last index to the first one.

* If you pass in an empty list ``R []``, this will be expanded into ``[ 0; n - 1; 1 ]`` which means all the indices will be visited in increasing order with step size `1`.

* If you only specify one variable such as ``[ start ]``, then ``get_slice`` function assumes that you will take one specific index by automatically extending it into ``[ start; start; 1 ]``. As we can see, ``start`` and ``stop`` are the same, with step size 1.

* If you only specify two variables then ``slice`` function assumes they are ``[ start; stop ]`` which defines the range of indices. However, how ``get_slice`` will expand this slice definition depends, as we can see in the below, ``slice`` will visit the indices in different orders.

  - if ``start <= stop``, then it will be expanded to ``[ start; stop; 1 ]``;
  - if ``start > stop``, then it will be expanded to ``[ start; stop; -1 ]``;

- It is not necessary to specify all the definitions for all the dimensions, ``get_slice`` function will also expand it by assuming you will take all the data in higher dimensions. E.g., ``x`` has the shape ``[ 2; 3; 4 ]``, if we define the slice as ``[ [0] ]`` then ``get_slice`` will expand the definition into ``[ [0]; []; [] ]``

OK, that's all. Please make sure you understand it well before you start, but it is also fine you just learn by doing.



Extending Operators
-------------------------------------------------

The operators for indexing and slicing are built atop of the extending indexing operators introduced in OCaml 4.06. Three are used in Owl as follows.

**.%{ }** for indexing, as follows.

.. code-block:: ocaml

  open Arr;;

  let x = sequential [|10; 10; 10|];;
  let a = x.%{ [|2; 3; 4|] };;         (* i.e. Arr.get *)
  x.%{ [|2; 3; 4|] } <- 111.;;         (* i.e. Arr.set *)


**.${ }** for basic slicing, as follows.

.. code-block:: ocaml

  open Arr;;

  let x = sequential [|10; 10; 10|];;
  let a = x.${ [[0;4]; [6;-1]; [-1;0]] };;  (* i.e. Arr.get_slice *)

  let b = zeros (shape a);;
  x.${ [[0;4]; [6;-1]; [-1;0]] } <- b;;     (* i.e. Arr.set_slice *)


**.!{ }** for fancy slicing, as follows.

.. code-block:: ocaml

  open Arr;;

  let x = sequential [|10; 10; 10|];;
  let a = x.!{ [ L[2;2;1]; R[6;-1]; I 5] };;  (* i.e. Arr.get_fancy *)

  let b = zeros (shape a);;
  x.!{ [L[2;2;1]; R[6;-1]; I 5] } <- b;;      (* i.e. Arr.set_fancy *)




Slicing Examples
-------------------------------------------------

I always believe that nothing is better than concrete examples. I will use the basic slicing to demonstrate some examples in the following. Note that all the following examples can be equally applied to ndarray. OK, here they are.

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


Now, we can finally start our experiment. One benefit of running code in `utop` is that you can observe the output immediately to understand better how ``slice`` function works.

.. code-block:: ocaml

  (* simply take all the elements *)
  let s = [ ] in
    Mat.get_slice s x;;

  (* take row 2 *)
  let s = [ [2]; [] ] in
    Mat.get_slice s x;;

  (* same as above, take row 2, but only specify low dimension slice definition *)
  let s = [ [2] ] in
    Mat.get_slice s x;;

  (* take from row 1 to 3 *)
  let s = [ [1;3] ] in
    Mat.get_slice s x;;

  (* take from row 3 to 1, same as the example above but in reverse order *)
  let s = [ [3;1] ] in
    Mat.get_slice s x;;


Let' see some more complicated examples.

.. code-block:: ocaml

  (* take from row 1 to 3 and column 3 to 5, so a sub-matrix of x *)
  let s = [ [1;3]; [3;5] ] in
    Mat.get_slice s x;;

  (* take from row 1 to the last row *)
  let s = [ [1;-1]; [] ] in
    Mat.get_slice s x;;

  (* take the rows of even number indices, i.e., 0;2;4 *)
  let s = [ [0;-1;2] ] in
    Mat.get_slice s x;;

  (* take the column of odd number indices, i.e.,1;3;5 ... *)
  let s = [ []; [1;-1;2] ] in
    Mat.get_slice s x;;

  (* reverse all the rows of x *)
  let s = [ [-1;0] ] in
    Mat.get_slice s x;;

  (* reverse all the elements of x, same as applying reverse function *)
  let s = [ [-1;0]; [-1;0] ] in
    Mat.get_slice s x;;

  (* take the second last row, from the first column to the last, with step size 3 *)
  let s = [ [-2]; [0;-1;3] ] in
    Mat.get_slice s x;;


Slicing and indexing is an important topic in Owl, make sure you understand it well before proceeding to other chapters.
