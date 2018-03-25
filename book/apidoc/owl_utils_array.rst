Utils.Array
===============================================================================

This document is auto-generated for Owl's APIs.
#52 entries have been extracted.
timestamp: 2018-03-25 21:51:59

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_utils_array.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_utils_array.ml>`_



Basic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val length : 'a array -> int

Refer to OCaml native array.

.. code-block:: ocaml

  val get : 'a array -> int -> 'a

Refer to OCaml native array.

.. code-block:: ocaml

  val set : 'a array -> int -> 'a -> unit

Refer to OCaml native array.

.. code-block:: ocaml

  val make : int -> 'a -> 'a array

Refer to OCaml native array.

.. code-block:: ocaml

  val create_float : int -> float array

Refer to OCaml native array.

.. code-block:: ocaml

  val init : int -> (int -> 'a) -> 'a array

Refer to OCaml native array.

.. code-block:: ocaml

  val make_matrix : int -> int -> 'a -> 'a array array

Refer to OCaml native array.

.. code-block:: ocaml

  val append : 'a array -> 'a array -> 'a array

Refer to OCaml native array.

.. code-block:: ocaml

  val concat : 'a array list -> 'a array

Refer to OCaml native array.

.. code-block:: ocaml

  val sub : 'a array -> int -> int -> 'a array

Refer to OCaml native array.

.. code-block:: ocaml

  val copy : 'a array -> 'a array

Refer to OCaml native array.

.. code-block:: ocaml

  val fill : 'a array -> int -> int -> 'a -> unit

Refer to OCaml native array.

.. code-block:: ocaml

  val blit : 'a array -> int -> 'a array -> int -> int -> unit

Refer to OCaml native array.

.. code-block:: ocaml

  val to_list : 'a array -> 'a list

Refer to OCaml native array.

.. code-block:: ocaml

  val of_list : 'a list -> 'a array

Refer to OCaml native array.

.. code-block:: ocaml

  val iter : ('a -> unit) -> 'a array -> unit

Refer to OCaml native array.

.. code-block:: ocaml

  val iteri : (int -> 'a -> unit) -> 'a array -> unit

Refer to OCaml native array.

.. code-block:: ocaml

  val fold_left : ('a -> 'b -> 'a) -> 'a -> 'b array -> 'a

Refer to OCaml native array.

.. code-block:: ocaml

  val fold_right : ('b -> 'a -> 'a) -> 'b array -> 'a -> 'a

Refer to OCaml native array.

.. code-block:: ocaml

  val map2 : ('a -> 'b -> 'c) -> 'a array -> 'b array -> 'c array

Refer to OCaml native array.

.. code-block:: ocaml

  val for_all : ('a -> bool) -> 'a array -> bool

Refer to OCaml native array.

.. code-block:: ocaml

  val exists : ('a -> bool) -> 'a array -> bool

Refer to OCaml native array.

.. code-block:: ocaml

  val mem : 'a -> 'a array -> bool

Refer to OCaml native array.

.. code-block:: ocaml

  val memq : 'a -> 'a array -> bool

Refer to OCaml native array.

.. code-block:: ocaml

  val sort : ('a -> 'a -> int) -> 'a array -> unit

Refer to OCaml native array.

.. code-block:: ocaml

  val stable_sort : ('a -> 'a -> int) -> 'a array -> unit

Refer to OCaml native array.

.. code-block:: ocaml

  val fast_sort : ('a -> 'a -> int) -> 'a array -> unit

Refer to OCaml native array.

.. code-block:: ocaml

  val unsafe_get : 'a array -> int -> 'a

Refer to OCaml native array.

.. code-block:: ocaml

  val unsafe_set : 'a array -> int -> 'a -> unit

Refer to OCaml native array.

Extended functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( @ ) : 'a array -> 'a array -> 'a array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L13>`__



.. code-block:: ocaml

  val set_n : 'a array -> int array -> 'a -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L17>`__



.. code-block:: ocaml

  val range : int -> int -> int array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L21>`__



.. code-block:: ocaml

  val count : 'a array -> 'a -> int

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L28>`__



.. code-block:: ocaml

  val insert : 'a array -> 'a array -> int -> 'a array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L35>`__



.. code-block:: ocaml

  val filteri_v : (int -> 'a -> bool * 'b) -> 'a array -> 'b array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L42>`__



.. code-block:: ocaml

  val filter_v : ('a -> bool * 'b) -> 'a array -> 'b array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L52>`__



.. code-block:: ocaml

  val filteri : (int -> 'a -> bool) -> 'a array -> 'a array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L56>`__



.. code-block:: ocaml

  val filter : ('a -> bool) -> 'a array -> 'a array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L68>`__



.. code-block:: ocaml

  val mapi : (int -> 'a -> 'b) -> 'a array -> 'b array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L71>`__



.. code-block:: ocaml

  val map : ('a -> 'b) -> 'a array -> 'b array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L81>`__



.. code-block:: ocaml

  val iter2 : ('a -> 'b -> 'c) -> 'a array -> 'b array -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L86>`__



.. code-block:: ocaml

  val iter3 : ('a -> 'b -> 'c -> 'd) -> 'a array -> 'b array -> 'c array -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L93>`__



.. code-block:: ocaml

  val map2i : (int -> 'a -> 'b -> 'c) -> 'a array -> 'b array -> 'c array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L100>`__



.. code-block:: ocaml

  val map2i_split2 : (int -> 'a -> 'b -> 'c * 'd) -> 'a array -> 'b array -> 'c array * 'd array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L106>`__



.. code-block:: ocaml

  val pad : [ `Left | `Right ] -> 'a array -> 'a -> int -> 'a array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L123>`__



.. code-block:: ocaml

  val greater_eqaul : 'a array -> 'a array -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L133>`__



.. code-block:: ocaml

  val swap : 'a array -> int -> int -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L147>`__



.. code-block:: ocaml

  val permute : int array -> 'a array -> 'a array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L154>`__



.. code-block:: ocaml

  val of_tuples : ('a * 'a) array -> 'a array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L160>`__



.. code-block:: ocaml

  val complement : 'a array -> 'a array -> 'a array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_utils_array.ml#L170>`__



