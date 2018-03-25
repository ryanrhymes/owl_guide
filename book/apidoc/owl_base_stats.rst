Base.Stats
===============================================================================

This document is auto-generated for Owl's APIs.
#32 entries have been extracted.
timestamp: 2018-03-25 18:44:35

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/stats/owl_base_stats.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/stats/owl_base_stats.ml>`_



Randomisation functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val shuffle : 'a array -> 'a array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L26>`__



.. code-block:: ocaml

  val choose : 'a array -> int -> 'a array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L39>`__



.. code-block:: ocaml

  val sample : 'a array -> int -> 'a array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L59>`__



Basic statistical functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sum : float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L73>`__



.. code-block:: ocaml

  val mean : float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L76>`__



.. code-block:: ocaml

  val var : ?mean:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L87>`__



.. code-block:: ocaml

  val std : ?mean:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L101>`__



.. code-block:: ocaml

  val sem : ?mean:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L104>`__



.. code-block:: ocaml

  val absdev : ?mean:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L110>`__



.. code-block:: ocaml

  val skew : ?mean:float -> ?sd:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L123>`__



.. code-block:: ocaml

  val kurtosis : ?mean:float -> ?sd:float -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L140>`__



.. code-block:: ocaml

  val central_moment : int -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L158>`__



.. code-block:: ocaml

  val cov : ?m0:float -> ?m1:float -> float array -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L166>`__



.. code-block:: ocaml

  val concordant : 'a array -> 'b array -> int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L184>`__



.. code-block:: ocaml

  val discordant : 'a array -> 'b array -> int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L197>`__



.. code-block:: ocaml

  val kendall_tau : float array -> float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L210>`__



.. code-block:: ocaml

  val min : float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L288>`__



.. code-block:: ocaml

  val max : float array -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L291>`__



.. code-block:: ocaml

  val minmax : float array -> float * float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L294>`__



.. code-block:: ocaml

  val min_i : float array -> int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L282>`__



.. code-block:: ocaml

  val max_i : float array -> int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L285>`__



.. code-block:: ocaml

  val minmax_i : float array -> int * int

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L263>`__



.. code-block:: ocaml

  val sort : ?inc:bool -> float array -> float array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L217>`__



.. code-block:: ocaml

  val argsort : ?inc:bool -> float array -> int array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L228>`__



.. code-block:: ocaml

  val rank : ?ties_strategy:[ `Average | `Min | `Max ] -> float array -> float array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L243>`__



.. code-block:: ocaml

  val histogram : float array -> int -> int array

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L304>`__



Random variables
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val uniform_rvs : float -> float -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L15>`__



.. code-block:: ocaml

  val bernoulli_rvs : float -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L18>`__



.. code-block:: ocaml

  val gaussian_rvs : float -> float -> float

Refer to :doc:`owl_stats`.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/stats/owl_base_stats.ml#L21>`__



