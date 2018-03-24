Maths
===============================================================================

This document is auto-generated for Owl's APIs.
#150 entries have been extracted.
timestamp: 2018-03-24 22:02:58

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/maths/owl_maths.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/maths/owl_maths.ml>`_



Basic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : float -> float -> float

``add x y`` gives x + y.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L11>`__



.. code-block:: ocaml

  val sub : float -> float -> float

``sub x y`` gives x - y.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L13>`__



.. code-block:: ocaml

  val mul : float -> float -> float

``mul x y`` gives x * y.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L15>`__



.. code-block:: ocaml

  val div : float -> float -> float

``div x y`` gives x / y.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L17>`__



.. code-block:: ocaml

  val atan2 : float -> float -> float

``atan2 y x`` gives arctan(y/x), accounting for the sign of the arguments;
    this is the angle to the vector (x, y) counting from the x-axis.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L19>`__



.. code-block:: ocaml

  val abs : float -> float

``abs x`` gives ``|x|``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L22>`__



.. code-block:: ocaml

  val neg : float -> float

``neg x`` gives -x.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L24>`__



.. code-block:: ocaml

  val reci : float -> float

``reci x`` gives 1/x.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L26>`__



.. code-block:: ocaml

  val floor : float -> float

``floor x`` gives the largest integer <= x.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L36>`__



.. code-block:: ocaml

  val ceil : float -> float

``ceil x`` gives the smallest integer >= x.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L38>`__



.. code-block:: ocaml

  val round : float -> float

``round x`` rounds, towards the bigger integer when on the fence.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L42>`__



.. code-block:: ocaml

  val trunc : float -> float

``trunc x`` integer part.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L47>`__



.. code-block:: ocaml

  val sqr : float -> float

``sqr x`` square.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L49>`__



.. code-block:: ocaml

  val sqrt : float -> float

``sqrt x`` square root.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L51>`__



.. code-block:: ocaml

  val pow : float -> float -> float

``pow x y`` gives x^y.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L53>`__



.. code-block:: ocaml

  val exp : float -> float

``exp x`` exponential.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L55>`__



.. code-block:: ocaml

  val expm1 : float -> float

``expm1 x`` gives exp(x) - 1 but more accurate for x ~ 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L57>`__



.. code-block:: ocaml

  val log : float -> float

``log x`` natural logarithm

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L59>`__



.. code-block:: ocaml

  val log1p : float -> float

``log1p x`` gives log (x + 1) but more accurate for x ~ 0. Inverse of
    ``expm1``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L61>`__



.. code-block:: ocaml

  val logabs : float -> float

``logabs x`` gives log(abs(x)).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L69>`__



.. code-block:: ocaml

  val log2 : float -> float

``log2 x`` gives the base-2 logarithm of x.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L63>`__



.. code-block:: ocaml

  val log10 : float -> float

``log10 x`` gives the base-10 logarithm of x.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L65>`__



.. code-block:: ocaml

  val logn : float -> float -> float

``logn x`` gives the base-n logarithm of x.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L67>`__



.. code-block:: ocaml

  val sigmoid : float -> float

``sigmoid x`` gives the logistic sigmoid function 1 / (1 + exp(-x)).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L71>`__



.. code-block:: ocaml

  val signum : float -> float

``signum x`` gives the sign of x: -1, 0 or 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L28>`__



.. code-block:: ocaml

  val softsign : float -> float

``softsign x`` smoothed sign function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L30>`__



.. code-block:: ocaml

  val softplus : float -> float

``softplus x`` gives log(1+exp(x)).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L32>`__



.. code-block:: ocaml

  val relu : float -> float

``relu x`` gives max(0, x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L34>`__



.. code-block:: ocaml

  val sin : float -> float

``sin x`` gives sin(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L73>`__



.. code-block:: ocaml

  val cos : float -> float

``cos x`` gives cos(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L75>`__



.. code-block:: ocaml

  val tan : float -> float

``tan x`` gives tan(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L77>`__



.. code-block:: ocaml

  val cot : float -> float

``cot x`` gives 1/tan(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L79>`__



.. code-block:: ocaml

  val sec : float -> float

``sec x`` gives 1/cos(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L81>`__



.. code-block:: ocaml

  val csc : float -> float

``csc x`` gives 1/sin(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L83>`__



.. code-block:: ocaml

  val asin : float -> float

``asin x`` gives arcsin(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L85>`__



.. code-block:: ocaml

  val acos : float -> float

``acos x`` gives arccos(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L87>`__



.. code-block:: ocaml

  val atan : float -> float

``atan x`` gives arctan(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L89>`__



.. code-block:: ocaml

  val acot : float -> float

``acot x`` gives arccotan(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L91>`__



.. code-block:: ocaml

  val asec : float -> float

``asec x`` gives arcsec(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L93>`__



.. code-block:: ocaml

  val acsc : float -> float

``acsc x`` gives arccosec(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L95>`__



.. code-block:: ocaml

  val sinh : float -> float

``sinh x`` gives sinh(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L99>`__



.. code-block:: ocaml

  val cosh : float -> float

``cosh x`` gives cosh(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L101>`__



.. code-block:: ocaml

  val tanh : float -> float

``tanh x`` gives tanh(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L103>`__



.. code-block:: ocaml

  val coth : float -> float

``coth x`` gives coth(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L105>`__



.. code-block:: ocaml

  val sech : float -> float

``sech x`` gives sech(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L107>`__



.. code-block:: ocaml

  val csch : float -> float

``csch x`` gives cosech(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L109>`__



.. code-block:: ocaml

  val asinh : float -> float

``asinh x`` gives arcsinh(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L111>`__



.. code-block:: ocaml

  val acosh : float -> float

``acosh x`` gives arccosh(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L113>`__



.. code-block:: ocaml

  val atanh : float -> float

``atanh x`` gives arctanh(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L115>`__



.. code-block:: ocaml

  val acoth : float -> float

``acoth x`` gives arccoth(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L117>`__



.. code-block:: ocaml

  val asech : float -> float

``asech x`` gives arcsech(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L119>`__



.. code-block:: ocaml

  val acsch : float -> float

``acsch x`` gives arccosech(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L121>`__



.. code-block:: ocaml

  val sinc : float -> float

``sinc x`` gives sin(x)/x and 1 for x=0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L97>`__



.. code-block:: ocaml

  val logsinh : float -> float

``logsinh x`` gives log(sinh(x)) but handles large ``|x|``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L123>`__



.. code-block:: ocaml

  val logcosh : float -> float

``logcosh x`` gives log(cosh(x)) but handles large ``|x|``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L125>`__



.. code-block:: ocaml

  val sindg : float -> float

Sine of angle given in degrees.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L127>`__



.. code-block:: ocaml

  val cosdg : float -> float

Cosine of the angle x given in degrees.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L129>`__



.. code-block:: ocaml

  val tandg : float -> float

Tangent of angle x given in degrees.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L131>`__



.. code-block:: ocaml

  val cotdg : float -> float

Cotangent of the angle x given in degrees.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L133>`__



.. code-block:: ocaml

  val hypot : float -> float -> float

Calculate the length of the hypotenuse.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L135>`__



.. code-block:: ocaml

  val xlogy : float -> float -> float

``xlogy(x, y)`` gives x*log(y).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L137>`__



.. code-block:: ocaml

  val xlog1py : float -> float -> float

``xlog1py(x, y)`` gives x*log(y+1).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L139>`__



.. code-block:: ocaml

  val logit : float -> float

``logit(x)`` gives log(p/(1-p)).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L141>`__



.. code-block:: ocaml

  val expit : float -> float

``expit(x)`` gives 1/(1+exp(-x)).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L143>`__



Airy functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val airy : float -> float * float * float * float

Airy function ``airy x`` returns ``(Ai, Aip, Bi, Bip)``. ``Aip`` is the
derivative of ``Ai`` whilst ``Bip`` is the derivative of ``Bi``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L145>`__



Bessel functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val j0 : float -> float

Bessel function of the first kind of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L172>`__



.. code-block:: ocaml

  val j1 : float -> float

Bessel function of the first kind of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L174>`__



.. code-block:: ocaml

  val jv : float -> float -> float

Bessel function of real order.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L176>`__



.. code-block:: ocaml

  val y0 : float -> float

Bessel function of the second kind of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L178>`__



.. code-block:: ocaml

  val y1 : float -> float

Bessel function of the second kind of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L180>`__



.. code-block:: ocaml

  val yv : float -> float -> float

Bessel function of the second kind of real order.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L182>`__



.. code-block:: ocaml

  val yn : int -> float -> float

Bessel function of the second kind of integer order.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L184>`__



.. code-block:: ocaml

  val i0 : float -> float

Modified Bessel function of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L186>`__



.. code-block:: ocaml

  val i0e : float -> float

Exponentially scaled modified Bessel function of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L188>`__



.. code-block:: ocaml

  val i1 : float -> float

Modified Bessel function of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L190>`__



.. code-block:: ocaml

  val i1e : float -> float

Exponentially scaled modified Bessel function of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L192>`__



.. code-block:: ocaml

  val iv : float -> float -> float

Modified Bessel function of the first kind of real order.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L194>`__



.. code-block:: ocaml

  val k0 : float -> float

Modified Bessel function of the second kind of order 0, K_0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L196>`__



.. code-block:: ocaml

  val k0e : float -> float

Exponentially scaled modified Bessel function K of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L198>`__



.. code-block:: ocaml

  val k1 : float -> float

Modified Bessel function of the second kind of order 1, K_1(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L200>`__



.. code-block:: ocaml

  val k1e : float -> float

Exponentially scaled modified Bessel function K of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L202>`__



Elliptic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ellipj : float -> float -> float * float * float * float

Jacobian Elliptic function ``ellipj u m`` returns ``(sn, cn, dn, phi)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L154>`__



.. code-block:: ocaml

  val ellipk : float -> float

Complete elliptic integral of the first kind ``ellipk m``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L162>`__



.. code-block:: ocaml

  val ellipkm1 : float -> float

Complete elliptic integral of the first kind around ``m = 1``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L164>`__



.. code-block:: ocaml

  val ellipkinc : float -> float -> float

Incomplete elliptic integral of the first kind ``ellipkinc phi m``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L166>`__



.. code-block:: ocaml

  val ellipe : float -> float

Complete elliptic integral of the second kind ``ellipe m``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L168>`__



.. code-block:: ocaml

  val ellipeinc : float -> float -> float

Incomplete elliptic integral of the second kind ``ellipeinc phi m``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L170>`__



Gamma Functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val gamma : float -> float

Gamma function.

.. math::
  \Gamma(z) = \int_0^\infty x^{z-1} e^{-x} dx = (z - 1)!

The gamma function is often referred to as the generalized factorial since
``z*gamma(z) = gamma(z+1)`` and ``gamma(n+1) = n!`` for natural number ``n``.

Parameters:
  * ``z``

Returns:
  * The value of gamma(z).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L226>`__



.. code-block:: ocaml

  val rgamma : float -> float

Reciprocal Gamma function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L228>`__



.. code-block:: ocaml

  val loggamma : float -> float

Logarithm of the gamma function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L230>`__



.. code-block:: ocaml

  val gammainc : float -> float -> float

Incomplete gamma function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L232>`__



.. code-block:: ocaml

  val gammaincinv : float -> float -> float

Inverse function of ``gammainc``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L234>`__



.. code-block:: ocaml

  val gammaincc : float -> float -> float

Complemented incomplete gamma integral.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L236>`__



.. code-block:: ocaml

  val gammainccinv : float -> float -> float

Inverse function of ``gammaincc``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L238>`__



.. code-block:: ocaml

  val psi : float -> float

The digamma function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L240>`__



Beta functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val beta : float -> float -> float

Beta function.

.. math::
  \mathrm{B}(a, b) =  \frac{\Gamma(a) \Gamma(b)}{\Gamma(a+b)}

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L258>`__



.. code-block:: ocaml

  val betainc : float -> float -> float -> float

Incomplete beta integral.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L260>`__



.. code-block:: ocaml

  val betaincinv : float -> float -> float -> float

Inverse funciton of beta integral.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L262>`__



Factorials
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val fact : int -> float

Factorial function ``fact n`` calculates ``n!``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L242>`__



.. code-block:: ocaml

  val log_fact : int -> float

Logarithm of factorial function ``log_fact n`` calculates ``log n!``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L246>`__



.. code-block:: ocaml

  val doublefact : int -> float

Double factorial function ``doublefact n`` calculates n!! = n(n-2)(n-4)...

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L250>`__



.. code-block:: ocaml

  val log_doublefact : int -> float

Logarithm of double factorial function. ``log_doublefact n`` calculates
    log(n!!)

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L254>`__



.. code-block:: ocaml

  val permutation : int -> int -> int

``permutation n k`` gives the number n!/(n-k)! of ordered subsets of length k, taken
    from a set of n elements.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L281>`__



.. code-block:: ocaml

  val permutation_float : int -> int -> float

``permutation_float`` is like ``permutation`` but deal with larger range.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L274>`__



.. code-block:: ocaml

  val combination : int -> int -> int

``combination n k`` gives the number n!/(k!(n-k)!) of subsets of k elements
    of a set of n elements. This is the binomial coefficient 'n choose k'

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L270>`__



.. code-block:: ocaml

  val combination_float : int -> int -> float

``combination_float`` is like ``combination`` but can deal with a larger range.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L268>`__



.. code-block:: ocaml

  val log_combination : int -> int -> float

``log_combination n k`` gives the logarithm of 'n choose k'.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L272>`__



Error functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val erf : float -> float

Error function. :math:`\int_{-\infty}^x \frac{1}{\sqrt(2\pi)} exp(-1/2 y^2) dy`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L283>`__



.. code-block:: ocaml

  val erfc : float -> float

Complementary error function, 1 - erf(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L285>`__



.. code-block:: ocaml

  val erfcx : float -> float

Scaled complementary error function, exp(x^2) * erfc(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L287>`__



.. code-block:: ocaml

  val erfinv : float -> float

Inverse of erf.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L289>`__



.. code-block:: ocaml

  val erfcinv : float -> float

Inverse of erfc.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L291>`__



Dawson & Fresnel integrals
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val dawsn : float -> float

Dawson’s integral.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L293>`__



.. code-block:: ocaml

  val fresnel : float -> float * float

Fresnel sin and cos integrals. ``fresnel x`` returns a tuple consisting of
``(Fresnel sin integral, Fresnel cos integral)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L295>`__



Struve functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val struve : float -> float -> float

``struve v x`` returns the value of the Struve function of
order ``v`` at ``x``. The Struve function is defined as,

.. math::
  H_v(x) = (z/2)^{v + 1} \sum_{n=0}^\infty \frac{(-1)^n (z/2)^{2n}}{\Gamma(n + \frac{3}{2}) \Gamma(n + v + \frac{3}{2})},

where :math:`\Gamma` is the gamma function.

Parameters:
  * ``v``: order of the Struve function (float).
  * ``x``: Argument of the Struve function (float; must be positive unless v is an integer).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L301>`__



Other special functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val expn : int -> float -> float

Exponential integral E_n.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L204>`__



.. code-block:: ocaml

  val shichi : float -> float * float

Hyperbolic sine and cosine integrals, ``shichi x`` returns ``(shi, chi)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L206>`__



.. code-block:: ocaml

  val shi : float -> float

Hyperbolic sine integral.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L212>`__



.. code-block:: ocaml

  val chi : float -> float

Hyperbolic cosine integral.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L214>`__



.. code-block:: ocaml

  val sici : float -> float * float

Sine and cosine integrals, ``sici x`` returns ``(si, ci)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L216>`__



.. code-block:: ocaml

  val si : float -> float

Sine integral.

.. code-block:: ocaml

  val ci : float -> float

Cosine integral.

.. code-block:: ocaml

  val zeta : float -> float -> float

``zeta x q`` gives the Hurwitz zeta function :math:`\zeta(x, q)`, which
    reduces to the Riemann zeta function :math:`\zeta(x)` when q=1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L264>`__



.. code-block:: ocaml

  val zetac : float -> float

Riemann zeta function minus 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L266>`__



Raw statistical functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val bdtr : int -> int -> float -> float

Binomial distribution cumulative distribution function.

``bdtr k n p`` calculates the sum of the terms 0 through k of the Binomial
probability density.

.. math::
  \mathrm{bdtr}(k, n, p) = \sum_{j=0}^k {{n}\choose{j}} p^j (1-p)^{n-j}

Parameters:
  * ``k``: Number of successes.
  * ``n``: Number of events.
  * ``p``: Probability of success in a single event.

Returns:
  * Probability of k or fewer successes in n independent events with success probabilities of p.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L319>`__



.. code-block:: ocaml

  val bdtrc : int -> int -> float -> float

Binomial distribution survival function.

``bdtrc k n p`` calculates the sum of the terms k + 1 through n of the binomial
probability density,

.. math::
  \mathrm{bdtrc}(k, n, p) = \sum_{j=k+1}^n {{n}\choose{j}} p^j (1-p)^{n-j}

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L321>`__



.. code-block:: ocaml

  val bdtri : int -> int -> float -> float

Inverse function to ``bdtr`` with respect to ``p``.

Finds the event probability ``p`` such that the sum of the terms 0 through k of
the binomial probability density is equal to the given cumulative probability y.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L323>`__



.. code-block:: ocaml

  val btdtr : float -> float -> float -> float

Cumulative density function of the beta distribution.

``btdtr a b x`` returns the integral from zero to x of the beta probability
density function,

.. math::
  I = \int_0^x \frac{\Gamma(a + b)}{\Gamma(a)\Gamma(b)} t^{a-1} (1-t)^{b-1}\,dt

where :math:`\Gamma` is the gamma function.

Parameters:
  * ``a``: Shape parameter (a > 0).
  * ``b``: Shape parameter (a > 0).
  * ``x``: Upper limit of integration, in [0, 1].

Returns:
  * Cumulative density function of the beta distribution with ``a`` and ``b`` at ``x``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L325>`__



.. code-block:: ocaml

  val btdtri : float -> float -> float -> float

The p-th quantile of the Beta distribution.

This function is the inverse of the beta cumulative distribution function,
``btdtr``, returning the value of ``x`` for which ``btdtr(a, b, x) = p``,

.. math::
  p = \int_0^x \frac{\Gamma(a + b)}{\Gamma(a)\Gamma(b)} t^{a-1} (1-t)^{b-1}\,dt

where :math:`\Gamma` is the gamma function.

Parameters:
  * ``a``: Shape parameter (a > 0).
  * ``b``: Shape parameter (a > 0).
  * ``x``: Cumulative probability, in [0, 1].

Returns:
  * The quantile corresponding to ``p``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L327>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val is_nan : float -> bool

``is_nan x`` returns ``true`` if ``x`` is ``nan``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L305>`__



.. code-block:: ocaml

  val is_inf : float -> bool

``is_inf x`` returns ``true`` if ``x`` is ``infinity`` or ``neg_infinity``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L307>`__



.. code-block:: ocaml

  val is_odd : int -> bool

``is_odd x`` returns ``true`` if ``x`` is odd.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L309>`__



.. code-block:: ocaml

  val is_even : int -> bool

``is_even x`` returns ``true`` if ``x`` is even.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L311>`__



.. code-block:: ocaml

  val is_pow2 : int -> bool

``is_pow2 x`` return ``true`` if ``x`` is integer power of 2, e.g. 32, 64, etc.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L313>`__



.. code-block:: ocaml

  val same_sign : float -> float -> bool

``same_sign x y`` returns ``true`` if ``x`` and ``y`` have the same sign,
otherwise it returns ``false``. Positive and negative zeros are special cases
and always returns ``true``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L303>`__



.. code-block:: ocaml

  val nextafter : float -> float -> float

``nextafter from to`` returns the next representable double precision value
of ``from`` in the direction of ``to``. If ``from`` equals ``to``, this value
is returned.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L315>`__



.. code-block:: ocaml

  val nextafterf : float -> float -> float

``nextafter from to`` returns the next representable single precision value
of ``from`` in the direction of ``to``. If ``from`` equals ``to``, this value
is returned.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L317>`__



