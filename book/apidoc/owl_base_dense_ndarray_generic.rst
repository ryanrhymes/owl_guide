Base.Dense.Ndarray.Generic
===============================================================================

This document is auto-generated for Owl's APIs.
#185 entries have been extracted.
timestamp: 2018-03-20 22:37:15

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

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L280>`__



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

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L453>`__



.. code-block:: ocaml

  val gaussian : (float, 'b) kind -> ?mu:float -> ?sigma:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L467>`__



.. code-block:: ocaml

  val sequential : (float, 'b) kind -> ?a:float -> ?step:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L431>`__



.. code-block:: ocaml

  val bernoulli : (float, 'b) kind -> ?p:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L460>`__



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

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L305>`__



.. code-block:: ocaml

  val slice_size : ('a, 'b) t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L308>`__



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

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L255>`__



.. code-block:: ocaml

  val reverse : ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L257>`__



.. code-block:: ocaml

  val transpose : ?axis:int array -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2440>`__



.. code-block:: ocaml

  val tile : ('a, 'b) t -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L490>`__



.. code-block:: ocaml

  val repeat : ?axis:int -> ('a, 'b) t -> int -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L592>`__



.. code-block:: ocaml

  val concatenate : ?axis:int -> ('a, 'b) t array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L545>`__



.. code-block:: ocaml

  val split : ?axis:int -> int array -> ('a, 'b) t -> ('a, 'b) t array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L517>`__



.. code-block:: ocaml

  val draw : ?axis:int -> ('a, 'b) t -> int -> ('a, 'b) t * int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L533>`__



Iterate array elements
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val iteri : (int -> 'a -> unit) -> ('a, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L404>`__



.. code-block:: ocaml

  val iter : ('a -> unit) -> ('a, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L412>`__



.. code-block:: ocaml

  val mapi : (int -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L296>`__



.. code-block:: ocaml

  val map : ('a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L292>`__



.. code-block:: ocaml

  val filteri : (int -> 'a -> bool) -> ('a, 'b) t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L420>`__



.. code-block:: ocaml

  val filter : ('a -> bool) -> ('a, 'b) t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L429>`__



.. code-block:: ocaml

  val foldi : ?axis:int -> (int -> 'a -> 'a -> 'a) -> 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L326>`__



.. code-block:: ocaml

  val fold : ?axis:int -> ('a -> 'a -> 'a) -> 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L363>`__



.. code-block:: ocaml

  val scani : ?axis:int -> (int -> 'a -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L367>`__



.. code-block:: ocaml

  val scan : ?axis:int -> ('a -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L401>`__



Examination & Comparison
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val exists : ('a -> bool) -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1112>`__



.. code-block:: ocaml

  val not_exists : ('a -> bool) -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1128>`__



.. code-block:: ocaml

  val for_all : ('a -> bool) -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1131>`__



.. code-block:: ocaml

  val is_zero : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1136>`__



.. code-block:: ocaml

  val is_positive : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1143>`__



.. code-block:: ocaml

  val is_negative : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1150>`__



.. code-block:: ocaml

  val is_nonpositive : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1157>`__



.. code-block:: ocaml

  val is_nonnegative : ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1164>`__



.. code-block:: ocaml

  val is_normal : (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1171>`__



.. code-block:: ocaml

  val not_nan : (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1182>`__



.. code-block:: ocaml

  val not_inf : (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1191>`__



.. code-block:: ocaml

  val equal : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L945>`__



.. code-block:: ocaml

  val not_equal : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L949>`__



.. code-block:: ocaml

  val greater : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L957>`__



.. code-block:: ocaml

  val less : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L953>`__



.. code-block:: ocaml

  val greater_equal : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L965>`__



.. code-block:: ocaml

  val less_equal : ('a, 'b) t -> ('a, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L961>`__



.. code-block:: ocaml

  val elt_equal : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1030>`__



.. code-block:: ocaml

  val elt_not_equal : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1043>`__



.. code-block:: ocaml

  val elt_less : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1047>`__



.. code-block:: ocaml

  val elt_greater : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1051>`__



.. code-block:: ocaml

  val elt_less_equal : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1055>`__



.. code-block:: ocaml

  val elt_greater_equal : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1059>`__



.. code-block:: ocaml

  val equal_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L996>`__



.. code-block:: ocaml

  val not_equal_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1000>`__



.. code-block:: ocaml

  val less_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1004>`__



.. code-block:: ocaml

  val greater_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1008>`__



.. code-block:: ocaml

  val less_equal_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1012>`__



.. code-block:: ocaml

  val greater_equal_scalar : ('a, 'b) t -> 'a -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1016>`__



.. code-block:: ocaml

  val elt_equal_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1073>`__



.. code-block:: ocaml

  val elt_not_equal_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1087>`__



.. code-block:: ocaml

  val elt_less_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1092>`__



.. code-block:: ocaml

  val elt_greater_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1097>`__



.. code-block:: ocaml

  val elt_less_equal_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1102>`__



.. code-block:: ocaml

  val elt_greater_equal_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1107>`__



.. code-block:: ocaml

  val approx_equal : ?eps:float -> (float, 'b) t -> (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L936>`__



.. code-block:: ocaml

  val approx_equal_scalar : ?eps:float -> (float, 'b) t -> float -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L987>`__



.. code-block:: ocaml

  val approx_elt_equal : ?eps:float -> (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1034>`__



.. code-block:: ocaml

  val approx_elt_equal_scalar : ?eps:float -> (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1078>`__



Input/Output functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val of_array : ('a, 'b) kind -> 'a array -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L441>`__



.. code-block:: ocaml

  val print : ?max_row:int -> ?max_col:int -> ?header:bool -> ?fmt:('a -> string) -> ('a, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L474>`__



.. code-block:: ocaml

  val load : ('a, 'b) kind -> string -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2526>`__



Unary math operators 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sum : ?axis:int -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sum' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L763>`__



.. code-block:: ocaml

  val min' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L755>`__



.. code-block:: ocaml

  val max' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L759>`__



.. code-block:: ocaml

  val abs : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L600>`__



.. code-block:: ocaml

  val neg : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L603>`__



.. code-block:: ocaml

  val signum : (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L732>`__



.. code-block:: ocaml

  val sqr : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L615>`__



.. code-block:: ocaml

  val sqrt : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L618>`__



.. code-block:: ocaml

  val exp : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L630>`__



.. code-block:: ocaml

  val log : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L621>`__



.. code-block:: ocaml

  val log10 : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L627>`__



.. code-block:: ocaml

  val log2 : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L624>`__



.. code-block:: ocaml

  val sin : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L633>`__



.. code-block:: ocaml

  val cos : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L636>`__



.. code-block:: ocaml

  val tan : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val asin : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L654>`__



.. code-block:: ocaml

  val acos : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L657>`__



.. code-block:: ocaml

  val atan : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L660>`__



.. code-block:: ocaml

  val sinh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L645>`__



.. code-block:: ocaml

  val cosh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L648>`__



.. code-block:: ocaml

  val tanh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L651>`__



.. code-block:: ocaml

  val asinh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L663>`__



.. code-block:: ocaml

  val acosh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L666>`__



.. code-block:: ocaml

  val atanh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L669>`__



.. code-block:: ocaml

  val floor : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L606>`__



.. code-block:: ocaml

  val ceil : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L609>`__



.. code-block:: ocaml

  val round : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L612>`__



.. code-block:: ocaml

  val relu : (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L739>`__



.. code-block:: ocaml

  val sigmoid : (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L736>`__



.. code-block:: ocaml

  val l1norm' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L766>`__



.. code-block:: ocaml

  val l2norm' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L778>`__



.. code-block:: ocaml

  val l2norm_sqr' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L772>`__



Binary math operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L828>`__



.. code-block:: ocaml

  val sub : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L833>`__



.. code-block:: ocaml

  val mul : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L838>`__



.. code-block:: ocaml

  val div : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L843>`__



.. code-block:: ocaml

  val add_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L854>`__



.. code-block:: ocaml

  val sub_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L860>`__



.. code-block:: ocaml

  val mul_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L866>`__



.. code-block:: ocaml

  val div_scalar : ('a, 'b) t -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L872>`__



.. code-block:: ocaml

  val scalar_add : 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L884>`__



.. code-block:: ocaml

  val scalar_sub : 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L887>`__



.. code-block:: ocaml

  val scalar_mul : 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L894>`__



.. code-block:: ocaml

  val scalar_div : 'a -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L897>`__



.. code-block:: ocaml

  val pow : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L851>`__



.. code-block:: ocaml

  val scalar_pow : float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L784>`__



.. code-block:: ocaml

  val pow_scalar : (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L790>`__



.. code-block:: ocaml

  val atan2 : (float, 'a) t -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L848>`__



.. code-block:: ocaml

  val scalar_atan2 : float -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L795>`__



.. code-block:: ocaml

  val atan2_scalar : (float, 'a) t -> float -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L800>`__



.. code-block:: ocaml

  val clip_by_value : ?amin:float -> ?amax:float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L878>`__



.. code-block:: ocaml

  val clip_by_l2norm : float -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L903>`__



Neural network related
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val conv1d : ?padding:padding -> (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1278>`__



.. code-block:: ocaml

  val conv2d : ?padding:padding -> (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1209>`__



.. code-block:: ocaml

  val conv3d : ?padding:padding -> (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1311>`__



.. code-block:: ocaml

  val max_pool1d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1537>`__



.. code-block:: ocaml

  val max_pool2d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1521>`__



.. code-block:: ocaml

  val max_pool3d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1567>`__



.. code-block:: ocaml

  val avg_pool1d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1592>`__



.. code-block:: ocaml

  val avg_pool2d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1579>`__



.. code-block:: ocaml

  val avg_pool3d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1617>`__



.. code-block:: ocaml

  val conv1d_backward_input : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1765>`__



.. code-block:: ocaml

  val conv1d_backward_kernel : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1801>`__



.. code-block:: ocaml

  val conv2d_backward_input : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1631>`__



.. code-block:: ocaml

  val conv2d_backward_kernel : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1700>`__



.. code-block:: ocaml

  val conv3d_backward_input : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1838>`__



.. code-block:: ocaml

  val conv3d_backward_kernel : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1921>`__



.. code-block:: ocaml

  val max_pool1d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2227>`__



.. code-block:: ocaml

  val max_pool2d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2070>`__



.. code-block:: ocaml

  val max_pool3d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2193>`__



.. code-block:: ocaml

  val avg_pool1d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2258>`__



.. code-block:: ocaml

  val avg_pool2d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2087>`__



.. code-block:: ocaml

  val avg_pool3d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2210>`__



Helper functions 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sum_slices : ?axis:int -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L706>`__



Matrix functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val row_num : ('a, 'b) t -> int

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2305>`__



.. code-block:: ocaml

  val col_num : ('a, 'b) t -> int

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2310>`__



.. code-block:: ocaml

  val row : ('a, 'b) t -> int -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2316>`__



.. code-block:: ocaml

  val rows : ('a, 'b) t -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2321>`__



.. code-block:: ocaml

  val copy_row_to : ('a, 'b) t -> ('a, 'b) t -> int -> unit

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2337>`__



.. code-block:: ocaml

  val copy_col_to : ('a, 'b) t -> ('a, 'b) t -> int -> unit

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2343>`__



.. code-block:: ocaml

  val dot : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2364>`__



.. code-block:: ocaml

  val inv : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2480>`__



.. code-block:: ocaml

  val trace : (float, 'b) t -> float

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2389>`__



.. code-block:: ocaml

  val to_rows : ('a, 'b) t -> ('a, 'b) t array

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2406>`__



.. code-block:: ocaml

  val of_rows : ('a, 'b) t array -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2413>`__



.. code-block:: ocaml

  val of_arrays : ('a, 'b) kind -> 'a array array -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2426>`__



.. code-block:: ocaml

  val draw_rows : ?replacement:bool -> ('a, 'b) t -> int -> ('a, 'b) t * int array

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2462>`__



.. code-block:: ocaml

  val draw_rows2 : ?replacement:bool -> ('a, 'b) t -> ('a, 'b) t -> int -> ('a, 'b) t * ('a, 'b) t * int array

Refer to :doc:`owl_dense_matrix_generic`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L2469>`__



