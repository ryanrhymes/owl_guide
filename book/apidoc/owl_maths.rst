Maths
===============================================================================

This document is auto-generated for Owl's APIs.
#148 entries have been extracted.
timestamp: 2018-03-12 02:30:23

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/maths/owl_maths.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/maths/owl_maths.ml>`_



Basic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val add : float -> float -> float

``add x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L11>`__



.. code-block:: ocaml

  val sub : float -> float -> float

``sub x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L13>`__



.. code-block:: ocaml

  val mul : float -> float -> float

``mul x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L15>`__



.. code-block:: ocaml

  val div : float -> float -> float

``div x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L17>`__



.. code-block:: ocaml

  val atan2 : float -> float -> float

``atan2 x y``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L19>`__



.. code-block:: ocaml

  val abs : float -> float

``abs x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L22>`__



.. code-block:: ocaml

  val neg : float -> float

``neg x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L24>`__



.. code-block:: ocaml

  val reci : float -> float

``reci x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L26>`__



.. code-block:: ocaml

  val floor : float -> float

``floor x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L41>`__



.. code-block:: ocaml

  val ceil : float -> float

``ceil x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L43>`__



.. code-block:: ocaml

  val round : float -> float

``round x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L47>`__



.. code-block:: ocaml

  val trunc : float -> float

``trunc x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L52>`__



.. code-block:: ocaml

  val sqr : float -> float

``sqr x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L54>`__



.. code-block:: ocaml

  val sqrt : float -> float

``sqrt x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L56>`__



.. code-block:: ocaml

  val pow : float -> float -> float

``pow x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L58>`__



.. code-block:: ocaml

  val exp : float -> float

``exp x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L60>`__



.. code-block:: ocaml

  val expm1 : float -> float

``expm1``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L62>`__



.. code-block:: ocaml

  val log : float -> float

``log x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L64>`__



.. code-block:: ocaml

  val log1p : float -> float

``log1p x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L66>`__



.. code-block:: ocaml

  val logabs : float -> float

``logabs x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L74>`__



.. code-block:: ocaml

  val log2 : float -> float

``log2 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L68>`__



.. code-block:: ocaml

  val log10 : float -> float

``log10 x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L70>`__



.. code-block:: ocaml

  val logn : float -> float -> float

``logn x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L72>`__



.. code-block:: ocaml

  val sigmoid : float -> float

``sigmod x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L76>`__



.. code-block:: ocaml

  val signum : float -> float

``signum x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L28>`__



.. code-block:: ocaml

  val softsign : float -> float

``softsign x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L35>`__



.. code-block:: ocaml

  val softplus : float -> float

``softplus x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L37>`__



.. code-block:: ocaml

  val relu : float -> float

``relu x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L39>`__



.. code-block:: ocaml

  val sin : float -> float

``sin x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L78>`__



.. code-block:: ocaml

  val cos : float -> float

``cos x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L80>`__



.. code-block:: ocaml

  val tan : float -> float

``tan x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L82>`__



.. code-block:: ocaml

  val cot : float -> float

``cot x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L84>`__



.. code-block:: ocaml

  val sec : float -> float

``sec x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L86>`__



.. code-block:: ocaml

  val csc : float -> float

``csc x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L88>`__



.. code-block:: ocaml

  val asin : float -> float

``asin x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L90>`__



.. code-block:: ocaml

  val acos : float -> float

``acos x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L92>`__



.. code-block:: ocaml

  val atan : float -> float

``atan x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L94>`__



.. code-block:: ocaml

  val acot : float -> float

``acot x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L96>`__



.. code-block:: ocaml

  val asec : float -> float

``asec x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L98>`__



.. code-block:: ocaml

  val acsc : float -> float

``acsc x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L100>`__



.. code-block:: ocaml

  val sinh : float -> float

``sinh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L104>`__



.. code-block:: ocaml

  val cosh : float -> float

``cosh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L106>`__



.. code-block:: ocaml

  val tanh : float -> float

``tanh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L108>`__



.. code-block:: ocaml

  val coth : float -> float

``coth x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L110>`__



.. code-block:: ocaml

  val sech : float -> float

``sech x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L112>`__



.. code-block:: ocaml

  val csch : float -> float

``csch x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L114>`__



.. code-block:: ocaml

  val asinh : float -> float

``asinh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L116>`__



.. code-block:: ocaml

  val acosh : float -> float

``acosh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L118>`__



.. code-block:: ocaml

  val atanh : float -> float

``atanh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L120>`__



.. code-block:: ocaml

  val acoth : float -> float

``acoth x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L122>`__



.. code-block:: ocaml

  val asech : float -> float

``asech x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L124>`__



.. code-block:: ocaml

  val acsch : float -> float

``acsch x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L126>`__



.. code-block:: ocaml

  val sinc : float -> float

``sinc x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L102>`__



.. code-block:: ocaml

  val logsinh : float -> float

``logsinh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L128>`__



.. code-block:: ocaml

  val logcosh : float -> float

``logcosh x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L130>`__



.. code-block:: ocaml

  val sindg : float -> float

Sine of angle given in degrees

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L132>`__



.. code-block:: ocaml

  val cosdg : float -> float

Cosine of the angle x given in degrees.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L134>`__



.. code-block:: ocaml

  val tandg : float -> float

Tangent of angle x given in degrees.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L136>`__



.. code-block:: ocaml

  val cotdg : float -> float

Cotangent of the angle x given in degrees.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L138>`__



.. code-block:: ocaml

  val hypot : float -> float -> float

Calculate the length of the hypotenuse.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L140>`__



.. code-block:: ocaml

  val xlogy : float -> float -> float

``xlogy(x, y) = x*log(y)``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L142>`__



.. code-block:: ocaml

  val xlog1py : float -> float -> float

``xlog1py(x, y) = x*log1p(y)``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L144>`__



.. code-block:: ocaml

  val logit : float -> float

``logit(x) = log(p/(1-p))``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L146>`__



.. code-block:: ocaml

  val expit : float -> float

``expit(x) = 1/(1+exp(-x))``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L148>`__



Airy functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val airy : float -> float * float * float * float

Airy function ``airy x`` returns ``(Ai, Aip, Bi, Bip)``. ``Aip`` is the
derivative of ``Ai`` whilst ``Bip`` is the derivative of ``Bi``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L150>`__



Bessel functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val j0 : float -> float

Bessel function of the first kind of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L177>`__



.. code-block:: ocaml

  val j1 : float -> float

Bessel function of the first kind of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L179>`__



.. code-block:: ocaml

  val jv : float -> float -> float

Bessel function of real order.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L181>`__



.. code-block:: ocaml

  val y0 : float -> float

Bessel function of the second kind of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L183>`__



.. code-block:: ocaml

  val y1 : float -> float

Bessel function of the second kind of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L185>`__



.. code-block:: ocaml

  val yv : float -> float -> float

Bessel function of the second kind of real order.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L187>`__



.. code-block:: ocaml

  val yn : int -> float -> float

Bessel function of the second kind of integer order.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L189>`__



.. code-block:: ocaml

  val i0 : float -> float

Modified Bessel function of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L191>`__



.. code-block:: ocaml

  val i0e : float -> float

Exponentially scaled modified Bessel function of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L193>`__



.. code-block:: ocaml

  val i1 : float -> float

Modified Bessel function of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L195>`__



.. code-block:: ocaml

  val i1e : float -> float

Exponentially scaled modified Bessel function of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L197>`__



.. code-block:: ocaml

  val iv : float -> float -> float

Modified Bessel function of the first kind of real order.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L199>`__



.. code-block:: ocaml

  val k0 : float -> float

Modified Bessel function of the second kind of order 0, K_0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L201>`__



.. code-block:: ocaml

  val k0e : float -> float

Exponentially scaled modified Bessel function K of order 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L203>`__



.. code-block:: ocaml

  val k1 : float -> float

Modified Bessel function of the second kind of order 1, K_1(x).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L205>`__



.. code-block:: ocaml

  val k1e : float -> float

Exponentially scaled modified Bessel function K of order 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L207>`__



Elliptic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ellipj : float -> float -> float * float * float * float

Jacobian Elliptic function ``ellipj u m`` returns ``(sn, cn, dn, phi)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L159>`__



.. code-block:: ocaml

  val ellipk : float -> float

Complete elliptic integral of the first kind ``ellipk m``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L167>`__



.. code-block:: ocaml

  val ellipkm1 : float -> float

Complete elliptic integral of the first kind around ``m = 1``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L169>`__



.. code-block:: ocaml

  val ellipkinc : float -> float -> float

Incomplete elliptic integral of the first kind ``ellipkinc phi m``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L171>`__



.. code-block:: ocaml

  val ellipe : float -> float

Complete elliptic integral of the second kind ``ellipe m``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L173>`__



.. code-block:: ocaml

  val ellipeinc : float -> float -> float

Incomplete elliptic integral of the second kind ``ellipeinc phi m``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L175>`__



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

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L231>`__



.. code-block:: ocaml

  val rgamma : float -> float

Reciprocal Gamma function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L233>`__



.. code-block:: ocaml

  val loggamma : float -> float

Logarithm of the gamma function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L235>`__



.. code-block:: ocaml

  val gammainc : float -> float -> float

Incomplete gamma function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L237>`__



.. code-block:: ocaml

  val gammaincinv : float -> float -> float

Inverse function of ``gammainc``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L239>`__



.. code-block:: ocaml

  val gammaincc : float -> float -> float

Complemented incomplete gamma integral

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L241>`__



.. code-block:: ocaml

  val gammainccinv : float -> float -> float

Inverse function of ``gammaincc``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L243>`__



.. code-block:: ocaml

  val psi : float -> float

The digamma function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L245>`__



Beta functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val beta : float -> float -> float

Beta function.

.. math::
  \mathrm{B}(a, b) =  \frac{\Gamma(a) \Gamma(b)}{\Gamma(a+b)}

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L263>`__



.. code-block:: ocaml

  val betainc : float -> float -> float -> float

Incomplete beta integral.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L265>`__



.. code-block:: ocaml

  val betaincinv : float -> float -> float -> float

Inverse funciton of beta integral.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L267>`__



Factorials
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val fact : int -> float

Factorial function ``fact n`` calculates ``n!``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L247>`__



.. code-block:: ocaml

  val log_fact : int -> float

Logarithm of factorial function ``log_fact n`` calculates ``log n!``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L251>`__



.. code-block:: ocaml

  val doublefact : int -> float

Double factorial function ``doublefact n`` calculates ... TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L255>`__



.. code-block:: ocaml

  val log_doublefact : int -> float

Logarithm of double factorial function ``log_doublefact n`` calculates ... TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L259>`__



.. code-block:: ocaml

  val permutation : int -> int -> int

``permutation n k`` return the number of permutations of n things taken k at a time.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L286>`__



.. code-block:: ocaml

  val permutation_float : int -> int -> float

``permutation_float n k`` return the number of permutations of n things taken
k at a time. This function can deal with larger range than ``permutation``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L279>`__



.. code-block:: ocaml

  val combination : int -> int -> int

``combination n k`` return the combination number of taking ``k`` out of ``n``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L275>`__



.. code-block:: ocaml

  val combination_float : int -> int -> float

``combination_float n k`` return the combination number of taking ``k`` out of
``n``. This function can deal with larger range than ``combination``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L273>`__



.. code-block:: ocaml

  val log_combination : int -> int -> float

``log_combination n k`` return the logarithm of combination number of taking ``k`` out of ``n``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L277>`__



Error functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val erf : float -> float

Error function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L288>`__



.. code-block:: ocaml

  val erfc : float -> float

Complementary error function, ``1 - erf(x)``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L290>`__



.. code-block:: ocaml

  val erfcx : float -> float

Scaled complementary error function, ``exp(x**2) * erfc(x)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L292>`__



.. code-block:: ocaml

  val erfinv : float -> float

Inverse of ``erf x``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L294>`__



.. code-block:: ocaml

  val erfcinv : float -> float

Inverse of ``erfc x``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L296>`__



Dawson & Fresnel integrals
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val dawsn : float -> float

Dawson’s integral.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L298>`__



.. code-block:: ocaml

  val fresnel : float -> float * float

Fresnel sin and cos integrals, ``fresnel x`` returns a tuple consisting of
``(Fresnel sin integral, Fresnel cos integral)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L300>`__



Struve functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val struve : float -> float -> float

Struve function ``struve v x`` returns the value of the Struve function of
order ``v`` at ``x``. The Struve function is defined as,

.. math::
  H_v(x) = (z/2)^{v + 1} \sum_{n=0}^\infty \frac{(-1)^n (z/2)^{2n}}{\Gamma(n + \frac{3}{2}) \Gamma(n + v + \frac{3}{2})},

where :math:`\Gamma` is the gamma function.

Parameters:
  * ``v``: order of the Struve function (float).
  * ``x``: Argument of the Struve function (float; must be positive unless v is an integer).

Returns:
  * Value of the Struve function of order ``v`` at ``x``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L306>`__



Other special functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val expn : int -> float -> float

Exponential integral E_n.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L209>`__



.. code-block:: ocaml

  val shichi : float -> float * float

Hyperbolic sine and cosine integrals, ``shichi x`` returns ``(shi, chi)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L211>`__



.. code-block:: ocaml

  val shi : float -> float

Hyperbolic sine integrals.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L217>`__



.. code-block:: ocaml

  val chi : float -> float

Hyperbolic cosine integrals.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L219>`__



.. code-block:: ocaml

  val sici : float -> float * float

Sine and cosine integrals, ``sici x`` returns ``(si, ci)``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L221>`__



.. code-block:: ocaml

  val si : float -> float

Sine integral.

.. code-block:: ocaml

  val ci : float -> float

Cosine integral.

.. code-block:: ocaml

  val zeta : float -> float -> float

Riemann or Hurwitz zeta function ``zeta x q``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L269>`__



.. code-block:: ocaml

  val zetac : float -> float

Riemann zeta function minus 1.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L271>`__



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

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L318>`__



.. code-block:: ocaml

  val bdtrc : int -> int -> float -> float

Binomial distribution survival function.

``bdtrc k n p`` calculates the sum of the terms k + 1 through n of the binomial
probability density,

.. math::
  \mathrm{bdtrc}(k, n, p) = \sum_{j=k+1}^n {{n}\choose{j}} p^j (1-p)^{n-j}

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L320>`__



.. code-block:: ocaml

  val bdtri : int -> int -> float -> float

Inverse function to ``bdtr`` with respect to ``p``.

Finds the event probability ``p`` such that the sum of the terms 0 through k of
the binomial probability density is equal to the given cumulative probability y.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L322>`__



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

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L324>`__



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

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L326>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val is_odd : int -> bool

``is_odd x`` returns ``true`` if ``x`` is odd.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L308>`__



.. code-block:: ocaml

  val is_even : int -> bool

``is_even x`` returns ``true`` if ``x`` is even.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L310>`__



.. code-block:: ocaml

  val is_pow2 : int -> bool

``is_pow2 x`` return ``true`` if ``x`` is integer power of 2, e.g. 32, 64, etc.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L312>`__



.. code-block:: ocaml

  val same_sign : float -> float -> bool

``same_sign x y`` returns ``true`` if ``x`` and ``y`` have the same sign,
otherwise it returns ``false``. Positive and negative zeros are special cases
and always returns ``true``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L30>`__



.. code-block:: ocaml

  val nextafter : float -> float -> float

``nextafter from to`` returns the next representable double precision value
of ``from`` in the direction of ``to``. If from equals to ``to``, ``to`` is returned.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L314>`__



.. code-block:: ocaml

  val nextafterf : float -> float -> float

``nextafter from to`` returns the next representable single precision value
of ``from`` in the direction of ``to``. If from equals to ``to``, ``to`` is returned.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths.ml#L316>`__



