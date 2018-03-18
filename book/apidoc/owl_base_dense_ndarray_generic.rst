Base.Dense.Ndarray.Generic
===============================================================================

This document is auto-generated for Owl's APIs.
#185 entries have been extracted.
timestamp: 2018-03-18 23:19:08

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/dense/owl_base_dense_ndarray_generic.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/dense/owl_base_dense_ndarray_generic.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type ('a, 'b) t = ('a, 'b, c_layout) Genarray.t
    

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  type ('a, 'b) kind = ('a, 'b) Bigarray.kind
    

Refer to :doc:`owl_dense_ndarray_generic`

Create Ndarrays
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val empty : ('a, 'b) kind -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L147>`__



.. code-block:: ocaml

  val create : ('a, 'b) kind -> int array -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L150>`__



.. code-block:: ocaml

  val init : ('a, 'b) kind -> int array -> (int -> 'a) -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L271>`__



.. code-block:: ocaml

  val zeros : ('a, 'b) kind -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L155>`__



.. code-block:: ocaml

  val ones : ('a, 'b) kind -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L158>`__



.. code-block:: ocaml

  val uniform : (float, 'b) kind -> ?a:float -> ?b:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L444>`__



.. code-block:: ocaml

  val gaussian : (float, 'b) kind -> ?mu:float -> ?sigma:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L458>`__



.. code-block:: ocaml

  val sequential : (float, 'b) kind -> ?a:float -> ?step:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L422>`__



.. code-block:: ocaml

  val bernoulli : (float, 'b) kind -> ?p:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L451>`__



Obtain basic properties
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val shape : ('a, 'b) t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L162>`__



.. code-block:: ocaml

  val num_dims : ('a, 'b) t -> int

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val numel : ('a, 'b) t -> int

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L170>`__



.. code-block:: ocaml

  val kind : ('a, 'b) t -> ('a, 'b) kind

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L175>`__



.. code-block:: ocaml

  val strides : ('a, 'b) t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L296>`__



.. code-block:: ocaml

  val slice_size : ('a, 'b) t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L299>`__



Manipulate Ndarrays
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val get : ('a, 'b) t -> int array -> 'a

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L178>`__



.. code-block:: ocaml

  val set : ('a, 'b) t -> int array -> 'a -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L181>`__



.. code-block:: ocaml

  val get_slice : int list list -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L185>`__



.. code-block:: ocaml

  val set_slice : int list list -> ('a, 'b) t -> ('a, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L208>`__



.. code-block:: ocaml

  val reset : (float, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L238>`__



.. code-block:: ocaml

  val copy : ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L230>`__



.. code-block:: ocaml

  val reshape : ('a, 'b) t -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L242>`__



.. code-block:: ocaml

  val flatten : ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L246>`__



.. code-block:: ocaml

  val reverse : ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L248>`__



.. code-block:: ocaml

  val transpose : ?axis:int array -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2431>`__



.. code-block:: ocaml

  val tile : ('a, 'b) t -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L481>`__



.. code-block:: ocaml

  val repeat : ?axis:int -> ('a, 'b) t -> int -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L583>`__



.. code-block:: ocaml

  val concatenate : ?axis:int -> ('a, 'b) t array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L536>`__



.. code-block:: ocaml

  val split : ?axis:int -> int array -> ('a, 'b) t -> ('a, 'b) t array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L508>`__



.. code-block:: ocaml

  val draw : ?axis:int -> ('a, 'b) t -> int -> ('a, 'b) t * int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L524>`__



Iterate array elements
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val iteri : (int -> 'a -> unit) -> ('a, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L395>`__



.. code-block:: ocaml

  val iter : ('a -> unit) -> ('a, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L403>`__



.. code-block:: ocaml

  val mapi : (int -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L287>`__



.. code-block:: ocaml

  val map : ('a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L283>`__



.. code-block:: ocaml

  val filteri : (int -> 'a -> bool) -> ('a, 'b) t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L411>`__



.. code-block:: ocaml

  val filter : ('a -> bool) -> ('a, 'b) t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L420>`__



.. code-block:: ocaml

  val foldi : ?axis:int -> (int -> 'a -> 'a -> 'a) -> 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L317>`__



.. code-block:: ocaml

  val fold : ?axis:int -> ('a -> 'a -> 'a) -> 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L354>`__



.. code-block:: ocaml

  val scani : ?axis:int -> (int -> 'a -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L358>`__



.. code-block:: ocaml

  val scan : ?axis:int -> ('a -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L392>`__



Examination & Comparison
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val exists : ('a -> bool) -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1103>`__



.. code-block:: ocaml

  val not_exists : ('a -> bool) -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1119>`__



.. code-block:: ocaml

  val for_all : ('a -> bool) -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1122>`__



.. code-block:: ocaml

  val is_zero : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1127>`__



.. code-block:: ocaml

  val is_positive : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1134>`__



.. code-block:: ocaml

  val is_negative : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1141>`__



.. code-block:: ocaml

  val is_nonpositive : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1148>`__



.. code-block:: ocaml

  val is_nonnegative : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1155>`__



.. code-block:: ocaml

  val is_normal : (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1162>`__



.. code-block:: ocaml

  val not_nan : (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1173>`__



.. code-block:: ocaml

  val not_inf : (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1182>`__



.. code-block:: ocaml

  val equal : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L936>`__



.. code-block:: ocaml

  val not_equal : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L940>`__



.. code-block:: ocaml

  val greater : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L948>`__



.. code-block:: ocaml

  val less : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L944>`__



.. code-block:: ocaml

  val greater_equal : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L956>`__



.. code-block:: ocaml

  val less_equal : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L952>`__



.. code-block:: ocaml

  val elt_equal : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1021>`__



.. code-block:: ocaml

  val elt_not_equal : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1034>`__



.. code-block:: ocaml

  val elt_less : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1038>`__



.. code-block:: ocaml

  val elt_greater : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1042>`__



.. code-block:: ocaml

  val elt_less_equal : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1046>`__



.. code-block:: ocaml

  val elt_greater_equal : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1050>`__



.. code-block:: ocaml

  val equal_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L987>`__



.. code-block:: ocaml

  val not_equal_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L991>`__



.. code-block:: ocaml

  val less_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L995>`__



.. code-block:: ocaml

  val greater_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L999>`__



.. code-block:: ocaml

  val less_equal_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1003>`__



.. code-block:: ocaml

  val greater_equal_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1007>`__



.. code-block:: ocaml

  val elt_equal_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1064>`__



.. code-block:: ocaml

  val elt_not_equal_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1078>`__



.. code-block:: ocaml

  val elt_less_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1083>`__



.. code-block:: ocaml

  val elt_greater_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1088>`__



.. code-block:: ocaml

  val elt_less_equal_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1093>`__



.. code-block:: ocaml

  val elt_greater_equal_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1098>`__



.. code-block:: ocaml

  val approx_equal : ?eps:float -> (float, 'b) t -> (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L927>`__



.. code-block:: ocaml

  val approx_equal_scalar : ?eps:float -> (float, 'b) t -> float -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L978>`__



.. code-block:: ocaml

  val approx_elt_equal : ?eps:float -> (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1025>`__



.. code-block:: ocaml

  val approx_elt_equal_scalar : ?eps:float -> (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1069>`__



Input/Output functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val of_array : ('a, 'b) kind -> 'a array -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L432>`__



.. code-block:: ocaml

  val print : ?max_row:int -> ?max_col:int -> ?header:bool -> ?fmt:('a -> string) -> ('a, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L465>`__



.. code-block:: ocaml

  val load : ('a, 'b) kind -> string -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2517>`__



Unary math operators 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sum : ?axis:int -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sum' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L754>`__



.. code-block:: ocaml

  val min' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L746>`__



.. code-block:: ocaml

  val max' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L750>`__



.. code-block:: ocaml

  val abs : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L591>`__



.. code-block:: ocaml

  val neg : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L594>`__



.. code-block:: ocaml

  val signum : (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L723>`__



.. code-block:: ocaml

  val sqr : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L606>`__



.. code-block:: ocaml

  val sqrt : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L609>`__



.. code-block:: ocaml

  val exp : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L621>`__



.. code-block:: ocaml

  val log : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L612>`__



.. code-block:: ocaml

  val log10 : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L618>`__



.. code-block:: ocaml

  val log2 : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L615>`__



.. code-block:: ocaml

  val sin : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L624>`__



.. code-block:: ocaml

  val cos : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L627>`__



.. code-block:: ocaml

  val tan : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val asin : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L645>`__



.. code-block:: ocaml

  val acos : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L648>`__



.. code-block:: ocaml

  val atan : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L651>`__



.. code-block:: ocaml

  val sinh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L636>`__



.. code-block:: ocaml

  val cosh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L639>`__



.. code-block:: ocaml

  val tanh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L642>`__



.. code-block:: ocaml

  val asinh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L654>`__



.. code-block:: ocaml

  val acosh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L657>`__



.. code-block:: ocaml

  val atanh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L660>`__



.. code-block:: ocaml

  val floor : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L597>`__



.. code-block:: ocaml

  val ceil : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L600>`__



.. code-block:: ocaml

  val round : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L603>`__



.. code-block:: ocaml

  val relu : (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L730>`__



.. code-block:: ocaml

  val sigmoid : (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L727>`__



.. code-block:: ocaml

  val l1norm' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L757>`__



.. code-block:: ocaml

  val l2norm' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L769>`__



.. code-block:: ocaml

  val l2norm_sqr' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L763>`__



Binary math operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L819>`__



.. code-block:: ocaml

  val sub : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L824>`__



.. code-block:: ocaml

  val mul : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L829>`__



.. code-block:: ocaml

  val div : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L834>`__



.. code-block:: ocaml

  val add_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L845>`__



.. code-block:: ocaml

  val sub_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L851>`__



.. code-block:: ocaml

  val mul_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L857>`__



.. code-block:: ocaml

  val div_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L863>`__



.. code-block:: ocaml

  val scalar_add : 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L875>`__



.. code-block:: ocaml

  val scalar_sub : 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L878>`__



.. code-block:: ocaml

  val scalar_mul : 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L885>`__



.. code-block:: ocaml

  val scalar_div : 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L888>`__



.. code-block:: ocaml

  val pow : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L842>`__



.. code-block:: ocaml

  val scalar_pow : float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L775>`__



.. code-block:: ocaml

  val pow_scalar : (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L781>`__



.. code-block:: ocaml

  val atan2 : (float, 'a) t -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L839>`__



.. code-block:: ocaml

  val scalar_atan2 : float -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L786>`__



.. code-block:: ocaml

  val atan2_scalar : (float, 'a) t -> float -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L791>`__



.. code-block:: ocaml

  val clip_by_value : ?amin:float -> ?amax:float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L869>`__



.. code-block:: ocaml

  val clip_by_l2norm : float -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L894>`__



Neural network related
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val conv1d : ?padding:padding -> (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1269>`__



.. code-block:: ocaml

  val conv2d : ?padding:padding -> (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1200>`__



.. code-block:: ocaml

  val conv3d : ?padding:padding -> (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1302>`__



.. code-block:: ocaml

  val max_pool1d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1528>`__



.. code-block:: ocaml

  val max_pool2d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1512>`__



.. code-block:: ocaml

  val max_pool3d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1558>`__



.. code-block:: ocaml

  val avg_pool1d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1583>`__



.. code-block:: ocaml

  val avg_pool2d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1570>`__



.. code-block:: ocaml

  val avg_pool3d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1608>`__



.. code-block:: ocaml

  val conv1d_backward_input : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1756>`__



.. code-block:: ocaml

  val conv1d_backward_kernel : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1792>`__



.. code-block:: ocaml

  val conv2d_backward_input : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1622>`__



.. code-block:: ocaml

  val conv2d_backward_kernel : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1691>`__



.. code-block:: ocaml

  val conv3d_backward_input : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1829>`__



.. code-block:: ocaml

  val conv3d_backward_kernel : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1912>`__



.. code-block:: ocaml

  val max_pool1d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2218>`__



.. code-block:: ocaml

  val max_pool2d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2061>`__



.. code-block:: ocaml

  val max_pool3d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2184>`__



.. code-block:: ocaml

  val avg_pool1d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2249>`__



.. code-block:: ocaml

  val avg_pool2d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2078>`__



.. code-block:: ocaml

  val avg_pool3d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2201>`__



Helper functions 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sum_slices : ?axis:int -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L697>`__



Matrix functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val row_num : ('a, 'b) t -> int

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2296>`__



.. code-block:: ocaml

  val col_num : ('a, 'b) t -> int

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2301>`__



.. code-block:: ocaml

  val row : ('a, 'b) t -> int -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2307>`__



.. code-block:: ocaml

  val rows : ('a, 'b) t -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2312>`__



.. code-block:: ocaml

  val copy_row_to : ('a, 'b) t -> ('a, 'b) t -> int -> unit

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2328>`__



.. code-block:: ocaml

  val copy_col_to : ('a, 'b) t -> ('a, 'b) t -> int -> unit

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2334>`__



.. code-block:: ocaml

  val dot : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2355>`__



.. code-block:: ocaml

  val inv : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2471>`__



.. code-block:: ocaml

  val trace : (float, 'b) t -> float

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2380>`__



.. code-block:: ocaml

  val to_rows : ('a, 'b) t -> ('a, 'b) t array

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2397>`__



.. code-block:: ocaml

  val of_rows : ('a, 'b) t array -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2404>`__



.. code-block:: ocaml

  val of_arrays : ('a, 'b) kind -> 'a array array -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2417>`__



.. code-block:: ocaml

  val draw_rows : ?replacement:bool -> ('a, 'b) t -> int -> ('a, 'b) t * int array

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2453>`__



.. code-block:: ocaml

  val draw_rows2 : ?replacement:bool -> ('a, 'b) t -> ('a, 'b) t -> int -> ('a, 'b) t * ('a, 'b) t * int array

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2460>`__



