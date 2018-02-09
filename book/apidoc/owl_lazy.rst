Lazy Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#152 entries have been extracted.
timestamp: 2018-02-09 18:51:49

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_lazy.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_lazy.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t
    

``t`` is an abstract type to represent an experssion, it is also an alias
for type ``node``. Type ``node`` is only for internal use in the module.

Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val variable : ?name:string -> unit -> t

``variable ()`` creates a placeholder for the variable in the graph.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L76>`__



.. code-block:: ocaml

  val assign_arr : t -> A.arr -> unit

``assign_arr x a`` assigns value ``a`` to ``x``. ``x`` is the variable created by
``variable ()`` function before. Note that assignment will invalidate all the
nodes in the subgraph depending on ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L84>`__



.. code-block:: ocaml

  val assign_elt : t -> A.elt -> unit

``assign_elt x a`` assigns value ``a`` to ``x``, simiar to ``assign_arr``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L86>`__



.. code-block:: ocaml

  val to_arr : t -> A.arr

``to_arr x`` unpacks an ndarray from ``x`` of type ``t``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L88>`__



.. code-block:: ocaml

  val to_elt : t -> A.elt

``to_elt x`` unpacks an element from ``x`` of type ``t``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L90>`__



.. code-block:: ocaml

  val of_arr : ?name:string -> A.arr -> t

``of_arr x`` creates a constant value from ``x`` in the computation graph. The
constant value cannot be re-assigned by ``assign_arr`` or ``assign_elt`` later.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L92>`__



.. code-block:: ocaml

  val of_elt : ?name:string -> A.elt -> t

``of_elt x`` is similar to ``of_arr`` but used for the value of type ``elt``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L94>`__



.. code-block:: ocaml

  val eval : t -> unit

``eval x`` evaluates the experssion represented by ``x``. Note only the
subgraph that ``x`` depends on will be evaluated rather than the whole graph.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L304>`__



Printing functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val pp_lazy : Format.formatter -> t -> unit

``pp_lazy x`` pretty prints ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L128>`__



.. code-block:: ocaml

  val to_trace : t list -> string

``to_trace x`` returns the trace string that can be printed on the terminal
for a list of given expressions. The trace shows the structure of the graph.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L133>`__



.. code-block:: ocaml

  val to_dot : t list -> string

``to_dot x`` converts a list of experssions into graph using dot-formatted
string. The returned string can be used for visualising the computation
graph with third-party tool such as graphviz.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L138>`__



.. code-block:: ocaml

  val copy : t array -> t array

``copy x``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L146>`__



Properties and manipulations
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val is_var : t -> bool

``is_var x`` returns ``true`` if ``x`` is a variable created by ``variable``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L59>`__



.. code-block:: ocaml

  val is_const : t -> bool

``is_const x`` returns ``true`` if ``x`` is a const created by ``of_arr`` or ``of_elt``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L61>`__



.. code-block:: ocaml

  val refnum : t -> int

``refnum x`` returns the number of ``x``'s parents in the computation graph.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L49>`__



.. code-block:: ocaml

  val map : ?name:string -> (t array -> t) -> t array -> t

``map f x`` is a general mechanism that allows you to plug in any functions
into a compuation graph as a computation node in case the unary and binary
math operators defined in this functor are not sufficient. Also because of
``map``, we do not really need the control flow node in Owl as that in
TensorFlow since ``map`` is more general can be used to implement arbitrary
operations (almost).

``f : t array -> t`` takes an array of ``t`` as inputs and outputs a constant
value of ``t``. This means the output must be wrapped up using either ``of_arr``
or ``of_elt`` function before returning the result.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L315>`__



.. code-block:: ocaml

  val tile : t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L317>`__



.. code-block:: ocaml

  val repeat : ?axis:int -> t -> int -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L319>`__



.. code-block:: ocaml

  val concatenate : ?axis:int -> t array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L321>`__



Unary operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val abs : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L376>`__



.. code-block:: ocaml

  val neg : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L378>`__



.. code-block:: ocaml

  val conj : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L380>`__



.. code-block:: ocaml

  val reci : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L382>`__



.. code-block:: ocaml

  val signum : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L384>`__



.. code-block:: ocaml

  val sqr : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L386>`__



.. code-block:: ocaml

  val sqrt : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L388>`__



.. code-block:: ocaml

  val cbrt : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L390>`__



.. code-block:: ocaml

  val exp : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L392>`__



.. code-block:: ocaml

  val exp2 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L394>`__



.. code-block:: ocaml

  val exp10 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L396>`__



.. code-block:: ocaml

  val expm1 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L398>`__



.. code-block:: ocaml

  val log : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L400>`__



.. code-block:: ocaml

  val log2 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L402>`__



.. code-block:: ocaml

  val log10 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L404>`__



.. code-block:: ocaml

  val log1p : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L406>`__



.. code-block:: ocaml

  val sin : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L408>`__



.. code-block:: ocaml

  val cos : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L410>`__



.. code-block:: ocaml

  val tan : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L412>`__



.. code-block:: ocaml

  val asin : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L414>`__



.. code-block:: ocaml

  val acos : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L416>`__



.. code-block:: ocaml

  val atan : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L418>`__



.. code-block:: ocaml

  val sinh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L420>`__



.. code-block:: ocaml

  val cosh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L422>`__



.. code-block:: ocaml

  val tanh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L424>`__



.. code-block:: ocaml

  val asinh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L426>`__



.. code-block:: ocaml

  val acosh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L428>`__



.. code-block:: ocaml

  val atanh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L430>`__



.. code-block:: ocaml

  val floor : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L432>`__



.. code-block:: ocaml

  val ceil : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L434>`__



.. code-block:: ocaml

  val round : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L436>`__



.. code-block:: ocaml

  val trunc : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L438>`__



.. code-block:: ocaml

  val fix : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L440>`__



.. code-block:: ocaml

  val erf : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L442>`__



.. code-block:: ocaml

  val erfc : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L444>`__



.. code-block:: ocaml

  val relu : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L446>`__



.. code-block:: ocaml

  val softplus : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L448>`__



.. code-block:: ocaml

  val softsign : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L450>`__



.. code-block:: ocaml

  val softmax : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L452>`__



.. code-block:: ocaml

  val sigmoid : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L454>`__



.. code-block:: ocaml

  val sum : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L456>`__



.. code-block:: ocaml

  val prod : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L458>`__



.. code-block:: ocaml

  val min : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L460>`__



.. code-block:: ocaml

  val max : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L462>`__



.. code-block:: ocaml

  val mean : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L464>`__



.. code-block:: ocaml

  val var : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L466>`__



.. code-block:: ocaml

  val std : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L468>`__



.. code-block:: ocaml

  val l1norm : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L470>`__



.. code-block:: ocaml

  val l2norm : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L472>`__



.. code-block:: ocaml

  val cumsum : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L474>`__



.. code-block:: ocaml

  val cumprod : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L476>`__



.. code-block:: ocaml

  val cummin : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L478>`__



.. code-block:: ocaml

  val cummax : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L480>`__



.. code-block:: ocaml

  val sum' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L523>`__



.. code-block:: ocaml

  val prod' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L525>`__



.. code-block:: ocaml

  val min' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L527>`__



.. code-block:: ocaml

  val max' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L529>`__



.. code-block:: ocaml

  val mean' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L531>`__



.. code-block:: ocaml

  val var' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L533>`__



.. code-block:: ocaml

  val std' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L535>`__



.. code-block:: ocaml

  val l1norm' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L537>`__



.. code-block:: ocaml

  val l2norm' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L539>`__



.. code-block:: ocaml

  val l2norm_sqr' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L541>`__



Binary operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L326>`__



.. code-block:: ocaml

  val sub : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L328>`__



.. code-block:: ocaml

  val mul : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L330>`__



.. code-block:: ocaml

  val div : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L332>`__



.. code-block:: ocaml

  val pow : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L334>`__



.. code-block:: ocaml

  val dot : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L346>`__



.. code-block:: ocaml

  val atan2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L336>`__



.. code-block:: ocaml

  val hypot : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L338>`__



.. code-block:: ocaml

  val fmod : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L340>`__



.. code-block:: ocaml

  val min2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L342>`__



.. code-block:: ocaml

  val max2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L344>`__



.. code-block:: ocaml

  val add_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L348>`__



.. code-block:: ocaml

  val sub_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L350>`__



.. code-block:: ocaml

  val mul_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L352>`__



.. code-block:: ocaml

  val div_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L354>`__



.. code-block:: ocaml

  val pow_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L356>`__



.. code-block:: ocaml

  val atan2_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L358>`__



.. code-block:: ocaml

  val fmod_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L360>`__



.. code-block:: ocaml

  val scalar_add : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L362>`__



.. code-block:: ocaml

  val scalar_sub : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L364>`__



.. code-block:: ocaml

  val scalar_mul : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L366>`__



.. code-block:: ocaml

  val scalar_div : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L368>`__



.. code-block:: ocaml

  val scalar_pow : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L370>`__



.. code-block:: ocaml

  val scalar_atan2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L372>`__



.. code-block:: ocaml

  val scalar_fmod : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L374>`__



.. code-block:: ocaml

  val conv1d : ?padding:padding -> t -> t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L482>`__



.. code-block:: ocaml

  val conv2d : ?padding:padding -> t -> t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L484>`__



.. code-block:: ocaml

  val conv3d : ?padding:padding -> t -> t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L486>`__



.. code-block:: ocaml

  val max_pool1d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L488>`__



.. code-block:: ocaml

  val max_pool2d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L490>`__



.. code-block:: ocaml

  val max_pool3d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L492>`__



.. code-block:: ocaml

  val avg_pool1d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L494>`__



.. code-block:: ocaml

  val avg_pool2d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L496>`__



.. code-block:: ocaml

  val avg_pool3d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L498>`__



.. code-block:: ocaml

  val conv1d_backward_input : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L500>`__



.. code-block:: ocaml

  val conv1d_backward_kernel : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L502>`__



.. code-block:: ocaml

  val conv2d_backward_input : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L504>`__



.. code-block:: ocaml

  val conv2d_backward_kernel : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L506>`__



.. code-block:: ocaml

  val conv3d_backward_input : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L508>`__



.. code-block:: ocaml

  val conv3d_backward_kernel : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L510>`__



.. code-block:: ocaml

  val max_pool1d_backward : padding -> t -> int array -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L512>`__



.. code-block:: ocaml

  val max_pool2d_backward : padding -> t -> int array -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L514>`__



.. code-block:: ocaml

  val avg_pool1d_backward : padding -> t -> int array -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L516>`__



.. code-block:: ocaml

  val avg_pool2d_backward : padding -> t -> int array -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L518>`__



Comparion functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val elt_equal : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L546>`__



.. code-block:: ocaml

  val elt_not_equal : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L548>`__



.. code-block:: ocaml

  val elt_less : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L550>`__



.. code-block:: ocaml

  val elt_greater : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L552>`__



.. code-block:: ocaml

  val elt_less_equal : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L554>`__



.. code-block:: ocaml

  val elt_greater_equal : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L556>`__



.. code-block:: ocaml

  val elt_equal_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L558>`__



.. code-block:: ocaml

  val elt_not_equal_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L560>`__



.. code-block:: ocaml

  val elt_less_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L562>`__



.. code-block:: ocaml

  val elt_greater_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L564>`__



.. code-block:: ocaml

  val elt_less_equal_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L566>`__



.. code-block:: ocaml

  val elt_greater_equal_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L568>`__



Advanced operations
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val invalidate : t -> unit

``invalidate x`` set the status of ``x`` to ``Invalid``. Therefore the value of
``x`` will be re-computed when in the future evaluation.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L69>`__



.. code-block:: ocaml

  val id : t -> int

``id x`` retrieves the id number of ``x``.

.. code-block:: ocaml

  val name : t -> string

``name x`` retrieves the name of ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L98>`__



.. code-block:: ocaml

  val get_by_id : t -> int -> t

``get_by_id x id`` retrieves the node with the given ``id`` in the subgraph of
``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L100>`__



.. code-block:: ocaml

  val get_by_name : t -> string -> t array

``get_by_name x name`` retrieves the node with the given ``name`` in the
subgraph of ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_lazy.ml#L102>`__



