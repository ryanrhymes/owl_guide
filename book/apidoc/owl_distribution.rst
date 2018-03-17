Distribution Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#200 entries have been extracted.
timestamp: 2018-03-17 21:41:42

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/ppl/owl_distribution.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/ppl/owl_distribution.ml>`_



Uniform distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { a : A.arr; b : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : a:A.arr -> b:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Gaussian distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { mu : A.arr; sigma : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : mu:A.arr -> sigma:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Exponential distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { lambda : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : lambda:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Gamma distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { shape : A.arr; scale : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : shape:A.arr -> scale:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Beta distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { a : A.arr; b : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : a:A.arr -> b:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Chi2 distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { df : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : df:A.arr -> sigma:'a -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

F distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { dfnum : A.arr; dfden : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : dfnum:A.arr -> dfden:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Cauchy distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { loc : A.arr; scale : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : loc:A.arr -> scale:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Lomax distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { shape : A.arr; scale : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : shape:A.arr -> scale:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Weibull distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { shape : A.arr; scale : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : shape:A.arr -> scale:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Laplace distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { loc : A.arr; scale : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : loc:A.arr -> scale:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Gumbel1 distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { a : A.arr; b : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : a:A.arr -> b:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Gumbel2 distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { a : A.arr; b : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : a:A.arr -> b:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Logistic distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { loc : A.arr; scale : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : loc:A.arr -> scale:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Lognormal distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { mu : A.arr; sigma : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : mu:A.arr -> sigma:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Rayleigh distribtion
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t = { sigma : A.arr; }
    

Type definition of a specific distribution

.. code-block:: ocaml

  val make : sigma:A.arr -> t

Make a distribution of the given parameters.

.. code-block:: ocaml

  val sample : t -> int -> A.arr

Sample a distribution of the given parameters.

.. code-block:: ocaml

  val pdf : t -> A.arr -> A.arr

Probability density/mass function of the distribution.

.. code-block:: ocaml

  val logpdf : t -> A.arr -> A.arr

Logarithm of the probability density/mass function of the distribution.

.. code-block:: ocaml

  val cdf : t -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : t -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val ppf : t -> A.arr -> A.arr

Percentile function of the distribution.

.. code-block:: ocaml

  val sf : t -> A.arr -> A.arr

Survival function of the distribution.

.. code-block:: ocaml

  val logsf : t -> A.arr -> A.arr

Logarithm of the survival function of the distribution.

.. code-block:: ocaml

  val isf : t -> A.arr -> A.arr

Inverse survival function of the distribution.

Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type dist =
    | Uniform of Uniform.t
    | Gaussian of Gaussian.t
    | Exponential of Exponential.t
    | Gamma of Gamma.t
    | Beta of Beta.t
    | Chi2 of Chi2.t
    | F of F.t
    | Cauchy of Cauchy.t
    | Lomax of Lomax.t
    | Weibull of Weibull.t
    | Laplace of Laplace.t
    | Gumbel1 of Gumbel1.t
    | Gumbel2 of Gumbel2.t
    | Logistic of Logistic.t
    | Lognormal of Lognormal.t
    | Rayleigh of Rayleigh.t
    

Type definition of various distribtions

Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sample : dist -> int -> A.arr

Sample a given distribution of the given parameters.

.. code-block:: ocaml

  val prob : dist -> A.arr -> A.arr

Probability density/mass function of a given distribtion.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/ppl/owl_distribution.ml#L581>`__



.. code-block:: ocaml

  val log_prob : dist -> A.arr -> A.arr

logarithmic probability density/mass function of a given distribtion.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/ppl/owl_distribution.ml#L599>`__



.. code-block:: ocaml

  val cdf : dist -> A.arr -> A.arr

Cumulative density/mass function of the distribution.

.. code-block:: ocaml

  val logcdf : dist -> A.arr -> A.arr

Logarithm of the cumulative density/mass function of the distribution.

