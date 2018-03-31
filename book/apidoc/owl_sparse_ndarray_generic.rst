Sparse.Ndarray.Generic
===============================================================================

This document is auto-generated for Owl's APIs.
#85 entries have been extracted.
timestamp: 2018-03-31 21:31:56

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/sparse/owl_sparse_ndarray_generic.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/sparse/owl_sparse_ndarray_generic.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type ('a, 'b) kind = ('a, 'b) Bigarray.kind
    

Type of ``kind``.

.. code-block:: ocaml

  type ('a, 'b) t
    

Abstract type of sparse ndarray.

Create sparse ndarray
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val zeros : ('a, 'b) kind -> int array -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L64>`__



.. code-block:: ocaml

  val binary : ?density:float -> ('a, 'b) kind -> int array -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L557>`__



.. code-block:: ocaml

  val uniform : ?scale:float -> ?density:float -> ('a, 'b) kind -> int array -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L561>`__



Obtain basic properties
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val shape : ('a, 'b) t -> int array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L73>`__



.. code-block:: ocaml

  val num_dims : ('a, 'b) t -> int

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L75>`__



.. code-block:: ocaml

  val nth_dim : ('a, 'b) t -> int -> int

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L77>`__



.. code-block:: ocaml

  val numel : ('a, 'b) t -> int

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L79>`__



.. code-block:: ocaml

  val nnz : ('a, 'b) t -> int

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L19>`__



.. code-block:: ocaml

  val density : ('a, 'b) t -> float

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L81>`__



.. code-block:: ocaml

  val same_shape : ('a, 'b) t -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L88>`__



.. code-block:: ocaml

  val kind : ('a, 'b) t -> ('a, 'b) kind

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L86>`__



Manipulate a N-dimensional array
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val get : ('a, 'b) t -> int array -> 'a

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L110>`__



.. code-block:: ocaml

  val set : ('a, 'b) t -> int array -> 'a -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L115>`__



.. code-block:: ocaml

  val slice : int option array -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L323>`__



.. code-block:: ocaml

  val copy : ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L104>`__



.. code-block:: ocaml

  val flatten : ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L134>`__



.. code-block:: ocaml

  val reshape : ('a, 'b) t -> int array -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L145>`__



.. code-block:: ocaml

  val transpose : ?axis:int array -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L257>`__



.. code-block:: ocaml

  val swap : int -> int -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L275>`__



Iterate array elements
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val iteri : ?axis:int option array -> (int array -> 'a -> unit) -> ('a, 'b) t -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L185>`__



.. code-block:: ocaml

  val iter : ?axis:int option array -> ('a -> unit) -> ('a, 'b) t -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L190>`__



.. code-block:: ocaml

  val mapi : ?axis:int option array -> (int array -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L192>`__



.. code-block:: ocaml

  val map : ?axis:int option array -> ('a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L197>`__



.. code-block:: ocaml

  val filteri : ?axis:int option array -> (int array -> 'a -> bool) -> ('a, 'b) t -> int array array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L283>`__



.. code-block:: ocaml

  val filter : ?axis:int option array -> ('a -> bool) -> ('a, 'b) t -> int array array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L292>`__



.. code-block:: ocaml

  val foldi : ?axis:int option array -> (int array -> 'c -> 'a -> 'c) -> 'c -> ('a, 'b) t -> 'c

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L313>`__



.. code-block:: ocaml

  val fold : ?axis:int option array -> ('c -> 'a -> 'c) -> 'c -> ('a, 'b) t -> 'c

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L309>`__



.. code-block:: ocaml

  val iteri_nz : ?axis:int option array -> (int array -> 'a -> unit) -> ('a, 'b) t -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L214>`__



.. code-block:: ocaml

  val iter_nz : ?axis:int option array -> ('a -> unit) -> ('a, 'b) t -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L219>`__



.. code-block:: ocaml

  val mapi_nz : ?axis:int option array -> (int array -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L224>`__



.. code-block:: ocaml

  val map_nz : ?axis:int option array -> ('a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L234>`__



.. code-block:: ocaml

  val filteri_nz : ?axis:int option array -> (int array -> 'a -> bool) -> ('a, 'b) t -> int array array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L294>`__



.. code-block:: ocaml

  val filter_nz : ?axis:int option array -> ('a -> bool) -> ('a, 'b) t -> int array array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L303>`__



.. code-block:: ocaml

  val foldi_nz : ?axis:int option array -> (int array -> 'c -> 'a -> 'c) -> 'c -> ('a, 'b) t -> 'c

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L318>`__



.. code-block:: ocaml

  val fold_nz : ?axis:int option array -> ('c -> 'a -> 'c) -> 'c -> ('a, 'b) t -> 'c

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L311>`__



Examine array elements or compare two arrays 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val exists : ('a -> bool) -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L351>`__



.. code-block:: ocaml

  val not_exists : ('a -> bool) -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L353>`__



.. code-block:: ocaml

  val for_all : ('a -> bool) -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L355>`__



.. code-block:: ocaml

  val is_zero : ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L363>`__



.. code-block:: ocaml

  val is_positive : ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L365>`__



.. code-block:: ocaml

  val is_negative : ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L370>`__



.. code-block:: ocaml

  val is_nonpositive : ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L375>`__



.. code-block:: ocaml

  val is_nonnegative : ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L379>`__



.. code-block:: ocaml

  val equal : ('a, 'b) t -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L463>`__



.. code-block:: ocaml

  val not_equal : ('a, 'b) t -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L468>`__



.. code-block:: ocaml

  val greater : ('a, 'b) t -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L470>`__



.. code-block:: ocaml

  val less : ('a, 'b) t -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L474>`__



.. code-block:: ocaml

  val greater_equal : ('a, 'b) t -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L476>`__



.. code-block:: ocaml

  val less_equal : ('a, 'b) t -> ('a, 'b) t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L480>`__



Input/Output and helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val to_array : ('a, 'b) t -> (int array * 'a) array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L565>`__



.. code-block:: ocaml

  val of_array : ('a, 'b) kind -> int array -> (int array * 'a) array -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L574>`__



.. code-block:: ocaml

  val print : ('a, 'b) t -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L511>`__



.. code-block:: ocaml

  val pp_spnda : ('a, 'b) t -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L518>`__



.. code-block:: ocaml

  val save : ('a, 'b) t -> string -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L540>`__



.. code-block:: ocaml

  val load : ('a, 'b) kind -> string -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L542>`__



Unary mathematical operations 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val min : ('a, 'b) t -> 'a

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L495>`__



.. code-block:: ocaml

  val max : ('a, 'b) t -> 'a

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L497>`__



.. code-block:: ocaml

  val minmax : ('a, 'b) t -> 'a * 'a

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L482>`__



.. code-block:: ocaml

  val abs : ('a, 'b) t ->('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L453>`__



.. code-block:: ocaml

  val neg : ('a, 'b) t ->('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L426>`__



.. code-block:: ocaml

  val sum : ('a, 'b) t -> 'a

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L457>`__



.. code-block:: ocaml

  val mean : ('a, 'b) t -> 'a

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L461>`__



Binary mathematical operations 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L411>`__



.. code-block:: ocaml

  val sub : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L428>`__



.. code-block:: ocaml

  val mul : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L430>`__



.. code-block:: ocaml

  val div : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L441>`__



.. code-block:: ocaml

  val add_scalar : ('a, 'b) t -> 'a ->('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L383>`__



.. code-block:: ocaml

  val sub_scalar : ('a, 'b) t -> 'a ->('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L387>`__



.. code-block:: ocaml

  val mul_scalar : ('a, 'b) t -> 'a ->('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L389>`__



.. code-block:: ocaml

  val div_scalar : ('a, 'b) t -> 'a ->('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L393>`__



.. code-block:: ocaml

  val scalar_add : 'a -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L395>`__



.. code-block:: ocaml

  val scalar_sub : 'a -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L399>`__



.. code-block:: ocaml

  val scalar_mul : 'a -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L403>`__



.. code-block:: ocaml

  val scalar_div : 'a -> ('a, 'b) t -> ('a, 'b) t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/sparse/owl_sparse_ndarray_generic.ml#L407>`__



