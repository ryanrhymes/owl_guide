Lazy
===============================================================================

This document is auto-generated for Owl's APIs.
#144 functions have been extracted.
timestamp:1517659115

.. code-block:: ocaml

  type t

``t`` is an abstract type to represent an experssion, it is also an alias
for type ``node``. Type ``node`` is only for internal use in the module.

.. code-block:: ocaml

  val variable : ?name:string -> unit -> t

``variable ()`` creates a placeholder for the variable in the graph.

.. code-block:: ocaml

  val assign_arr : t -> A.arr -> unit

``assign_arr x a`` assigns value ``a`` to ``x``. ``x`` is the variable created by
    ``variable ()`` function before. Note that assignment will invalidate all the
    nodes in the subgraph depending on ``x``.

.. code-block:: ocaml

  val assign_elt : t -> A.elt -> unit

``assign_elt x a`` assigns value ``a`` to ``x``, simiar to ``assign_arr``.

.. code-block:: ocaml

  val to_arr : t -> A.arr

``to_arr x`` unpacks an ndarray from ``x`` of type ``t``.

.. code-block:: ocaml

  val to_elt : t -> A.elt

``to_elt x`` unpacks an element from ``x`` of type ``t``.

.. code-block:: ocaml

  val of_arr : ?name:string -> A.arr -> t

``of_arr x`` creates a constant value from ``x`` in the computation graph. The
    constant value cannot be re-assigned by ``assign_arr`` or ``assign_elt`` later.

.. code-block:: ocaml

  val of_elt : ?name:string -> A.elt -> t

``of_elt x`` is similar to ``of_arr`` but used for the value of type ``elt``.

.. code-block:: ocaml

  val eval : t -> unit

``eval x`` evaluates the experssion represented by ``x``. Note only the
    subgraph that ``x`` depends on will be evaluated rather than the whole graph.

.. code-block:: ocaml

  val pp_lazy : Format.formatter -> t -> unit

``pp_lazy x`` pretty prints ``x``.

.. code-block:: ocaml

  val to_trace : t list -> string

``to_trace x`` returns the trace string that can be printed on the terminal
    for a list of given expressions. The trace shows the structure of the graph.

.. code-block:: ocaml

  val to_dot : t list -> string

``to_dot x`` converts a list of experssions into graph using dot-formatted
    string. The returned string can be used for visualising the computation
    graph with third-party tool such as graphviz.

.. code-block:: ocaml

  val copy : t array -> t array

``copy x``

.. code-block:: ocaml

  val is_var : t -> bool

``is_var x`` returns ``true`` if ``x`` is a variable created by ``variable``.

.. code-block:: ocaml

  val is_const : t -> bool

``is_const x`` returns ``true`` if ``x`` is a const created by ``of_arr`` or ``of_elt``.

.. code-block:: ocaml

  val refnum : t -> int

``refnum x`` returns the number of ``x``'s parents in the computation graph.

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

.. code-block:: ocaml

  val tile : t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val repeat : ?axis:int -> t -> int -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val concatenate : ?axis:int -> t array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val abs : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val neg : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conj : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val reci : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val signum : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val sqr : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val sqrt : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val cbrt : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val exp : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val exp2 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val exp10 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val expm1 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val log : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val log2 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val log10 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val log1p : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val sin : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val cos : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val tan : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val asin : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val acos : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val atan : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val sinh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val cosh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val tanh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val asinh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val acosh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val atanh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val floor : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val ceil : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val round : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val trunc : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val fix : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val erf : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val erfc : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val relu : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val softplus : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val softsign : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val softmax : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val sigmoid : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val sum : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val prod : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val min : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val max : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val mean : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val var : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val std : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val l1norm : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val l2norm : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val cumsum : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val cumprod : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val cummin : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val cummax : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val sum' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val prod' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val min' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val max' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val mean' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val var' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val std' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val l1norm' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val l2norm' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val l2norm_sqr' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val add : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val sub : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val mul : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val div : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val pow : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val dot : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val atan2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val hypot : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val fmod : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val min2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val max2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val add_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val sub_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val mul_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val div_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val pow_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val atan2_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val fmod_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val scalar_add : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val scalar_sub : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val scalar_mul : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val scalar_div : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val scalar_pow : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val scalar_atan2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val scalar_fmod : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conv1d : ?padding:padding -> t -> t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conv2d : ?padding:padding -> t -> t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conv3d : ?padding:padding -> t -> t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val max_pool1d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val max_pool2d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val max_pool3d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val avg_pool1d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val avg_pool2d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val avg_pool3d : ?padding:padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conv1d_backward_input : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conv1d_backward_kernel : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conv2d_backward_input : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conv2d_backward_kernel : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conv3d_backward_input : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val conv3d_backward_kernel : t -> t -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val max_pool1d_backward : padding -> t -> int array -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val max_pool2d_backward : padding -> t -> int array -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val avg_pool1d_backward : padding -> t -> int array -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val avg_pool2d_backward : padding -> t -> int array -> int array -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_equal : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_not_equal : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_less : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_greater : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_less_equal : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_greater_equal : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_equal_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_not_equal_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_less_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_greater_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_less_equal_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val elt_greater_equal_scalar : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`.

.. code-block:: ocaml

  val invalidate : t -> unit

``invalidate x`` set the status of ``x`` to ``Invalid``. Therefore the value of
``x`` will be re-computed when in the future evaluation.

.. code-block:: ocaml

  val id : t -> int

``id x`` retrieves the id number of ``x``.

.. code-block:: ocaml

  val name : t -> string

``name x`` retrieves the name of ``x``.

.. code-block:: ocaml

  val get_by_id : t -> int -> t

``get_by_id x id`` retrieves the node with the given ``id`` in the subgraph of
``x``.

.. code-block:: ocaml

  val get_by_name : t -> string -> t array

``get_by_name x name`` retrieves the node with the given ``name`` in the
subgraph of ``x``.

