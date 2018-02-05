View Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#21 entries have been extracted.
timestamp:1517850918

Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t
    

``t`` is the abstract type to represent a view atop of an ndarray.



Conversion functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val of_arr : A.arr -> t

``of_arr x`` creates a view from ndarray ``x``.



.. code-block:: ocaml

  val to_arr : t -> A.arr

``to_arr x`` creates an new ndarray based on the view ``x``.



Manipulation functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val get : t -> int array -> A.elt

Refer to :doc:`owl_dense_ndarray_generic`



.. code-block:: ocaml

  val set : t -> int array -> A.elt -> unit

Refer to :doc:`owl_dense_ndarray_generic`



.. code-block:: ocaml

  val get_slice : int list list -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`



.. code-block:: ocaml

  val set_slice : int list list -> t -> t -> unit

Refer to :doc:`owl_dense_ndarray_generic`



.. code-block:: ocaml

  val shape : t -> int array

Refer to :doc:`owl_dense_ndarray_generic`



.. code-block:: ocaml

  val num_dims : t -> int

Refer to :doc:`owl_dense_ndarray_generic`



.. code-block:: ocaml

  val nth_dim : t -> int -> int

Refer to :doc:`owl_dense_ndarray_generic`



.. code-block:: ocaml

  val numel : t -> int

Refer to :doc:`owl_dense_ndarray_generic`



Iteration functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val iteri : (int array -> A.elt -> unit) -> t -> unit

``iteri f x`` iterates and applies ``f`` to every element in ``x``. ``f`` has type
``f : int array -> elt -> unit``, the first paramater is index. The function
is much slower than ``iter``.



.. code-block:: ocaml

  val iter : (A.elt -> unit) -> t -> unit

Similar to ``iteri``, the index is not passed in.



.. code-block:: ocaml

  val mapi : (int array -> A.elt -> A.elt) -> t -> unit

``mapi f x`` applies ``f : int array -> elt -> elt`` to every element in ``x``,
then save the result in place. This function is much slower than ``map``.



.. code-block:: ocaml

  val map : (A.elt -> A.elt) -> t -> unit

``map f x`` applies ``f : elt -> elt`` to every element in ``x``, then save the
the result in place in ``x``.



.. code-block:: ocaml

  val iter2 : (A.elt -> A.elt -> unit) -> t -> t -> unit

``iter2 f x y`` applies ``f : elt -> elt -> elt`` every pair of elements in
``x`` and ``y``. The indices are not passed in the user function.



.. code-block:: ocaml

  val map2 : (A.elt -> A.elt -> A.elt) -> t -> t -> unit

``map2 f x y`` applies ``f : elt -> elt -> elt`` every pair of elements in ``x``
and ``y``, then saves the result in ``y``. So be careful with the order, it
matters, the data reflected by view ``y`` will be modified.



