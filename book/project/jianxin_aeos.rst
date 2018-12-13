Automated Empirical Optimization of Parameters in Owl
====================================================

by Jianxin Zhao


Introduction
----------------------------------------------------

Recent research on *parameter tuning* mostly focus on hyper-parameter tuning, such as optimising the best parameters for stochastic gradient in machine learning applications.
However, tuning code and parameters in low-level numerical libraries is of the same importance.
`ATLAS <http://math-atlas.sourceforge.net/>`_ and the recent `Intel Math Kernel Library <https://software.intel.com/mkl>`_ are both software libraries of optimised math routines for science and engineering computation.
They are widely used in many popular high-level platforms such as Matlab and  TensorFlow.
The reason these libraries can provide optimal performance is that they have adopted the paradigm of Automated Empirical Optimisation of Software, or AEOS.
That is, a library provide many ways of doing the required operations and choose the best method to use on a given architecture.
For example, for linear algebra routines, highly optimised code runs magnitude faster than a naively coded routine.
Naturally, optimised code are usually platform- and hardware-specific. What is the optimised routine usually performs bad on the other.

Though `Owl <http://ocaml.xyz/>`_  currently does not plan to revolutionise the performance of these libraries it depends on, as an initial endeavour to apply such paradigm in Owl, one good target is the parameters of *OpenMP*.

With the growing development of multi-core processors, plenty of current generic computers contains shared memory multiprocessors.
OpenMP is an application programming interface that supports multi-platform shared memory multiprocessing programming in C or Fortran, supported by a plethora of hardware and software platforms.
Owl has already utilized OpenMP on many key math operations to boost their performance by threading calculation.
For example, when we apply the :math:`sin` function on a N-Dimensional Array (ndarray) in Owl, on my MacBook the OpenMP version only takes about a third of that of the non-OpenMP version in executing time.

However, as is often the case, performance improvement does not come for free.
Overhead of using OpenMP comes from time spent on scheduling chunks of work to each thread, managing locks on critical sections, and startup time that creates threads, etc.
Therefore, when the target ndarray is small enough, or the calculation is simple enough, these overheads might overtake the benefit of threading. A threshold is thus required to decide if use OpenMP or not. The previous practice of using a fixed value for all operations leads to performance deterioration.


Implementation
----------------------------------------------------

Towards this end, we implement an initial :math:`aeos` module in Owl to tackle this issue.
Our tuning target is basic mathematics operations such as :math:`sin`, :math:`exp`, :math:`log`, etc.
The key idea is very simple. We implement two versions of each operation, one using OpenMP and the other not. We then measure their executing time for various sizes of input. After removing outliers, a linear regression is performed to find a suitable input size threshold to decide if using OpenMP or not.

The design of this module focuses on keeping tuning simple as well as flexible.
First, the tuning phase should be executed before compiling Owl.
Therefore, the AEOS module should be made independent of Owl, and all the necessary implementation, including math function, regression, utilities etc. are implemented separately to ensure that future changes of Owl does not affect the AEOS module.
Second, each operation is implemented as a single OCaml module, so that support for new operations can be easily added in.
Also, we expect that tuning does not have to be about OpenMP parameters, or that different regression method will be used in the future. In each module, arbitrary tuning procedure can be plugged in as long as the simple interface is satisfied.

The AEOS module is implemented in such way that cause very limited change to the main Owl library. The code can be viewed in this `pull request <https://github.com/owlbarn/owl/pull/332>`_, and is now merged into the main branch of Owl. You only need to switch the *ENABLE_OPENMP* flag from :math:`0` to :math:`1` in the `dune file <https://github.com/owlbarn/owl/blob/master/src/owl/dune>`_.


Evaluation
----------------------------------------------------

To evaluate the performance of tuned OpenMP thresholds parameters, we need a metric to compare two thresholds.
Note that, given two thresholds, any input ndarray of size that smaller than the smaller threshold or larger than the larger threshold is not affected.
Therefore, one metric to measure the difference of two thresholds can be calculated in such way: we generate a series of ndarray, whose sizes grow by certain steps until they reach a given maximum number; for each size that falls between these two thresholds, we calculate the performance improvement ratio of the OpenMP version function over the non-OpenMP version. The ratios are added up, and then amortised by the total number of generated ndarrays.
Hereafter we use this averaged ratio as performance metric.

We then compare the generated parameter with a series of random thresholds. Here is the evaluation of a selective operations on a MacBook with a 1.1Ghz Intel Core m3 CPU. It can be observed that in general more than 20\% average performance improvement can be observed.

.. figure:: ../figure/owl_aeos_perf_mac.png
   :width: 80%
   :align: center
   :alt: aeos mac


What’s next?
----------------------------------------------------

As said before, this is an initial effort to apply the AEOS paradigm in Owl. Though the result looks promising, there still exist a large room for improvement. For example, more operation that requires tuning more than just OpenMP parameters could be included. Different regression method could also be applied. In evaluation, besides performance, stability of the generated parameters might also need to be considered to give a full picture in evaluation.
