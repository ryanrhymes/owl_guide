Base.Maths
===============================================================================

This document is auto-generated for Owl's APIs.
#34 entries have been extracted.
timestamp: 2018-02-18 00:51:43

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/maths/owl_base_maths.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/maths/owl_base_maths.ml>`_



Basic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : float -> float -> float

``add x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L3>`__



.. code-block:: ocaml

  val sub : float -> float -> float

``sub x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L5>`__



.. code-block:: ocaml

  val mul : float -> float -> float

``mul x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L7>`__



.. code-block:: ocaml

  val div : float -> float -> float

``div x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L9>`__



.. code-block:: ocaml

  val atan2 : float -> float -> float

``atan2 x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L13>`__



.. code-block:: ocaml

  val abs : float -> float

``abs x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L15>`__



.. code-block:: ocaml

  val neg : float -> float

``neg x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L17>`__



.. code-block:: ocaml

  val floor : float -> float

``floor x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L40>`__



.. code-block:: ocaml

  val ceil : float -> float

``ceil x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L42>`__



.. code-block:: ocaml

  val round : float -> float

``round x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L44>`__



.. code-block:: ocaml

  val trunc : float -> float

``trunc x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L46>`__



.. code-block:: ocaml

  val sqr : float -> float

``sqr x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L19>`__



.. code-block:: ocaml

  val sqrt : float -> float

``sqrt x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L21>`__



.. code-block:: ocaml

  val pow : float -> float -> float

``pow x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L11>`__



.. code-block:: ocaml

  val exp : float -> float

``exp x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L23>`__



.. code-block:: ocaml

  val log : float -> float

``log x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L25>`__



.. code-block:: ocaml

  val log2 : float -> float

``log2 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L27>`__



.. code-block:: ocaml

  val log10 : float -> float

``log10 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L29>`__



.. code-block:: ocaml

  val sigmoid : float -> float

``sigmod x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L77>`__



.. code-block:: ocaml

  val signum : float -> float

``signum x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L31>`__



.. code-block:: ocaml

  val relu : float -> float

``relu x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L75>`__



.. code-block:: ocaml

  val sin : float -> float

``sin x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L48>`__



.. code-block:: ocaml

  val cos : float -> float

``cos x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L50>`__



.. code-block:: ocaml

  val tan : float -> float

``tan x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L52>`__



.. code-block:: ocaml

  val asin : float -> float

``asin x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L60>`__



.. code-block:: ocaml

  val acos : float -> float

``acos x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L62>`__



.. code-block:: ocaml

  val atan : float -> float

``atan x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L64>`__



.. code-block:: ocaml

  val sinh : float -> float

``sinh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L54>`__



.. code-block:: ocaml

  val cosh : float -> float

``cosh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L56>`__



.. code-block:: ocaml

  val tanh : float -> float

``tanh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L58>`__



.. code-block:: ocaml

  val asinh : float -> float

``asinh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L67>`__



.. code-block:: ocaml

  val acosh : float -> float

``acosh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L70>`__



.. code-block:: ocaml

  val atanh : float -> float

``atanh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L73>`__



