Algodiff.Generic Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#114 entries have been extracted.
timestamp: 2018-02-07 23:31:24

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/optimise/owl_algodiff_generic_sig.ml>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/optimise/owl_algodiff_generic.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type arr
    

General ndarray type

.. code-block:: ocaml

  type elt
    

Scalar type

.. code-block:: ocaml

  type trace_op
    

Trace type

.. code-block:: ocaml

  type t =
    | F   of float                                  (* constructor of float numbers *)
    | Arr of arr                                    (* constructor of ndarrays *)
    | DF  of t * t * int                            (* primal, tangent, tag *)
    | DR  of t * t ref * trace_op * int ref * int   (* primal, adjoint, op, fanout, tag *)
    

Abstract number type

Supported Maths functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( + )  : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val ( - )  : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val ( * )  : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val ( / )  : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val ( *@ )  : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val ( ** )  : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val add : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sub : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val mul : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val div : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val dot : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val pow : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val atan2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val min2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val max2 : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val cross_entropy : t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val inv : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val neg : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val abs : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val signum : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val floor : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val ceil : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val round : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sqr : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sqrt : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val log : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val log2 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val log10 : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val exp : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sin : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val cos : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val tan : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sinh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val cosh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val tanh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val asin : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val acos : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val atan : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val asinh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val acosh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val atanh : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sum' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sum : ?axis:int -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val mean : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1517>`__



.. code-block:: ocaml

  val transpose : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val l1norm' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val l2norm' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val l2norm_sqr' : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val sigmoid : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val relu : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val softplus : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val softsign: t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val softmax : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val dropout : ?rate:float -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val conv1d : ?padding:padding -> t -> t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val conv2d : ?padding:padding -> t -> t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val conv3d : ?padding:padding -> t -> t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val max_pool1d : padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val max_pool2d : padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val avg_pool1d : padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val avg_pool2d : padding -> t -> int array -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val reshape : t -> int array -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val flatten : t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val concat : int -> t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val get_slice : int list list -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

.. code-block:: ocaml

  val set_slice : int list list -> t -> t -> t

Refer to :doc:`owl_dense_ndarray_generic`

Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val diff : (t -> t) -> t -> t

``diff f x`` returns the exat derivative of a function ``f : scalar -> scalar``
at point ``x``. Simply calling ``diff f`` will return its derivative function ``g``
of the same type, i.e. ``g : scalar -> scalar``.

Keep calling this function will give you higher-order derivatives of ``f``, i.e.
``f |> diff |> diff |> diff |> ...``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1371>`__



.. code-block:: ocaml

  val diff' : (t -> t) -> t -> t * t

similar to ``diff``, but return ``(f x, diff f x)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1365>`__



.. code-block:: ocaml

  val grad : (t -> t) -> t -> t

gradient of ``f`` : (vector -> scalar) at ``x``, reverse ad.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1382>`__



.. code-block:: ocaml

  val grad' : (t -> t) -> t -> t * t

similar to ``grad``, but return ``(f x, grad f x)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1374>`__



.. code-block:: ocaml

  val jacobian : (t -> t) -> t -> t

jacobian of ``f`` : (vector -> vector) at ``x``, both ``x`` and ``y`` are row vectors.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1441>`__



.. code-block:: ocaml

  val jacobian' : (t -> t) -> t -> t * t

similar to ``jacobian``, but return ``(f x, jacobian f x)``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1405>`__



.. code-block:: ocaml

  val jacobianv : (t -> t) -> t -> t -> t

jacobian vector product of ``f`` : (vector -> vector) at ``x`` along ``v``,
forward ad. Namely, it calcultes ``(jacobian x) v``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1391>`__



.. code-block:: ocaml

  val jacobianv' : (t -> t) -> t -> t -> t * t

similar to ``jacobianv'``, but return ``(f x, jacobianv f x v)``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1385>`__



.. code-block:: ocaml

  val jacobianTv : (t -> t) -> t -> t -> t

transposed jacobian vector product of ``f : (vector -> vector)`` at ``x``
along ``v``, backward ad. Namely, it calculates ``transpose ((jacobianv f x v))``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1402>`__



.. code-block:: ocaml

  val jacobianTv' : (t -> t) -> t -> t -> t * t

similar to ``jacobianTv``, but return ``(f x, transpose (jacobianv f x v))``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1394>`__



.. code-block:: ocaml

  val hessian : (t -> t) -> t -> t

hessian of ``f`` : (scalar -> scalar) at ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1452>`__



.. code-block:: ocaml

  val hessian' : (t -> t) -> t -> t * t

simiarl to ``hessian``, but return ``(f x, hessian f x)``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1455>`__



.. code-block:: ocaml

  val hessianv : (t -> t) -> t -> t -> t

hessian vector product of ``f`` : (scalar -> scalar) at ``x`` along ``v``.
Namely, it calculates ``(hessian x) v``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1473>`__



.. code-block:: ocaml

  val hessianv' : (t -> t) -> t -> t -> t * t

similar to ``hessianv``, but return ``(f x, hessianv f x v)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1468>`__



.. code-block:: ocaml

  val laplacian : (t -> t) -> t -> t

laplacian of ``f : (scalar -> scalar)`` at ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1478>`__



.. code-block:: ocaml

  val laplacian' : (t -> t) -> t -> t * t

simiar to ``laplacian``, but return ``(f x, laplacian f x)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1480>`__



.. code-block:: ocaml

  val gradhessian : (t -> t) -> t -> t * t

return ``(grad f x, hessian f x)``, ``f : (scalar -> scalar)``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1444>`__



.. code-block:: ocaml

  val gradhessian' : (t -> t) -> t -> t * t * t

return ``(f x, grad f x, hessian f x)``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1447>`__



.. code-block:: ocaml

  val gradhessianv : (t -> t) -> t -> t -> t * t

return ``(grad f x v, hessian f x v)``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1463>`__



.. code-block:: ocaml

  val gradhessianv' : (t -> t) -> t -> t -> t * t * t

return ``(f x, grad f x v, hessian f x v)``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1458>`__



Low-level functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val pack_flt : elt -> t

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L212>`__



.. code-block:: ocaml

  val unpack_flt : t -> elt

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L214>`__



.. code-block:: ocaml

  val pack_arr : arr -> t

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L205>`__



.. code-block:: ocaml

  val unpack_arr : t -> arr

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L207>`__



.. code-block:: ocaml

  val tag : unit -> int

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L118>`__



.. code-block:: ocaml

  val primal : t -> t

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L133>`__



.. code-block:: ocaml

  val primal' : t -> t

TODO

.. code-block:: ocaml

  val adjval : t -> t

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L159>`__



.. code-block:: ocaml

  val adjref : t -> t ref

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L154>`__



.. code-block:: ocaml

  val tangent : t -> t

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L149>`__



.. code-block:: ocaml

  val make_forward : t -> t -> int -> t

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1360>`__



.. code-block:: ocaml

  val make_reverse : t -> int -> t

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1362>`__



.. code-block:: ocaml

  val reverse_prop : t -> t -> unit

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1353>`__



.. code-block:: ocaml

  val type_info : t -> string

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L226>`__



.. code-block:: ocaml

  val shape : t -> int array

TODO

.. code-block:: ocaml

  val copy_primal' : t -> t

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L188>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val to_trace : t list -> string

``to_trace [t0; t1; ...]`` outputs the trace of computation graph on the
terminal in a human-readable format.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1733>`__



.. code-block:: ocaml

  val to_dot : t list -> string

``to_dot [t0; t1; ...]`` outputs the trace of computation graph in the dot
file format which you can use other tools further visualisation, such as
Graphviz.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1736>`__



.. code-block:: ocaml

  val pp_num : Format.formatter -> t -> unit

``pp_num t`` pretty prints the abstract number used in ``Algodiff``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_algodiff_generic.ml#L1742>`__



