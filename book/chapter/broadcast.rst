Broadcasting Operation
=================================================

Indexing, slicing, and broadcasting are three fundamental functions in `Ndarray module <https://github.com/ryanrhymes/owl/blob/master/src/owl/dense/owl_dense_ndarray_generic.mli>`_. This chapter introduces the broadcasting operation in Owl. For indexing and slicing, please refer to `[this Chapter] <slicing>`_.



What Is Broadcasting?
-------------------------------------------------

There are many binary (mathematical) operators take two ndarrays as inputs, e.g. ``add``, ``sub``, and etc. In the trivial case, the inputs have exactly the same shape. However, in many real-world applications, we need to operate on two ndarrays whose shapes do not match, then how to apply the smaller one to the bigger one is referred to as `broadcasting`.

Broadcasting can save unnecessary memory allocation. E.g., assume we have a ``1000 x 500`` matrix ``x`` containing 1000 samples, and each sample has 500 features. Now we want to add a bias value for each feature, i.e. a bias vector ``v`` of shape ``1 x 500``.

Because the shape of ``x`` and ``v`` do not match, we need to tile ``v`` so that it has the same shape as that of ``x``.

.. code-block:: ocaml

  let x = Mat.uniform 1000 500;;  (* generate random samples *)
  let v = Mat.uniform 1 500;;     (* generate random bias *)


  let u = Mat.tile v [|1000;1|];; (* align the shape by tiling *)
  Mat.(x + u);;


The code above certainly works, but it is obvious that the solution uses much more memory. High memory consumption is not desirable for many applications, especially for those running on resource-constrained devices. Therefore we need the broadcasting operation come to rescue.

.. code-block:: ocaml

  let x = Mat.uniform 1000 500;;  (* generate random samples *)
  let v = Mat.uniform 1 500;;     (* generate random bias *)

  Mat.(x + u);;                   (* returns 1000 x 500 ndarray *)




Shape Constraints
-------------------------------------------------

In broadcasting, the shapes of two inputs cannot be arbitrarily different, they must be subject to some constraints.

The convention used in broadcasting operation is much simpler than slicing. Given two matrices/ndarrays of the same dimensionality, for each dimension, one of the following two conditions must be met:

* both are equal.
* either is one.

Here are some **valid** shapes where broadcasting can be applied between ``x`` and ``y``.

.. code-block:: ocaml

  x : [| 2; 1; 3 |]    y : [| 1; 1; 1 |]
  x : [| 2; 1; 3 |]    y : [| 2; 1; 1 |]
  x : [| 2; 1; 3 |]    y : [| 2; 3; 1 |]
  x : [| 2; 1; 3 |]    y : [| 2; 3; 3 |]
  x : [| 2; 1; 3 |]    y : [| 1; 1; 3 |]
  ...


Here are some **invalid** shapes that violate the aforementioned constraints so that the broadcasting cannot be applied.

.. code-block:: ocaml

  x : [| 2; 1; 3 |]    y : [| 1; 1; 2 |]
  x : [| 2; 1; 3 |]    y : [| 3; 1; 1 |]
  x : [| 2; 1; 3 |]    y : [| 3; 1; 1 |]
  ...


What if ``y`` has less dimensionality than ``x``? E.g., ``x`` has the shape ``[|2;3;4;5|]`` wheras ``y`` has the shape ``[|4;5|]``. In this case, Owl first calls ``Ndarray.expand`` function to increase ``y``'s dimensionality to the same number as ``x``'s. Technically, two ndarrays are aligned along the highest dimension. In other words, this is done by appending ``1`` s to lower dimension of ``y``, so the new shape of ``y`` becomes ``[|1;1;4;5|]``.

You can try ``expand`` by yourself, as below.

.. code-block:: ocaml

  let y = Arr.sequential [|4;5|];;
  let y' = Arr.expand y 4;;
  Arr.shape y';;  (* returns [|1;1;4;5|] *)




Supported Operations
-------------------------------------------------

The broadcasting operation is transparent to programmers, which means it will be automatically applied if the shapes of two operators do not match (given the constraints are met of course). Currently, the following operations in Owl support broadcasting:

==========================    ===========
Function Name                 Operators
==========================    ===========
``add``                       ``+``
``sub``                       ``-``
``mul``                       ``*``
``div``                       ``/``
``pow``                       ``**``
``min2``
``max2``
``atan2``
``hypot``
``fmod``
``elt_equal``                 ``=.``
``elt_not_equal``             ``!=.`` ``<>.``
``elt_less``                  ``<.``
``elt_greater``               ``>.``
``elt_less_equal``            ``<=.``
``elt_greater_equal``         ``>=.``
==========================    ===========
