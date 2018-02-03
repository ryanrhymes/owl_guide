Stats
===============================================================================

This document is auto-generated for Owl's APIs.
#40 functions have been extracted.
timestamp:1517666038

.. code-block:: ocaml

  type tail = BothSide | RightSide | LeftSide

Types of alternative hypothesis tests: one-side, left-side, or right-side.



.. code-block:: ocaml

  val shuffle : 'a array -> 'a array

``shuffle x`` return a new array of the shuffled ``x``.



.. code-block:: ocaml

  val choose : 'a array -> int -> 'a array

``choose x n`` draw ``n`` samples from ``x`` without replecement.



.. code-block:: ocaml

  val sample : 'a array -> int -> 'a array

``sample x n`` draw ``n`` samples from ``x`` with replacement.



.. code-block:: ocaml

  val sum : float array -> float

``sum x`` returns the summation of the elements in ``x``.



.. code-block:: ocaml

  val mean : float array -> float

``mean x`` returns the mean of the elements in ``x``.



.. code-block:: ocaml

  val var : ?mean:float -> float array -> float

``var x`` returns the variance of elements in ``x``.



.. code-block:: ocaml

  val std : ?mean:float -> float array -> float

``std x`` calculates the standard deviation of ``x``.



.. code-block:: ocaml

  val sem : ?mean:float -> float array -> float

``sem x`` calculates the standard error of ``x``, also referred to as standard
  error of the mean.



.. code-block:: ocaml

  val absdev : ?mean:float -> float array -> float

``absdev x`` calculates the average absolute deviation of ``x``.



.. code-block:: ocaml

  val skew : ?mean:float -> ?sd:float -> float array -> float

``skew x`` calculates the skewness (the third standardized moment) of ``x``.



.. code-block:: ocaml

  val kurtosis : ?mean:float -> ?sd:float -> float array -> float

``kurtosis x`` calculates the Pearson's kurtosis of ``x``, i.e. the fourth
  standardized moment of ``x``.



.. code-block:: ocaml

  val cov : ?m0:float -> ?m1:float -> float array -> float array -> float

``cov x0 x1`` calculates the covariance of ``x0`` and ``x1``, the mean of ``x0``
  and ``x1`` can be specified by ``m0`` and ``m1`` respectively.



.. code-block:: ocaml

  val corrcoef : float array -> float array -> float

``corrcoef x y`` calculates the Pearson correlation of ``x`` and ``y``. Namely,
  ``corrcoef x y = cov(x, y) / (sigma_x * sigma_y)``.



.. code-block:: ocaml

  val percentile : float array -> float -> float

``percentile x p`` returns the ``p`` percentile of the data ``x``. ``p`` is between
  0. and 100. ``x`` does not need to be sorted beforehand.



.. code-block:: ocaml

  val quantile : float array -> float -> float

``quantile x p`` returns the ``p`` quantile of the data ``x``. ``p`` is between
  0. and 1. ``x`` does not need to be sorted beforehand.



.. code-block:: ocaml

  val first_quartile : float array -> float

``first_quartile x`` returns the first quartile of ``x``, i.e. 25 percentiles.



.. code-block:: ocaml

  val third_quartile : float array -> float

``third_quartile x`` returns the third quartile of ``x``, i.e. 75 percentiles.



.. code-block:: ocaml

  val median : float array -> float

``median x`` returns the median of ``x``.



.. code-block:: ocaml

  val min : float array -> float

``min x`` returns the minimum element in ``x``.



.. code-block:: ocaml

  val max : float array -> float

``max x`` returns the maximum element in ``x``.



.. code-block:: ocaml

  val minmax : float array -> float * float

``minmax x`` returns both ``(minimum, maximum)`` elements in ``x``.



.. code-block:: ocaml

  val rank : ?ties_strategy:[ `Average | `Min | `Max ] -> float array -> float array

Computes sample's ranks.

    The ranking order is from the smallest one to the largest. For example
    ``rank [|54.; 74.; 55.; 86.; 56.|]`` returns ``[|1.; 4.; 2.; 5.; 3.|]``.
    Note that the ranking starts with one!

    ``ties_strategy`` controls which ranks are assigned to equal values:

    - ```Average`` the mean of ranks should be assigned to each value.
      {b Default}.
    - ```Min`` the minimum of ranks is assigned to each value.
    - ```Max`` the maximum of ranks is assigned to each value.



.. code-block:: ocaml

  val ecdf : float array -> float array * float array

``ecdf x`` returns ``(x',f)`` which are the empirical cumulative distribution
  function ``f`` of ``x`` at points ``x'``. ``x'`` is just ``x`` sorted in increasing
  order with duplicates removed.



.. code-block:: ocaml

  val normlise_pdf : float array -> float array

{6 MCMC: Markov Chain Monte Carlo}



.. code-block:: ocaml

  val metropolis_hastings : (float array -> float) -> float array -> int -> float array array

TODO: ``metropolis_hastings f p n`` is Metropolis-Hastings MCMC algorithm.
  f is pdf of the p



.. code-block:: ocaml

  val gibbs_sampling : (float array -> int -> float) -> float array -> int -> float array array

TODO: ``gibbs_sampling f p n`` is Gibbs sampler. f is a sampler based on the full
  conditional function of all variables



.. code-block:: ocaml

  val z_test : mu:float -> sigma:float -> ?alpha:float -> ?side:tail -> float array -> hypothesis

``z_test ~mu ~sigma ~alpha ~side x`` returns a test decision for the null
  hypothesis that the data ``x`` comes from a normal distribution with mean ``mu``
  and a standard deviation ``sigma``, using the z-test of ``alpha`` significance
  level. The alternative hypothesis is that the mean is not ``mu``.

  The result ``(h,p,z)`` : ``h`` is ``true`` if the test rejects the null hypothesis at
  the ``alpha`` significance level, and ``false`` otherwise. ``p`` is the p-value and
  ``z`` is the z-score.



.. code-block:: ocaml

  val t_test : mu:float -> ?alpha:float -> ?side:tail -> float array -> hypothesis

``t_test ~mu ~alpha ~side x`` returns a test decision of one-sample t-test
  which is a parametric test of the location parameter when the population
  standard deviation is unknown. ``mu`` is population mean, ``alpha`` is the
  significance level.



.. code-block:: ocaml

  val t_test_paired : ?alpha:float -> ?side:tail -> float array -> float array -> hypothesis

``t_test_paired ~alpha ~side x y`` returns a test decision for the null
  hypothesis that the data in ``x – y`` comes from a normal distribution with
  mean equal to zero and unknown variance, using the paired-sample t-test.



.. code-block:: ocaml

  val t_test_unpaired : ?alpha:float -> ?side:tail -> ?equal_var:bool -> float array -> float array -> hypothesis

``t_test_unpaired ~alpha ~side ~equal_var x y`` returns a test decision for
  the null hypothesis that the data in vectors ``x`` and ``y`` comes from
  independent random samples from normal distributions with equal means and
  equal but unknown variances, using the two-sample t-test. The alternative
  hypothesis is that the data in ``x`` and ``y`` comes from populations with
  unequal means.

  ``equal_var`` indicates whether two samples have the same variance. If the
  two variances are not the same, the test is referred to as Welche's t-test.



.. code-block:: ocaml

  val ks_test : ?alpha:float -> float array -> (float -> float) -> hypothesis

``ks_test ~alpha x f`` returns a test decision for the null
   hypothesis that the data in vector ``x`` comes from independent
   random samples of the distribution with CDF f. The alternative
   hypothesis is that the data in ``x`` comes from a different
   distribution.

   The result ``(h,p,d)`` : ``h`` is ``true`` if the test rejects the null
   hypothesis at the ``alpha`` significance level, and ``false``
   otherwise. ``p`` is the p-value and ``d`` is the Kolmogorov-Smirnov
   test statistic.



.. code-block:: ocaml

  val ks2_test : ?alpha:float -> float array -> float array -> hypothesis

``ks2_test ~alpha x y`` returns a test decision for the null
    hypothesis that the data in vectors ``x`` and ``y`` come from
    independent random samples of the same distribution. The
    alternative hypothesis is that the data in ``x`` and ``y`` are sampled
    from different distributions.

    The result ``(h,p,d)``: ``h`` is ``true`` if the test rejects the null
    hypothesis at the ``alpha`` significance level, and ``false``
    otherwise. ``p`` is the p-value and ``d`` is the Kolmogorov-Smirnov
    test statistic.



.. code-block:: ocaml

  val var_test : ?alpha:float -> ?side:tail -> variance:float -> float array -> hypothesis

``var_test ~alpha ~side ~variance x`` returns a test decision for the null
  hypothesis that the data in ``x`` comes from a normal distribution with input
  ``variance``, using the chi-square variance test. The alternative hypothesis
  is that ``x`` comes from a normal distribution with a different variance.



.. code-block:: ocaml

  val jb_test : ?alpha:float -> float array -> hypothesis

``jb_test ~alpha x`` returns a test decision for the null hypothesis that the
  data ``x`` comes from a normal distribution with an unknown mean and variance,
  using the Jarque-Bera test.



.. code-block:: ocaml

  val fisher_test : ?alpha:float -> ?side:tail -> int -> int -> int -> int -> hypothesis

``fisher_test ~alpha ~side a b c d`` fisher's exact test for contingency table
    | ``a``, ``b`` |
    | ``c``, ``d`` |

    The result ``(h,p,z)`` : ``h`` is ``true`` if the test rejects the null hypothesis at
    the ``alpha`` significance level, and ``false`` otherwise. ``p`` is the p-value and
    ``z`` is prior odds ratio.



.. code-block:: ocaml

  val runs_test : ?alpha:float -> ?side:tail -> ?v:float -> float array -> hypothesis

``runs_test ~alpha ~v x`` returns a test decision for the null hypothesis that
  the data ``x`` comes in random order, against the alternative that they do not,
  by runnign Wald–Wolfowitz runs test. The test is based on the number of runs
  of consecutive values above or below the mean of ``x``. ``~v`` is the reference
  value, the default value is the median of ``x``.



.. code-block:: ocaml

  val mannwhitneyu : ?alpha:float -> ?side:tail -> float array -> float array -> hypothesis

``mannwhitneyu ~alpha ~side x y`` Computes the Mann-Whitney rank test on
    samples x and y. If length of each sample less than 10 and no ties, then
    using exact test (see paper Ying Kuen Cheung and Jerome H. Klotz (1997)
    The Mann Whitney Wilcoxon distribution using linked list
    Statistica Sinica 7 805-813), else usning asymptotic normal distribution.



.. code-block:: ocaml

  val wilcoxon : ?alpha:float -> ?side:tail -> float array -> float array -> hypothesis

{6 Discrete random variables}



.. code-block:: ocaml

  val hypergeometric_logpdf : int -> good:int -> bad:int -> sample:int -> float

{6 Continuous random variables}



