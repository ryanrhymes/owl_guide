Maths
===============================================================================

This document is auto-generated for Owl's APIs.
#66 functions have been extracted.
timestamp:1517601113

.. code-block:: ocaml

  val sindg : float -> float

Sine of angle given in degrees

.. code-block:: ocaml

  val cosdg : float -> float

Cosine of the angle x given in degrees.

.. code-block:: ocaml

  val tandg : float -> float

Tangent of angle x given in degrees.

.. code-block:: ocaml

  val cotdg : float -> float

Cotangent of the angle x given in degrees.

.. code-block:: ocaml

  val hypot : float -> float -> float

Calculate the length of the hypotenuse.

.. code-block:: ocaml

  val xlogy : float -> float -> float

[xlogy(x, y) = x*log(y)]

.. code-block:: ocaml

  val xlog1py : float -> float -> float

[xlog1py(x, y) = x*log1p(y)]

.. code-block:: ocaml

  val logit : float -> float

[logit(x) = log(p/(1-p))]

.. code-block:: ocaml

  val expit : float -> float

[expit(x) = 1/(1+exp(-x))]

.. code-block:: ocaml

  val airy : float -> float * float * float * float

Airy function [airy x] returns [(Ai, Aip, Bi, Bip)]. [Aip] is the
derivative of [Ai] whilst [Bip] is the derivative of [Bi].

.. code-block:: ocaml

  val j0 : float -> float

Bessel function of the first kind of order 0.

.. code-block:: ocaml

  val j1 : float -> float

Bessel function of the first kind of order 1.

.. code-block:: ocaml

  val jv : float -> float -> float

Bessel function of real order.

.. code-block:: ocaml

  val y0 : float -> float

Bessel function of the second kind of order 0.

.. code-block:: ocaml

  val y1 : float -> float

Bessel function of the second kind of order 1.

.. code-block:: ocaml

  val yv : float -> float -> float

Bessel function of the second kind of real order.

.. code-block:: ocaml

  val yn : int -> float -> float

Bessel function of the second kind of integer order.

.. code-block:: ocaml

  val i0 : float -> float

Modified Bessel function of order 0.

.. code-block:: ocaml

  val i0e : float -> float

Exponentially scaled modified Bessel function of order 0.

.. code-block:: ocaml

  val i1 : float -> float

Modified Bessel function of order 1.

.. code-block:: ocaml

  val i1e : float -> float

Exponentially scaled modified Bessel function of order 1.

.. code-block:: ocaml

  val iv : float -> float -> float

Modified Bessel function of the first kind of real order.

.. code-block:: ocaml

  val k0 : float -> float

Modified Bessel function of the second kind of order 0, K_0.

.. code-block:: ocaml

  val k0e : float -> float

Exponentially scaled modified Bessel function K of order 0.

.. code-block:: ocaml

  val k1 : float -> float

Modified Bessel function of the second kind of order 1, K_1(x).

.. code-block:: ocaml

  val k1e : float -> float

Exponentially scaled modified Bessel function K of order 1.

.. code-block:: ocaml

  val ellipj : float -> float -> float * float * float * float

Jacobian Elliptic function [ellipj u m] returns [(sn, cn, dn, phi)].

.. code-block:: ocaml

  val ellipk : float -> float

Complete elliptic integral of the first kind [ellipk m].

.. code-block:: ocaml

  val ellipkm1 : float -> float

Complete elliptic integral of the first kind around [m = 1].

.. code-block:: ocaml

  val ellipkinc : float -> float -> float

Incomplete elliptic integral of the first kind [ellipkinc phi m].

.. code-block:: ocaml

  val ellipe : float -> float

Complete elliptic integral of the second kind [ellipe m].

.. code-block:: ocaml

  val ellipeinc : float -> float -> float

Incomplete elliptic integral of the second kind [ellipeinc phi m].

.. code-block:: ocaml

  val gamma : float -> float

Gamma function.

.. code-block:: ocaml

  val rgamma : float -> float

Reciprocal Gamma function.

.. code-block:: ocaml

  val loggamma : float -> float

Logarithm of the gamma function.

.. code-block:: ocaml

  val gammainc : float -> float -> float

Incomplete gamma function.

.. code-block:: ocaml

  val gammaincinv : float -> float -> float

Inverse function of [gammainc]

.. code-block:: ocaml

  val gammaincc : float -> float -> float

Complemented incomplete gamma integral

.. code-block:: ocaml

  val gammainccinv : float -> float -> float

Inverse function of [gammaincc]

.. code-block:: ocaml

  val psi : float -> float

The digamma function.

.. code-block:: ocaml

  val beta : float -> float -> float

Beta function.

.. code-block:: ocaml

  val betainc : float -> float -> float -> float

Incomplete beta integral.

.. code-block:: ocaml

  val betaincinv : float -> float -> float -> float

Inverse funciton of beta integral.

.. code-block:: ocaml

  val fact : int -> float

Factorial function [fact n] calculates [n!].

.. code-block:: ocaml

  val log_fact : int -> float

Logarithm of factorial function [log_fact n] calculates [log n!].

.. code-block:: ocaml

  val permutation : int -> int -> int

[permutation n k] return the number of permutations of n things taken k at a time.

.. code-block:: ocaml

  val combination : int -> int -> int

[combination n k] return the combination number of taking k out of n.

.. code-block:: ocaml

  val erf : float -> float

Error function.

.. code-block:: ocaml

  val erfc : float -> float

Complementary error function, [1 - erf(x)]

.. code-block:: ocaml

  val erfcx : float -> float

Scaled complementary error function, [exp(x**2) * erfc(x)].

.. code-block:: ocaml

  val erfinv : float -> float

Inverse of [erf x].

.. code-block:: ocaml

  val erfcinv : float -> float

Inverse of [erfc x]

.. code-block:: ocaml

  val dawsn : float -> float

Dawson’s integral.

.. code-block:: ocaml

  val fresnel : float -> float * float

Fresnel sin and cos integrals, [fresnel x] returns a tuple consisting of
[(Fresnel sin integral, Fresnel cos integral)].

.. code-block:: ocaml

  val struve : float -> float -> float

Struve function [struve v x].

.. code-block:: ocaml

  val expn : int -> float -> float

Exponential integral E_n.

.. code-block:: ocaml

  val shichi : float -> float * float

Hyperbolic sine and cosine integrals, [shichi x] returns [(shi, chi)].

.. code-block:: ocaml

  val shi : float -> float

Hyperbolic sine integrals.

.. code-block:: ocaml

  val chi : float -> float

Hyperbolic cosine integrals.

.. code-block:: ocaml

  val sici : float -> float * float

Sine and cosine integrals, [sici x] returns [(si, ci)].

.. code-block:: ocaml

  val si : float -> float

Sine integral.

.. code-block:: ocaml

  val ci : float -> float

Cosine integral.

.. code-block:: ocaml

  val zeta : float -> float -> float

Riemann or Hurwitz zeta function [zeta x q].

.. code-block:: ocaml

  val zetac : float -> float

Riemann zeta function minus 1.

.. code-block:: ocaml

  val nextafter : float -> float -> float

[nextafter from to] returns the next representable double precision value
of [from] in the direction of [to]. If from equals to [to], [to] is returned.

.. code-block:: ocaml

  val nextafterf : float -> float -> float

[nextafter from to] returns the next representable single precision value
of [from] in the direction of [to]. If from equals to [to], [to] is returned.

