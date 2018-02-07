Base.Dense.Ndarray.Generic
===============================================================================

This document is auto-generated for Owl's APIs.
#137 entries have been extracted.
timestamp: 2018-02-07 23:31:25

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/dense/owl_base_dense_ndarray_generic.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/dense/owl_base_dense_ndarray_generic.ml>`_



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

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L147>`__



.. code-block:: ocaml

  val create : ('a, 'b) kind -> int array -> 'a -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L150>`__



.. code-block:: ocaml

  val init : ('a, 'b) kind -> int array -> (int -> 'a) -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L271>`__



.. code-block:: ocaml

  val zeros : ('a, 'b) kind -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L155>`__



.. code-block:: ocaml

  val ones : ('a, 'b) kind -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L158>`__



.. code-block:: ocaml

  val uniform : (float, 'b) kind -> ?a:float -> ?b:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L310>`__



.. code-block:: ocaml

  val gaussian : (float, 'b) kind -> ?mu:float -> ?sigma:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L324>`__



.. code-block:: ocaml

  val sequential : (float, 'b) kind -> ?a:float -> ?step:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L288>`__



.. code-block:: ocaml

  val bernoulli : (float, 'b) kind -> ?p:float -> int array -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L317>`__



Obtain basic properties
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val shape : ('a, 'b) t -> int array

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L162>`__



.. code-block:: ocaml

  val num_dims : ('a, 'b) t -> int

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val numel : ('a, 'b) t -> int

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L170>`__



.. code-block:: ocaml

  val kind : ('a, 'b) t -> ('a, 'b) kind

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L175>`__



Manipulate Ndarrays
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val get : ('a, 'b) t -> int array -> 'a

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L178>`__



.. code-block:: ocaml

  val set : ('a, 'b) t -> int array -> 'a -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L181>`__



.. code-block:: ocaml

  val get_slice : int list list -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L185>`__



.. code-block:: ocaml

  val set_slice : int list list -> ('a, 'b) t -> ('a, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L208>`__



.. code-block:: ocaml

  val reset : (float, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L238>`__



.. code-block:: ocaml

  val copy : ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L230>`__



.. code-block:: ocaml

  val reshape : ('a, 'b) t -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L242>`__



.. code-block:: ocaml

  val flatten : ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L246>`__



.. code-block:: ocaml

  val reverse : ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L248>`__



.. code-block:: ocaml

  val transpose : ?axis:int array -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1876>`__



.. code-block:: ocaml

  val tile : ('a, 'b) t -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L347>`__



.. code-block:: ocaml

  val repeat : ?axis:int -> ('a, 'b) t -> int -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L449>`__



.. code-block:: ocaml

  val concatenate : ?axis:int -> ('a, 'b) t array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L402>`__



.. code-block:: ocaml

  val split : ?axis:int -> int array -> ('a, 'b) t -> ('a, 'b) t array

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L374>`__



.. code-block:: ocaml

  val draw : ?axis:int -> ('a, 'b) t -> int -> ('a, 'b) t * int array

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L390>`__



Iterate array elements
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val map : ('a -> 'a) -> ('a, 'b) t -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L283>`__



Examination & Comparison
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val equal : (float, 'b) t -> (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1989>`__



.. code-block:: ocaml

  val approx_equal : ?eps:float -> (float, 'b) t -> (float, 'b) t -> bool

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1969>`__



.. code-block:: ocaml

  val elt_equal : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1992>`__



.. code-block:: ocaml

  val elt_greater_equal_scalar : (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L746>`__



Input/Output functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val of_array : ('a, 'b) kind -> 'a array -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L298>`__



.. code-block:: ocaml

  val print : ?max_row:int -> ?max_col:int -> ?header:bool -> ?fmt:('a -> string) -> ('a, 'b) t -> unit

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L331>`__



.. code-block:: ocaml

  val load : ('a, 'b) kind -> string -> ('a, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1962>`__



Unary math operators 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sum : ?axis:int -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sum' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L620>`__



.. code-block:: ocaml

  val min' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L612>`__



.. code-block:: ocaml

  val max' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L616>`__



.. code-block:: ocaml

  val abs : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L457>`__



.. code-block:: ocaml

  val neg : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L460>`__



.. code-block:: ocaml

  val signum : (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L589>`__



.. code-block:: ocaml

  val sqr : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L472>`__



.. code-block:: ocaml

  val sqrt : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L475>`__



.. code-block:: ocaml

  val exp : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L487>`__



.. code-block:: ocaml

  val log : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L478>`__



.. code-block:: ocaml

  val log10 : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L484>`__



.. code-block:: ocaml

  val log2 : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L481>`__



.. code-block:: ocaml

  val sin : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L490>`__



.. code-block:: ocaml

  val cos : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L493>`__



.. code-block:: ocaml

  val tan : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val asin : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L511>`__



.. code-block:: ocaml

  val acos : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L514>`__



.. code-block:: ocaml

  val atan : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L517>`__



.. code-block:: ocaml

  val sinh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L502>`__



.. code-block:: ocaml

  val cosh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L505>`__



.. code-block:: ocaml

  val tanh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L508>`__



.. code-block:: ocaml

  val asinh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L520>`__



.. code-block:: ocaml

  val acosh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L523>`__



.. code-block:: ocaml

  val atanh : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L526>`__



.. code-block:: ocaml

  val floor : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L463>`__



.. code-block:: ocaml

  val ceil : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L466>`__



.. code-block:: ocaml

  val round : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L469>`__



.. code-block:: ocaml

  val relu : (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L596>`__



.. code-block:: ocaml

  val sigmoid : (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L593>`__



.. code-block:: ocaml

  val l1norm' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L623>`__



.. code-block:: ocaml

  val l2norm' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L635>`__



.. code-block:: ocaml

  val l2norm_sqr' : (float, 'b) t -> float

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L629>`__



Binary math operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L685>`__



.. code-block:: ocaml

  val sub : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L688>`__



.. code-block:: ocaml

  val mul : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L691>`__



.. code-block:: ocaml

  val div : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L694>`__



.. code-block:: ocaml

  val add_scalar : (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L703>`__



.. code-block:: ocaml

  val sub_scalar : (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L708>`__



.. code-block:: ocaml

  val mul_scalar : (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L713>`__



.. code-block:: ocaml

  val div_scalar : (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L718>`__



.. code-block:: ocaml

  val scalar_add : float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L729>`__



.. code-block:: ocaml

  val scalar_sub : float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L732>`__



.. code-block:: ocaml

  val scalar_mul : float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L738>`__



.. code-block:: ocaml

  val scalar_div : float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L741>`__



.. code-block:: ocaml

  val pow : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L700>`__



.. code-block:: ocaml

  val scalar_pow : float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L641>`__



.. code-block:: ocaml

  val pow_scalar : (float, 'b) t -> float -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L647>`__



.. code-block:: ocaml

  val atan2 : (float, 'a) t -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L697>`__



.. code-block:: ocaml

  val scalar_atan2 : float -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L652>`__



.. code-block:: ocaml

  val atan2_scalar : (float, 'a) t -> float -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L657>`__



.. code-block:: ocaml

  val clip_by_value : ?amin:float -> ?amax:float -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L723>`__



.. code-block:: ocaml

  val clip_by_l2norm : float -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L752>`__



Neural network related
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val conv1d : ?padding:padding -> (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L837>`__



.. code-block:: ocaml

  val conv2d : ?padding:padding -> (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L768>`__



.. code-block:: ocaml

  val conv3d : ?padding:padding -> (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L870>`__



.. code-block:: ocaml

  val max_pool1d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1096>`__



.. code-block:: ocaml

  val max_pool2d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1080>`__



.. code-block:: ocaml

  val max_pool3d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1126>`__



.. code-block:: ocaml

  val avg_pool1d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1151>`__



.. code-block:: ocaml

  val avg_pool2d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1138>`__



.. code-block:: ocaml

  val avg_pool3d : ?padding:padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1176>`__



.. code-block:: ocaml

  val conv1d_backward_input : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1324>`__



.. code-block:: ocaml

  val conv1d_backward_kernel : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1360>`__



.. code-block:: ocaml

  val conv2d_backward_input : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1190>`__



.. code-block:: ocaml

  val conv2d_backward_kernel : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1259>`__



.. code-block:: ocaml

  val conv3d_backward_input : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1397>`__



.. code-block:: ocaml

  val conv3d_backward_kernel : (float, 'a) t -> (float, 'a) t -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1480>`__



.. code-block:: ocaml

  val max_pool1d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1663>`__



.. code-block:: ocaml

  val max_pool2d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1629>`__



.. code-block:: ocaml

  val avg_pool1d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1694>`__



.. code-block:: ocaml

  val avg_pool2d_backward : padding -> (float, 'a) t -> int array -> int array -> (float, 'a) t -> (float, 'a) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1646>`__



Helper functions 
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sum_slices : ?axis:int -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L563>`__



Matrix functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val row_num : ('a, 'b) t -> int

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1741>`__



.. code-block:: ocaml

  val col_num : ('a, 'b) t -> int

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1746>`__



.. code-block:: ocaml

  val row : ('a, 'b) t -> int -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1752>`__



.. code-block:: ocaml

  val rows : ('a, 'b) t -> int array -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1757>`__



.. code-block:: ocaml

  val copy_row_to : ('a, 'b) t -> ('a, 'b) t -> int -> unit

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1773>`__



.. code-block:: ocaml

  val copy_col_to : ('a, 'b) t -> ('a, 'b) t -> int -> unit

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1779>`__



.. code-block:: ocaml

  val dot : (float, 'b) t -> (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1800>`__



.. code-block:: ocaml

  val inv : (float, 'b) t -> (float, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1916>`__



.. code-block:: ocaml

  val trace : (float, 'b) t -> float

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1825>`__



.. code-block:: ocaml

  val to_rows : ('a, 'b) t -> ('a, 'b) t array

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1842>`__



.. code-block:: ocaml

  val of_rows : ('a, 'b) t array -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1849>`__



.. code-block:: ocaml

  val of_arrays : ('a, 'b) kind -> 'a array array -> ('a, 'b) t

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1862>`__



.. code-block:: ocaml

  val draw_rows : ?replacement:bool -> ('a, 'b) t -> int -> ('a, 'b) t * int array

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1898>`__



.. code-block:: ocaml

  val draw_rows2 : ?replacement:bool -> ('a, 'b) t -> ('a, 'b) t -> int -> ('a, 'b) t * ('a, 'b) t * int array

Refer to :doc:`owl_dense_matrix_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/dense/owl_base_dense_ndarray_generic.ml#L1905>`__



