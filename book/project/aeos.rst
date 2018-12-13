Automated Empirical Optimization of Parameters in Owl
====================================================

by Jianxin Zhao



Introduction
----------------------------------------------------

The paradigm of Automated Empirical Optimisation of Software, or AEOS, is widely used in numerical software such as ATLAS.
Currently many parameter tuning concerns high-level application, but low-level tuning is also crucial for performance.
For example, for linear algebra, highly optimised code runs magnitude faster than a naively coded routine.
However, optimised code are usually platform and hardware specific. What is the optimised routine usually performs bad on the other.

As an initial endeavour to apply such paradigm in Owl, one good target is the parameters of OpenMP.

With the growing development of multi-core processors, plenty of current generic computers contains shared memory multiprocessors.
OpenMP is an application programming interface that supports multi-platform shared memory multiprocessing programming in C or Fortran, supported by a plethora of hardware of software platforms.
By utilising OpenMP, calculations in Owl are greatly boosted.
For example, in Owl, we apply the simple :math:`sin` function on a N-Dimensional Array (ndarray) of different sizes. A x3 performance boost can be observed.

However, the performance improvement does not come totally free.
Usual overhead of using OpenMP include time spent on scheduling chunks of work to each thread, managing locks on critical sections, and startup time that creates threads, etc.
Therefore, when the target ndarray is small enough, or the calculation is simple enough, these overheads might overtake the benefit of threading.

Towards this end, we implement an :math:`aeos` module in Owl to tackle this issue.


Implementation
----------------------------------------------------

Our tuning target is basic mathematics operations such as :math:`sin`, :math:`exp`, :math:`log`, etc.
The key idea is very simple. We implement two versions of each operation, one using OpenMP and the other not. We then measure their executing time for various sizes of input. After removing outliers, a linear regression is performed to find a suitable input size threshold to decide if using OpenMP or not.

The design of this module focuses on keeping tuning simple as well as flexible.
First, the tuning module should be made independent of Owl. Therefore, all the implementation: math function, regression, utilities etc. are implemented separately to ensure that future changes of Owl does not affect the AEOS module.
Second, each operation is implemented as a single OCaml module, so that support for new operations can be easily added in.
Also, in each module, arbitrary tuning procedure can be plugged in as long as the simple interface is satisfied.


Evaluation
----------------------------------------------------

To evaluate the performance of tuned OpenMP thresholds parameters, we propose a metric to compare two thresholds.
It is calculated in such way: we generate a series of ndarray, whose sizes grow by certain steps until they reach a given maximum number. For each size that falls between these two thresholds, we calculate the performance improvement ratio of the openmp version function over the non-openmp version. The ratios are added up, and then amortised by the total number of generated ndarrays.


.. figure:: ../figure/owl_aeos_perf_mac.png
   :width: 100%
   :align: center
   :alt: aeos mac
