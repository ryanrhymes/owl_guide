Base.Complex
===============================================================================

This document is auto-generated for Owl's APIs.
#70 entries have been extracted.
timestamp: 2018-03-31 21:31:59

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/maths/owl_base_complex.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/maths/owl_base_complex.ml>`_



Type definition and constants
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = Complex.t
    

Type definition of a complex number.

.. code-block:: ocaml

  val zero : t

Constant value zero.

.. code-block:: ocaml

  val one : t

Constant value one.

.. code-block:: ocaml

  val i : t

Constant value i.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L18>`__



Unary functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val neg : t -> t

TODO

.. code-block:: ocaml

  val abs : t -> float

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L10>`__



.. code-block:: ocaml

  val abs2 : t -> float

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L13>`__



.. code-block:: ocaml

  val logabs : t -> float

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L16>`__



.. code-block:: ocaml

  val conj : t -> t

TODO

.. code-block:: ocaml

  val inv : t -> t

TODO

.. code-block:: ocaml

  val sqrt : t -> t

TODO

.. code-block:: ocaml

  val exp : t -> t

TODO

.. code-block:: ocaml

  val log : t -> t

TODO

.. code-block:: ocaml

  val sin : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L50>`__



.. code-block:: ocaml

  val cos : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L55>`__



.. code-block:: ocaml

  val tan : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L61>`__



.. code-block:: ocaml

  val cot : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L74>`__



.. code-block:: ocaml

  val sec : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L77>`__



.. code-block:: ocaml

  val csc : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L80>`__



.. code-block:: ocaml

  val sinh : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L83>`__



.. code-block:: ocaml

  val cosh : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L88>`__



.. code-block:: ocaml

  val tanh : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L93>`__



.. code-block:: ocaml

  val sech : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L106>`__



.. code-block:: ocaml

  val csch : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L109>`__



.. code-block:: ocaml

  val coth : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L112>`__



.. code-block:: ocaml

  val asin : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L115>`__



.. code-block:: ocaml

  val acos : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L164>`__



.. code-block:: ocaml

  val atan : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L213>`__



.. code-block:: ocaml

  val asec : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L238>`__



.. code-block:: ocaml

  val acsc : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L241>`__



.. code-block:: ocaml

  val acot : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L244>`__



.. code-block:: ocaml

  val asinh : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L249>`__



.. code-block:: ocaml

  val acosh : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L252>`__



.. code-block:: ocaml

  val atanh : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L258>`__



.. code-block:: ocaml

  val asech : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L266>`__



.. code-block:: ocaml

  val acsch : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L269>`__



.. code-block:: ocaml

  val acoth : t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L272>`__



.. code-block:: ocaml

  val arg : t -> float

``arg x`` returns the angle of a complex number ``x``.

.. code-block:: ocaml

  val phase : t -> float

``phase x`` returns the phase of a complex number ``x``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L275>`__



Binary functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : t -> t -> t

TODO

.. code-block:: ocaml

  val sub : t -> t -> t

TODO

.. code-block:: ocaml

  val mul : t -> t -> t

TODO

.. code-block:: ocaml

  val div : t -> t -> t

TODO

.. code-block:: ocaml

  val add_re : t -> float -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L26>`__



.. code-block:: ocaml

  val add_im : t -> float -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L29>`__



.. code-block:: ocaml

  val sub_re : t -> float -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L32>`__



.. code-block:: ocaml

  val sub_im : t -> float -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L35>`__



.. code-block:: ocaml

  val mul_re : t -> float -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L38>`__



.. code-block:: ocaml

  val mul_im : t -> float -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L41>`__



.. code-block:: ocaml

  val div_re : t -> float -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L44>`__



.. code-block:: ocaml

  val div_im : t -> float -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L47>`__



.. code-block:: ocaml

  val pow : t -> t -> t

TODO

.. code-block:: ocaml

  val polar : float -> float -> t

TODO

.. code-block:: ocaml

  val rect : float -> float -> t

``rect r phi`` return a complex number with polar coordinates ``r`` and ``phi``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L278>`__



Comparison functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val equal : t -> t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L286>`__



.. code-block:: ocaml

  val not_equal : t -> t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L289>`__



.. code-block:: ocaml

  val less : t -> t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L292>`__



.. code-block:: ocaml

  val greater : t -> t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L300>`__



.. code-block:: ocaml

  val less_equal : t -> t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L308>`__



.. code-block:: ocaml

  val greater_equal : t -> t -> bool

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L311>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val complex : float -> float -> t

``complex re im`` returns a complex number ``{re; im}``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L316>`__



.. code-block:: ocaml

  val of_tuple : float * float -> t

``of_tuple (re, im)`` returns a complex number ``{re; im}``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L319>`__



.. code-block:: ocaml

  val to_tuple : t -> float * float

``to_tuple x`` converts a complex number to tuple ``(x.re; x.im)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L324>`__



.. code-block:: ocaml

  val is_nan : t -> bool

``is_nan x`` returns ``true`` if ``x.re`` is ``nan`` or ``x.im`` is ``nan``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L327>`__



.. code-block:: ocaml

  val is_inf : t -> bool

``is_inf x`` returns ``true`` if either ``x.re`` or ``x.im`` is ``infinity`` or ``neg_infinity``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/maths/owl_base_complex.ml#L330>`__



