View Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#29 entries have been extracted.
timestamp: 2018-03-13 23:23:53

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_view.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_view.ml>`_



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

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L77>`__



.. code-block:: ocaml

  val to_arr : t -> A.arr

``to_arr x`` creates an new ndarray based on the view ``x``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L86>`__



Manipulation functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val get : t -> int array -> A.elt

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L103>`__



.. code-block:: ocaml

  val set : t -> int array -> A.elt -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L108>`__



.. code-block:: ocaml

  val get_slice : int list list -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L113>`__



.. code-block:: ocaml

  val set_slice : int list list -> t -> t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L241>`__



.. code-block:: ocaml

  val shape : t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val num_dims : t -> int

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L96>`__



.. code-block:: ocaml

  val nth_dim : t -> int -> int

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L98>`__



.. code-block:: ocaml

  val numel : t -> int

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L100>`__



Iteration functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val iteri : (int -> A.elt -> unit) -> t -> unit

``iteri f x`` iterates and applies ``f`` to every element in ``x``. ``f`` has type
``f : int array -> elt -> unit``, the first paramater is index. 1d indices are
passed to the user function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L207>`__



.. code-block:: ocaml

  val iter : (A.elt -> unit) -> t -> unit

Similar to ``iteri``, the index is not passed in.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L204>`__



.. code-block:: ocaml

  val mapi : (int -> A.elt -> A.elt) -> t -> unit

``mapi f x`` applies ``f : int array -> elt -> elt`` to every element in ``x``,
then save the result in place. 1d indices are passed to the user function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L216>`__



.. code-block:: ocaml

  val map : (A.elt -> A.elt) -> t -> unit

``map f x`` applies ``f : elt -> elt`` to every element in ``x``, then save the
the result in place in ``x``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L213>`__



.. code-block:: ocaml

  val iter2 : (A.elt -> A.elt -> unit) -> t -> t -> unit

``iter2 f x y`` applies ``f : elt -> elt -> elt`` every pair of elements in
``x`` and ``y``. The indices are not passed in the user function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L225>`__



.. code-block:: ocaml

  val map2 : (A.elt -> A.elt -> A.elt) -> t -> t -> unit

``map2 f x y`` applies ``f : elt -> elt -> elt`` every pair of elements in ``x``
and ``y``, then saves the result in ``y``. So be careful with the order, it
matters, the data reflected by view ``y`` will be modified.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L233>`__



.. code-block:: ocaml

  val iteri_nd : (int array -> A.elt -> unit) -> t -> unit

Similar to `iteri` but n-d indices are passed in. This function is much slower
than `iteri`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L210>`__



.. code-block:: ocaml

  val mapi_nd : (int array -> A.elt -> A.elt) -> t -> unit

Similar to `mapi` but n-d indices are passed in. This function is much slower
than `mapi`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L219>`__



Examination & Comparison
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val exists : (A.elt -> bool) -> t -> bool

``exists f x`` checks all the elements in ``x`` using ``f``. If at least one
element satisfies ``f`` then the function returns ``true`` otherwise ``false``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L260>`__



.. code-block:: ocaml

  val not_exists : (A.elt -> bool) -> t -> bool

``not_exists f x`` checks all the elements in ``x``, the function returns
  ``true`` only if all the elements fail to satisfy ``f : float -> bool``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L271>`__



.. code-block:: ocaml

  val for_all : (A.elt -> bool) -> t -> bool

``for_all f x`` checks all the elements in ``x``, the function returns ``true``
  if and only if all the elements pass the check of function ``f``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L274>`__



.. code-block:: ocaml

  val equal : t -> t -> bool

``equal x y`` returns ``true`` if ``x`` and ``y`` are elementwise equal.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L248>`__



.. code-block:: ocaml

  val not_equal : t -> t -> bool

``not_equal x y`` returns ``true`` if ``x`` and ``y`` are not elementwise equal.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_view.ml#L257>`__



