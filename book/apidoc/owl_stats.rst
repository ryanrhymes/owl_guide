Stats
===============================================================================

This document is auto-generated for Owl's APIs.
#224 entries have been extracted.
timestamp: 2018-02-09 18:51:46

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/owl/stats/owl_stats.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/owl/stats/owl_stats.ml>`_



Randomisation functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val shuffle : 'a array -> 'a array

``shuffle x`` return a new array of the shuffled ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L14>`__



.. code-block:: ocaml

  val choose : 'a array -> int -> 'a array

``choose x n`` draw ``n`` samples from ``x`` without replecement.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L19>`__



.. code-block:: ocaml

  val sample : 'a array -> int -> 'a array

``sample x n`` draw ``n`` samples from ``x`` with replacement.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L25>`__



Basic statistical functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sum : float array -> float

``sum x`` returns the summation of the elements in ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L33>`__



.. code-block:: ocaml

  val mean : float array -> float

``mean x`` returns the mean of the elements in ``x``.

.. code-block:: ocaml

  val var : ?mean:float -> float array -> float

``var x`` returns the variance of elements in ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L42>`__



.. code-block:: ocaml

  val std : ?mean:float -> float array -> float

``std x`` calculates the standard deviation of ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L44>`__



.. code-block:: ocaml

  val sem : ?mean:float -> float array -> float

``sem x`` calculates the standard error of ``x``, also referred to as standard
error of the mean.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L46>`__



.. code-block:: ocaml

  val absdev : ?mean:float -> float array -> float

``absdev x`` calculates the average absolute deviation of ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L51>`__



.. code-block:: ocaml

  val skew : ?mean:float -> ?sd:float -> float array -> float

``skew x`` calculates the skewness (the third standardized moment) of ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L53>`__



.. code-block:: ocaml

  val kurtosis : ?mean:float -> ?sd:float -> float array -> float

``kurtosis x`` calculates the Pearson's kurtosis of ``x``, i.e. the fourth
standardized moment of ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L61>`__



.. code-block:: ocaml

  val central_moment : int -> float array -> float

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L70>`__



.. code-block:: ocaml

  val cov : ?m0:float -> ?m1:float -> float array -> float array -> float

``cov x0 x1`` calculates the covariance of ``x0`` and ``x1``, the mean of ``x0``
and ``x1`` can be specified by ``m0`` and ``m1`` respectively.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L136>`__



.. code-block:: ocaml

  val corrcoef : float array -> float array -> float

``corrcoef x y`` calculates the Pearson correlation of ``x`` and ``y``. Namely,
``corrcoef x y = cov(x, y) / (sigma_x * sigma_y)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L77>`__



.. code-block:: ocaml

  val kendall_tau : float array -> float array -> float

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L188>`__



.. code-block:: ocaml

  val spearman_rho : float array -> float array -> float

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L194>`__



.. code-block:: ocaml

  val autocorrelation : ?lag:int -> float array -> float

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L123>`__



.. code-block:: ocaml

  val percentile : float array -> float -> float

``percentile x p`` returns the ``p`` percentile of the data ``x``. ``p`` is between
0. and 100. ``x`` does not need to be sorted beforehand.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L273>`__



.. code-block:: ocaml

  val quantile : float array -> float -> float

``quantile x p`` returns the ``p`` quantile of the data ``x``. ``p`` is between
0. and 1. ``x`` does not need to be sorted beforehand.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L269>`__



.. code-block:: ocaml

  val first_quartile : float array -> float

``first_quartile x`` returns the first quartile of ``x``, i.e. 25 percentiles.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L277>`__



.. code-block:: ocaml

  val third_quartile : float array -> float

``third_quartile x`` returns the third quartile of ``x``, i.e. 75 percentiles.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L279>`__



.. code-block:: ocaml

  val median : float array -> float

``median x`` returns the median of ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L275>`__



.. code-block:: ocaml

  val min : float array -> float

``min x`` returns the minimum element in ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L223>`__



.. code-block:: ocaml

  val max : float array -> float

``max x`` returns the maximum element in ``x``.

.. code-block:: ocaml

  val minmax : float array -> float * float

``minmax x`` returns both ``(minimum, maximum)`` elements in ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L227>`__



.. code-block:: ocaml

  val min_i : float array -> int

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L219>`__



.. code-block:: ocaml

  val max_i : float array -> int

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L221>`__



.. code-block:: ocaml

  val minmax_i : float array -> int * int

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L201>`__



.. code-block:: ocaml

  val sort : ?inc:bool -> float array -> float array

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L82>`__



.. code-block:: ocaml

  val argsort : ?inc:bool -> float array -> int array

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L91>`__



.. code-block:: ocaml

  val rank : ?ties_strategy:[ `Average | `Min | `Max ] -> float array -> float array

Computes sample's ranks.

The ranking order is from the smallest one to the largest. For example
``rank [|54.; 74.; 55.; 86.; 56.|]`` returns ``[|1.; 4.; 2.; 5.; 3.|]``.
Note that the ranking starts with one!

``ties_strategy`` controls which ranks are assigned to equal values:

- ``Average`` the mean of ranks should be assigned to each value.
  {b Default}.
- ``Min`` the minimum of ranks is assigned to each value.
- ``Max`` the maximum of ranks is assigned to each value.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L104>`__



.. code-block:: ocaml

  val histogram : float array -> int -> int array

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L236>`__



.. code-block:: ocaml

  val ecdf : float array -> float array * float array

``ecdf x`` returns ``(x',f)`` which are the empirical cumulative distribution
function ``f`` of ``x`` at points ``x'``. ``x'`` is just ``x`` sorted in increasing
order with duplicates removed.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L249>`__



.. code-block:: ocaml

  val z_score : mu:float -> sigma:float -> float array -> float array

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L281>`__



.. code-block:: ocaml

  val t_score : float array -> float array

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L283>`__



.. code-block:: ocaml

  val normlise_pdf : float array -> float array

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L288>`__



MCMC: Markov Chain Monte Carlo
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val metropolis_hastings : (float array -> float) -> float array -> int -> float array array

TODO: ``metropolis_hastings f p n`` is Metropolis-Hastings MCMC algorithm.
f is pdf of the p

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L772>`__



.. code-block:: ocaml

  val gibbs_sampling : (float array -> int -> float) -> float array -> int -> float array array

TODO: ``gibbs_sampling f p n`` is Gibbs sampler. f is a sampler based on the full
conditional function of all variables

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L788>`__



Hypothesis tests
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type hypothesis = {
    reject  : bool;    (* reject null hypothesis if ``true`` *)
    p_value : float;   (* p-value of the hypothesis test *)
    score   : float;   (* score has different meaning in different tests *)
    }
    

Record type contains the result of a hypothesis test.

.. code-block:: ocaml

  type tail = BothSide | RightSide | LeftSide
    

Types of alternative hypothesis tests: one-side, left-side, or right-side.

.. code-block:: ocaml

  val z_test : mu:float -> sigma:float -> ?alpha:float -> ?side:tail -> float array -> hypothesis

``z_test ~mu ~sigma ~alpha ~side x`` returns a test decision for the null
hypothesis that the data ``x`` comes from a normal distribution with mean ``mu``
and a standard deviation ``sigma``, using the z-test of ``alpha`` significance
level. The alternative hypothesis is that the mean is not ``mu``.

The result ``(h,p,z)`` : ``h`` is ``true`` if the test rejects the null hypothesis at
the ``alpha`` significance level, and ``false`` otherwise. ``p`` is the p-value and
``z`` is the z-score.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L318>`__



.. code-block:: ocaml

  val t_test : mu:float -> ?alpha:float -> ?side:tail -> float array -> hypothesis

``t_test ~mu ~alpha ~side x`` returns a test decision of one-sample t-test
which is a parametric test of the location parameter when the population
standard deviation is unknown. ``mu`` is population mean, ``alpha`` is the
significance level.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L333>`__



.. code-block:: ocaml

  val t_test_paired : ?alpha:float -> ?side:tail -> float array -> float array -> hypothesis

``t_test_paired ~alpha ~side x y`` returns a test decision for the null
hypothesis that the data in ``x – y`` comes from a normal distribution with
mean equal to zero and unknown variance, using the paired-sample t-test.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L349>`__



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

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L413>`__



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

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L475>`__



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

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L525>`__



.. code-block:: ocaml

  val var_test : ?alpha:float -> ?side:tail -> variance:float -> float array -> hypothesis

``var_test ~alpha ~side ~variance x`` returns a test decision for the null
hypothesis that the data in ``x`` comes from a normal distribution with input
``variance``, using the chi-square variance test. The alternative hypothesis
is that ``x`` comes from a normal distribution with a different variance.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L564>`__



.. code-block:: ocaml

  val jb_test : ?alpha:float -> float array -> hypothesis

``jb_test ~alpha x`` returns a test decision for the null hypothesis that the
data ``x`` comes from a normal distribution with an unknown mean and variance,
using the Jarque-Bera test.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L553>`__



.. code-block:: ocaml

  val fisher_test : ?alpha:float -> ?side:tail -> int -> int -> int -> int -> hypothesis

``fisher_test ~alpha ~side a b c d`` fisher's exact test for contingency table
| ``a``, ``b`` |
| ``c``, ``d`` |

The result ``(h,p,z)`` : ``h`` is ``true`` if the test rejects the null hypothesis at
the ``alpha`` significance level, and ``false`` otherwise. ``p`` is the p-value and
``z`` is prior odds ratio.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L579>`__



.. code-block:: ocaml

  val runs_test : ?alpha:float -> ?side:tail -> ?v:float -> float array -> hypothesis

``runs_test ~alpha ~v x`` returns a test decision for the null hypothesis that
the data ``x`` comes in random order, against the alternative that they do not,
by runnign Wald–Wolfowitz runs test. The test is based on the number of runs
of consecutive values above or below the mean of ``x``. ``~v`` is the reference
value, the default value is the median of ``x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L732>`__



.. code-block:: ocaml

  val mannwhitneyu : ?alpha:float -> ?side:tail -> float array -> float array -> hypothesis

``mannwhitneyu ~alpha ~side x y`` Computes the Mann-Whitney rank test on
samples x and y. If length of each sample less than 10 and no ties, then
using exact test (see paper Ying Kuen Cheung and Jerome H. Klotz (1997)
The Mann Whitney Wilcoxon distribution using linked list
Statistica Sinica 7 805-813), else usning asymptotic normal distribution.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L623>`__



.. code-block:: ocaml

  val wilcoxon : ?alpha:float -> ?side:tail -> float array -> float array -> hypothesis

TODO

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/owl/stats/owl_stats.ml#L675>`__



.. code-block:: ocaml

  exception EXN_EMPTY_ARRAY
    

Exception for empty array

Discrete random variables
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val uniform_int_rvs : a:int -> b:int -> int

TODO

.. code-block:: ocaml

  val hypergeometric_rvs : good:int -> bad:int -> sample:int -> int

TODO

.. code-block:: ocaml

  val hypergeometric_pdf : int -> good:int -> bad:int -> sample:int -> float

TODO

.. code-block:: ocaml

  val hypergeometric_logpdf : int -> good:int -> bad:int -> sample:int -> float

TODO

Continuous random variables
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val std_uniform_rvs : unit -> float

TODO

.. code-block:: ocaml

  val uniform_rvs : a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val uniform_pdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val uniform_logpdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val uniform_cdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val uniform_logcdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val uniform_ppf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val uniform_sf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val uniform_logsf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val uniform_isf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val exponential_rvs : lambda:float -> float

TODO

.. code-block:: ocaml

  val exponential_pdf : float -> lambda:float -> float

TODO

.. code-block:: ocaml

  val exponential_logpdf : float -> lambda:float -> float

TODO

.. code-block:: ocaml

  val exponential_cdf : float -> lambda:float -> float

TODO

.. code-block:: ocaml

  val exponential_logcdf : float -> lambda:float -> float

TODO

.. code-block:: ocaml

  val exponential_ppf : float -> lambda:float -> float

TODO

.. code-block:: ocaml

  val exponential_sf : float -> lambda:float -> float

TODO

.. code-block:: ocaml

  val exponential_logsf : float -> lambda:float -> float

TODO

.. code-block:: ocaml

  val exponential_isf : float -> lambda:float -> float

TODO

.. code-block:: ocaml

  val gaussian_rvs : mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val gaussian_pdf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val gaussian_logpdf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val gaussian_cdf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val gaussian_logcdf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val gaussian_ppf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val gaussian_sf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val gaussian_logsf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val gaussian_isf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val gamma_rvs : shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val gamma_pdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val gamma_logpdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val gamma_cdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val gamma_logcdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val gamma_ppf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val gamma_sf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val gamma_logsf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val gamma_isf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val beta_rvs : a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val beta_pdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val beta_logpdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val beta_cdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val beta_logcdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val beta_ppf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val beta_sf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val beta_logsf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val beta_isf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val chi2_rvs : df:float -> float

TODO

.. code-block:: ocaml

  val chi2_pdf : float -> df:float -> float

TODO

.. code-block:: ocaml

  val chi2_logpdf : float -> df:float -> float

TODO

.. code-block:: ocaml

  val chi2_cdf : float -> df:float -> float

TODO

.. code-block:: ocaml

  val chi2_logcdf : float -> df:float -> float

TODO

.. code-block:: ocaml

  val chi2_ppf : float -> df:float -> float

TODO

.. code-block:: ocaml

  val chi2_sf : float -> df:float -> float

TODO

.. code-block:: ocaml

  val chi2_logsf : float -> df:float -> float

TODO

.. code-block:: ocaml

  val chi2_isf : float -> df:float -> float

TODO

.. code-block:: ocaml

  val f_rvs : dfnum:float -> dfden:float -> float

TODO

.. code-block:: ocaml

  val f_pdf : float -> dfnum:float -> dfden:float -> float

TODO

.. code-block:: ocaml

  val f_logpdf : float -> dfnum:float -> dfden:float -> float

TODO

.. code-block:: ocaml

  val f_cdf : float -> dfnum:float -> dfden:float -> float

TODO

.. code-block:: ocaml

  val f_logcdf : float -> dfnum:float -> dfden:float -> float

TODO

.. code-block:: ocaml

  val f_ppf : float -> dfnum:float -> dfden:float -> float

TODO

.. code-block:: ocaml

  val f_sf : float -> dfnum:float -> dfden:float -> float

TODO

.. code-block:: ocaml

  val f_logsf : float -> dfnum:float -> dfden:float -> float

TODO

.. code-block:: ocaml

  val f_isf : float -> dfnum:float -> dfden:float -> float

TODO

.. code-block:: ocaml

  val cauchy_rvs : loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val cauchy_pdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val cauchy_logpdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val cauchy_cdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val cauchy_logcdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val cauchy_ppf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val cauchy_sf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val cauchy_logsf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val cauchy_isf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val t_rvs : df:float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val t_pdf : float -> df:float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val t_logpdf : float -> df:float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val t_cdf : float -> df:float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val t_logcdf : float -> df:float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val t_ppf : float -> df:float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val t_sf : float -> df:float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val t_logsf : float -> df:float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val t_isf : float -> df:float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val vonmises_rvs : mu:float -> kappa:float -> float

TODO

.. code-block:: ocaml

  val vonmises_pdf : float -> mu:float -> kappa:float -> float

TODO

.. code-block:: ocaml

  val vonmises_logpdf : float -> mu:float -> kappa:float -> float

TODO

.. code-block:: ocaml

  val vonmises_cdf : float -> mu:float -> kappa:float -> float

TODO

.. code-block:: ocaml

  val vonmises_logcdf : float -> mu:float -> kappa:float -> float

TODO

.. code-block:: ocaml

  val vonmises_sf : float -> mu:float -> kappa:float -> float

TODO

.. code-block:: ocaml

  val vonmises_logsf : float -> mu:float -> kappa:float -> float

TODO

.. code-block:: ocaml

  val lomax_rvs : shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val lomax_pdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val lomax_logpdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val lomax_cdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val lomax_logcdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val lomax_ppf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val lomax_sf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val lomax_logsf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val lomax_isf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val weibull_rvs : shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val weibull_pdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val weibull_logpdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val weibull_cdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val weibull_logcdf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val weibull_ppf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val weibull_sf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val weibull_logsf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val weibull_isf : float -> shape:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val laplace_rvs : loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val laplace_pdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val laplace_logpdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val laplace_cdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val laplace_logcdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val laplace_ppf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val laplace_sf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val laplace_logsf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val laplace_isf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val gumbel1_rvs : a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel1_pdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel1_logpdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel1_cdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel1_logcdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel1_ppf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel1_sf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel1_logsf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel1_isf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel2_rvs : a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel2_pdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel2_logpdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel2_cdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel2_logcdf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel2_ppf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel2_sf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel2_logsf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val gumbel2_isf : float -> a:float -> b:float -> float

TODO

.. code-block:: ocaml

  val logistic_rvs : loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val logistic_pdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val logistic_logpdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val logistic_cdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val logistic_logcdf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val logistic_ppf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val logistic_sf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val logistic_logsf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val logistic_isf : float -> loc:float -> scale:float -> float

TODO

.. code-block:: ocaml

  val lognormal_rvs : mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val lognormal_pdf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val lognormal_logpdf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val lognormal_cdf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val lognormal_logcdf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val lognormal_ppf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val lognormal_sf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val lognormal_logsf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val lognormal_isf : float -> mu:float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val rayleigh_rvs : sigma:float -> float

TODO

.. code-block:: ocaml

  val rayleigh_pdf : float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val rayleigh_logpdf : float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val rayleigh_cdf : float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val rayleigh_logcdf : float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val rayleigh_ppf : float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val rayleigh_sf : float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val rayleigh_logsf : float -> sigma:float -> float

TODO

.. code-block:: ocaml

  val rayleigh_isf : float -> sigma:float -> float

TODO

