Base.Stats
===============================================================================

This document is auto-generated for Owl's APIs.
#34 entries have been extracted.
timestamp: 2018-03-30 14:31:16

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/stats/owl_base_stats.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/stats/owl_base_stats.ml>`_



Randomisation functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val shuffle : 'a array -> 'a array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L32>`__



.. code-block:: ocaml

  val choose : 'a array -> int -> 'a array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L45>`__



.. code-block:: ocaml

  val sample : 'a array -> int -> 'a array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L65>`__



Basic statistical functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sum : float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L79>`__



.. code-block:: ocaml

  val mean : float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L82>`__



.. code-block:: ocaml

  val var : ?mean:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L93>`__



.. code-block:: ocaml

  val std : ?mean:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L107>`__



.. code-block:: ocaml

  val sem : ?mean:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L110>`__



.. code-block:: ocaml

  val absdev : ?mean:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L116>`__



.. code-block:: ocaml

  val skew : ?mean:float -> ?sd:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L129>`__



.. code-block:: ocaml

  val kurtosis : ?mean:float -> ?sd:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L146>`__



.. code-block:: ocaml

  val central_moment : int -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L164>`__



.. code-block:: ocaml

  val cov : ?m0:float -> ?m1:float -> float array -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L172>`__



.. code-block:: ocaml

  val concordant : 'a array -> 'b array -> int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L190>`__



.. code-block:: ocaml

  val discordant : 'a array -> 'b array -> int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L203>`__



.. code-block:: ocaml

  val kendall_tau : float array -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L216>`__



.. code-block:: ocaml

  val min : float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L294>`__



.. code-block:: ocaml

  val max : float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L297>`__



.. code-block:: ocaml

  val minmax : float array -> float * float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L300>`__



.. code-block:: ocaml

  val min_i : float array -> int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L288>`__



.. code-block:: ocaml

  val max_i : float array -> int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L291>`__



.. code-block:: ocaml

  val minmax_i : float array -> int * int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L269>`__



.. code-block:: ocaml

  val sort : ?inc:bool -> float array -> float array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L223>`__



.. code-block:: ocaml

  val argsort : ?inc:bool -> float array -> int array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L234>`__



.. code-block:: ocaml

  val rank : ?ties_strategy:[ `Average | `Min | `Max ] -> float array -> float array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L249>`__



.. code-block:: ocaml

  val histogram : float array -> int -> int array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L310>`__



Random variables
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val uniform_rvs : a:float -> b:float -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L15>`__



.. code-block:: ocaml

  val bernoulli_rvs : p:float -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L18>`__



.. code-block:: ocaml

  val gaussian_rvs : mu:float -> sigma:float -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L21>`__



.. code-block:: ocaml

  val exponential_rvs : lambda:float -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L24>`__



.. code-block:: ocaml

  val cauchy_rvs : loc:float -> scale:float -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L27>`__



