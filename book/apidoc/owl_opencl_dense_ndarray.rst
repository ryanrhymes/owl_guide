OpenCL Dense Ndarray
===============================================================================

This document is auto-generated for Owl's APIs.
#65 entries have been extracted.
timestamp: 2018-03-27 19:12:29

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/opencl/owl_opencl_dense_ndarray.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/opencl/owl_opencl_dense_ndarray.ml>`_



Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val of_ndarray : ('a, 'b) Owl_dense_ndarray_generic.t -> t

``of_ndarray x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L145>`__



.. code-block:: ocaml

  val to_ndarray : ('a, 'b) Bigarray.kind -> t -> ('a, 'b) Owl_dense_ndarray_generic.t

``to_ndarray otyp x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L137>`__



Unary math functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val erf : t -> t

``erf x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L11>`__



.. code-block:: ocaml

  val erfc : t -> t

``erfc x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L13>`__



.. code-block:: ocaml

  val abs : t -> t

``abs x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L15>`__



.. code-block:: ocaml

  val neg : t -> t

``neg x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L17>`__



.. code-block:: ocaml

  val sqr : t -> t

``sqr x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L19>`__



.. code-block:: ocaml

  val sqrt : t -> t

``sqrt x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L21>`__



.. code-block:: ocaml

  val cbrt : t -> t

``cbrt x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L23>`__



.. code-block:: ocaml

  val reci : t -> t

``reci x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L25>`__



.. code-block:: ocaml

  val sin : t -> t

``sin x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L27>`__



.. code-block:: ocaml

  val cos : t -> t

``cos x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L29>`__



.. code-block:: ocaml

  val tan : t -> t

``tan x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L31>`__



.. code-block:: ocaml

  val asin : t -> t

``asin x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L33>`__



.. code-block:: ocaml

  val acos : t -> t

``acos x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L35>`__



.. code-block:: ocaml

  val atan : t -> t

``atan x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L37>`__



.. code-block:: ocaml

  val sinh : t -> t

``sinh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L39>`__



.. code-block:: ocaml

  val cosh : t -> t

``cosh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L41>`__



.. code-block:: ocaml

  val tanh : t -> t

``tanh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L43>`__



.. code-block:: ocaml

  val asinh : t -> t

``asinh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L45>`__



.. code-block:: ocaml

  val acosh : t -> t

``acosh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L47>`__



.. code-block:: ocaml

  val atanh : t -> t

``atanh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L49>`__



.. code-block:: ocaml

  val atanpi : t -> t

``atanpi x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L51>`__



.. code-block:: ocaml

  val sinpi : t -> t

``sinpi x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L53>`__



.. code-block:: ocaml

  val cospi : t -> t

``cospi x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L55>`__



.. code-block:: ocaml

  val tanpi : t -> t

``tanpi x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L57>`__



.. code-block:: ocaml

  val floor : t -> t

``floor x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L59>`__



.. code-block:: ocaml

  val ceil : t -> t

``ceil x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L61>`__



.. code-block:: ocaml

  val round : t -> t

``round x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L63>`__



.. code-block:: ocaml

  val exp : t -> t

``exp x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L65>`__



.. code-block:: ocaml

  val exp2 : t -> t

``exp2 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L67>`__



.. code-block:: ocaml

  val exp10 : t -> t

``exp10 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L69>`__



.. code-block:: ocaml

  val expm1 : t -> t

``expm1 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L71>`__



.. code-block:: ocaml

  val log : t -> t

``log x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L73>`__



.. code-block:: ocaml

  val log2 : t -> t

``log2 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L75>`__



.. code-block:: ocaml

  val log10 : t -> t

``log10 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L77>`__



.. code-block:: ocaml

  val log1p : t -> t

``log1p x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L79>`__



.. code-block:: ocaml

  val logb : t -> t

``logb x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L81>`__



.. code-block:: ocaml

  val relu : t -> t

``relu x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L83>`__



.. code-block:: ocaml

  val signum : t -> t

``signum x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L85>`__



.. code-block:: ocaml

  val sigmoid : t -> t

``sigmoid x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L87>`__



.. code-block:: ocaml

  val softplus : t -> t

``softplus x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L89>`__



.. code-block:: ocaml

  val softsign : t -> t

``softsign x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L91>`__



Binary math functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : t -> t -> t

``add x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L96>`__



.. code-block:: ocaml

  val sub : t -> t -> t

``sub x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L98>`__



.. code-block:: ocaml

  val mul : t -> t -> t

``mul x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L100>`__



.. code-block:: ocaml

  val div : t -> t -> t

``div x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L102>`__



.. code-block:: ocaml

  val pow : t -> t -> t

``pow x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L104>`__



.. code-block:: ocaml

  val min2 : t -> t -> t

``min2 x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L106>`__



.. code-block:: ocaml

  val max2 : t -> t -> t

``max2 x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L108>`__



.. code-block:: ocaml

  val fmod : t -> t -> t

``fmod x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L110>`__



.. code-block:: ocaml

  val hypot : t -> t -> t

``hypot x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L112>`__



.. code-block:: ocaml

  val atan2 : t -> t -> t

``atan2 x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L114>`__



.. code-block:: ocaml

  val atan2pi : t -> t -> t

``atan2pi x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L116>`__



.. code-block:: ocaml

  val add_scalar : t -> t -> t

``add_scalar x a``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L118>`__



.. code-block:: ocaml

  val sub_scalar : t -> t -> t

``sub_scalar x a``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L120>`__



.. code-block:: ocaml

  val mul_scalar : t -> t -> t

``mul_scalar x a``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L122>`__



.. code-block:: ocaml

  val div_scalar : t -> t -> t

``div_scalar x a``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L124>`__



.. code-block:: ocaml

  val pow_scalar : t -> t -> t

``pow_scalar x a``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L126>`__



.. code-block:: ocaml

  val fmod_scalar : t -> t -> t

``fmod_scalar x a``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L128>`__



.. code-block:: ocaml

  val atan2_scalar : t -> t -> t

``atan2_scalar x a``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L130>`__



.. code-block:: ocaml

  val atan2pi_scalar : t -> t -> t

``atan2pi_scalar x a``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_dense_ndarray.ml#L132>`__



