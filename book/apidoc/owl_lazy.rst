Lazy
===============================================================================

This document is auto-generated for Owl's APIs.
#20 functions have been extracted.
timestamp:1517625319

.. code-block:: ocaml

  val variable : ?name:string -> unit -> t

[variable ()] creates a placeholder for the variable in the graph.

.. code-block:: ocaml

  val assign_arr : t -> A.arr -> unit

[assign_arr x a] assigns value [a] to [x]. [x] is the variable created by
    [variable ()] function before. Note that assignment will invalidate all the
    nodes in the subgraph depending on [x].

.. code-block:: ocaml

  val assign_elt : t -> A.elt -> unit

[assign_elt x a] assigns value [a] to [x], simiar to [assign_arr].

.. code-block:: ocaml

  val to_arr : t -> A.arr

[to_arr x] unpacks an ndarray from [x] of type [t].

.. code-block:: ocaml

  val to_elt : t -> A.elt

[to_elt x] unpacks an element from [x] of type [t].

.. code-block:: ocaml

  val of_arr : ?name:string -> A.arr -> t

[of_arr x] creates a constant value from [x] in the computation graph. The
    constant value cannot be re-assigned by [assign_arr] or [assign_elt] later.

.. code-block:: ocaml

  val of_elt : ?name:string -> A.elt -> t

[of_elt x] is similar to [of_arr] but used for the value of type [elt].

.. code-block:: ocaml

  val eval : t -> unit

[eval x] evaluates the experssion represented by [x]. Note only the
    subgraph that [x] depends on will be evaluated rather than the whole graph.

.. code-block:: ocaml

  val pp_lazy : Format.formatter -> t -> unit

[pp_lazy x] pretty prints [x].

.. code-block:: ocaml

  val to_trace : t list -> string

[to_trace x] returns the trace string that can be printed on the terminal
    for a list of given expressions. The trace shows the structure of the graph.

.. code-block:: ocaml

  val to_dot : t list -> string

[to_dot x] converts a list of experssions into graph using dot-formatted
    string. The returned string can be used for visualising the computation
    graph with third-party tool such as graphviz.

.. code-block:: ocaml

  val copy : t array -> t array

[copy x]

.. code-block:: ocaml

  val is_var : t -> bool

[is_var x] returns [true] if [x] is a variable created by [variable].

.. code-block:: ocaml

  val is_const : t -> bool

[is_const x] returns [true] if [x] is a const created by [of_arr] or [of_elt].

.. code-block:: ocaml

  val refnum : t -> int

[refnum x] returns the number of [x]'s parents in the computation graph.

.. code-block:: ocaml

  val map : ?name:string -> (t array -> t) -> t array -> t

[map f x] is a general mechanism that allows you to plug in any functions
    into a compuation graph as a computation node in case the unary and binary
    math operators defined in this functor are not sufficient. Also because of
    [map], we do not really need the control flow node in Owl as that in
    TensorFlow since [map] is more general can be used to implement arbitrary
    operations (almost).

    [f : t array -> t] takes an array of [t] as inputs and outputs a constant
    value of [t]. This means the output must be wrapped up using either [of_arr]
    or [of_elt] function before returning the result.

.. code-block:: ocaml

  val concatenate : ?axis:int -> t array -> t

{6 Unary operators}

.. code-block:: ocaml

  val l2norm_sqr' : t -> t

{6 Binary operators}

.. code-block:: ocaml

  val avg_pool2d_backward : padding -> t -> int array -> int array -> t -> t

{6 Comparion functions}

.. code-block:: ocaml

  val elt_greater_equal_scalar : t -> t -> t

{6 Advanced operations}

