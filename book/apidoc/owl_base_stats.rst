Base.Stats
===============================================================================

This document is auto-generated for Owl's APIs.
#4 entries have been extracted.
timestamp: 2018-02-28 16:50:21

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/stats/owl_base_stats.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/stats/owl_base_stats.ml>`_



Random variables
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val uniform : float -> float -> float

``uniform a b`` returns a continuous RV uniformly distributed within [``a``, ``b``].

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L5>`__



.. code-block:: ocaml

  val bernoulli : float -> float

``bernoulli p`` returns a continuous RV equal to ``1.`` with probability ``p``, ``0.`` otherwise

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L8>`__



.. code-block:: ocaml

  val gaussian : float -> float -> float

``gaussian mu sigma`` returns a continous RV normally distributed with mean ``mu`` and stddev ``sigma``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L21>`__



