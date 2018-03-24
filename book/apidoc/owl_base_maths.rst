Base.Maths
===============================================================================

This document is auto-generated for Owl's APIs.
#41 entries have been extracted.
timestamp: 2018-03-24 02:19:45

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/maths/owl_base_maths.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/maths/owl_base_maths.ml>`_



Basic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : float -> float -> float

``add x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L7>`__



.. code-block:: ocaml

  val sub : float -> float -> float

``sub x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L9>`__



.. code-block:: ocaml

  val mul : float -> float -> float

``mul x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L11>`__



.. code-block:: ocaml

  val div : float -> float -> float

``div x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L13>`__



.. code-block:: ocaml

  val atan2 : float -> float -> float

``atan2 x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L17>`__



.. code-block:: ocaml

  val abs : float -> float

``abs x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L19>`__



.. code-block:: ocaml

  val neg : float -> float

``neg x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L21>`__



.. code-block:: ocaml

  val floor : float -> float

``floor x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L44>`__



.. code-block:: ocaml

  val ceil : float -> float

``ceil x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L46>`__



.. code-block:: ocaml

  val round : float -> float

``round x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L48>`__



.. code-block:: ocaml

  val trunc : float -> float

``trunc x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L50>`__



.. code-block:: ocaml

  val sqr : float -> float

``sqr x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L23>`__



.. code-block:: ocaml

  val sqrt : float -> float

``sqrt x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L25>`__



.. code-block:: ocaml

  val pow : float -> float -> float

``pow x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L15>`__



.. code-block:: ocaml

  val exp : float -> float

``exp x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L27>`__



.. code-block:: ocaml

  val log : float -> float

``log x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L29>`__



.. code-block:: ocaml

  val log2 : float -> float

``log2 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L31>`__



.. code-block:: ocaml

  val log10 : float -> float

``log10 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L33>`__



.. code-block:: ocaml

  val sigmoid : float -> float

``sigmod x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L81>`__



.. code-block:: ocaml

  val signum : float -> float

``signum x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L35>`__



.. code-block:: ocaml

  val relu : float -> float

``relu x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L79>`__



.. code-block:: ocaml

  val sin : float -> float

``sin x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L52>`__



.. code-block:: ocaml

  val cos : float -> float

``cos x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L54>`__



.. code-block:: ocaml

  val tan : float -> float

``tan x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L56>`__



.. code-block:: ocaml

  val asin : float -> float

``asin x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L64>`__



.. code-block:: ocaml

  val acos : float -> float

``acos x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L66>`__



.. code-block:: ocaml

  val atan : float -> float

``atan x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L68>`__



.. code-block:: ocaml

  val sinh : float -> float

``sinh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L58>`__



.. code-block:: ocaml

  val cosh : float -> float

``cosh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L60>`__



.. code-block:: ocaml

  val tanh : float -> float

``tanh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L62>`__



.. code-block:: ocaml

  val asinh : float -> float

``asinh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L71>`__



.. code-block:: ocaml

  val acosh : float -> float

``acosh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L74>`__



.. code-block:: ocaml

  val atanh : float -> float

``atanh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L77>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val is_nan : float -> bool

``is_nan x`` returns ``true`` if ``x`` is ``nan``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L86>`__



.. code-block:: ocaml

  val is_inf : float -> bool

``is_inf x`` returns ``true`` if ``x`` is ``infinity`` or ``neg_infinity``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L88>`__



.. code-block:: ocaml

  val is_odd : int -> bool

``is_odd x`` returns ``true`` if ``x`` is odd.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L90>`__



.. code-block:: ocaml

  val is_even : int -> bool

``is_even x`` returns ``true`` if ``x`` is even.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L92>`__



.. code-block:: ocaml

  val is_pow2 : int -> bool

``is_pow2 x`` return ``true`` if ``x`` is integer power of 2, e.g. 32, 64, etc.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L94>`__



.. code-block:: ocaml

  val same_sign : float -> float -> bool

``same_sign x y`` returns ``true`` if ``x`` and ``y`` have the same sign,
otherwise it returns ``false``. Positive and negative zeros are special cases
and always returns ``true``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_maths.ml#L96>`__



