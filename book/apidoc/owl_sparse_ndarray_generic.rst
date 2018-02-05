Sparse.Ndarray.Generic
===============================================================================

This document is auto-generated for Owl's APIs.
#85 entries have been extracted.
timestamp:1517862060

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/owl/sparse/owl_sparse_ndarray_generic.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/owl/sparse/owl_sparse_ndarray_generic.ml>`_



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



.. code-block:: ocaml

  val binary : ?density:float -> ('a, 'b) kind -> int array -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val uniform : ?scale:float -> ?density:float -> ('a, 'b) kind -> int array -> ('a, 'b) t

TODO



Obtain basic properties
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val shape : ('a, 'b) t -> int array

TODO



.. code-block:: ocaml

  val num_dims : ('a, 'b) t -> int

TODO



.. code-block:: ocaml

  val nth_dim : ('a, 'b) t -> int -> int

TODO



.. code-block:: ocaml

  val numel : ('a, 'b) t -> int

TODO



.. code-block:: ocaml

  val nnz : ('a, 'b) t -> int

TODO



.. code-block:: ocaml

  val density : ('a, 'b) t -> float

TODO



.. code-block:: ocaml

  val same_shape : ('a, 'b) t -> ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val kind : ('a, 'b) t -> ('a, 'b) kind

TODO



Manipulate a N-dimensional array
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val get : ('a, 'b) t -> int array -> 'a

TODO



.. code-block:: ocaml

  val set : ('a, 'b) t -> int array -> 'a -> unit

TODO



.. code-block:: ocaml

  val slice : int option array -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val copy : ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val flatten : ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val reshape : ('a, 'b) t -> int array -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val transpose : ?axis:int array -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val swap : int -> int -> ('a, 'b) t -> ('a, 'b) t

TODO



Iterate array elements
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val iteri : ?axis:int option array -> (int array -> 'a -> unit) -> ('a, 'b) t -> unit

TODO



.. code-block:: ocaml

  val iter : ?axis:int option array -> ('a -> unit) -> ('a, 'b) t -> unit

TODO



.. code-block:: ocaml

  val mapi : ?axis:int option array -> (int array -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val map : ?axis:int option array -> ('a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val filteri : ?axis:int option array -> (int array -> 'a -> bool) -> ('a, 'b) t -> int array array

TODO



.. code-block:: ocaml

  val filter : ?axis:int option array -> ('a -> bool) -> ('a, 'b) t -> int array array

TODO



.. code-block:: ocaml

  val foldi : ?axis:int option array -> (int array -> 'c -> 'a -> 'c) -> 'c -> ('a, 'b) t -> 'c

TODO



.. code-block:: ocaml

  val fold : ?axis:int option array -> ('c -> 'a -> 'c) -> 'c -> ('a, 'b) t -> 'c

TODO



.. code-block:: ocaml

  val iteri_nz : ?axis:int option array -> (int array -> 'a -> unit) -> ('a, 'b) t -> unit

TODO



.. code-block:: ocaml

  val iter_nz : ?axis:int option array -> ('a -> unit) -> ('a, 'b) t -> unit

TODO



.. code-block:: ocaml

  val mapi_nz : ?axis:int option array -> (int array -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val map_nz : ?axis:int option array -> ('a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val filteri_nz : ?axis:int option array -> (int array -> 'a -> bool) -> ('a, 'b) t -> int array array

TODO



.. code-block:: ocaml

  val filter_nz : ?axis:int option array -> ('a -> bool) -> ('a, 'b) t -> int array array

TODO



.. code-block:: ocaml

  val foldi_nz : ?axis:int option array -> (int array -> 'c -> 'a -> 'c) -> 'c -> ('a, 'b) t -> 'c

TODO



.. code-block:: ocaml

  val fold_nz : ?axis:int option array -> ('c -> 'a -> 'c) -> 'c -> ('a, 'b) t -> 'c

TODO



Examine array elements or compare two arrays 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val exists : ('a -> bool) -> ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val not_exists : ('a -> bool) -> ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val for_all : ('a -> bool) -> ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val is_zero : ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val is_positive : ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val is_negative : ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val is_nonpositive : ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val is_nonnegative : ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val equal : ('a, 'b) t -> ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val not_equal : ('a, 'b) t -> ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val greater : ('a, 'b) t -> ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val less : ('a, 'b) t -> ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val greater_equal : ('a, 'b) t -> ('a, 'b) t -> bool

TODO



.. code-block:: ocaml

  val less_equal : ('a, 'b) t -> ('a, 'b) t -> bool

TODO



Input/Output and helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val to_array : ('a, 'b) t -> (int array * 'a) array

TODO



.. code-block:: ocaml

  val of_array : ('a, 'b) kind -> int array -> (int array * 'a) array -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val print : ('a, 'b) t -> unit

TODO



.. code-block:: ocaml

  val pp_spnda : ('a, 'b) t -> unit

TODO



.. code-block:: ocaml

  val save : ('a, 'b) t -> string -> unit

TODO



.. code-block:: ocaml

  val load : ('a, 'b) kind -> string -> ('a, 'b) t

TODO



Unary mathematical operations 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val min : ('a, 'b) t -> 'a

TODO



.. code-block:: ocaml

  val max : ('a, 'b) t -> 'a

TODO



.. code-block:: ocaml

  val minmax : ('a, 'b) t -> 'a * 'a

TODO



.. code-block:: ocaml

  val abs : ('a, 'b) t ->('a, 'b) t

TODO



.. code-block:: ocaml

  val neg : ('a, 'b) t ->('a, 'b) t

TODO



.. code-block:: ocaml

  val sum : ('a, 'b) t -> 'a

TODO



.. code-block:: ocaml

  val mean : ('a, 'b) t -> 'a

TODO



Binary mathematical operations 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val sub : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val mul : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val div : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val add_scalar : ('a, 'b) t -> 'a ->('a, 'b) t

TODO



.. code-block:: ocaml

  val sub_scalar : ('a, 'b) t -> 'a ->('a, 'b) t

TODO



.. code-block:: ocaml

  val mul_scalar : ('a, 'b) t -> 'a ->('a, 'b) t

TODO



.. code-block:: ocaml

  val div_scalar : ('a, 'b) t -> 'a ->('a, 'b) t

TODO



.. code-block:: ocaml

  val scalar_add : 'a -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val scalar_sub : 'a -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val scalar_mul : 'a -> ('a, 'b) t -> ('a, 'b) t

TODO



.. code-block:: ocaml

  val scalar_div : 'a -> ('a, 'b) t -> ('a, 'b) t

TODO



