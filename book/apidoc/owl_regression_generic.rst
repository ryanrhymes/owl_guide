Regression.Generic Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#12 entries have been extracted.
timestamp: 2018-03-07 22:26:27

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/optimise/owl_regression_generic.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/optimise/owl_regression_generic.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type arr = A.arr
    

Type of ndarray values.

.. code-block:: ocaml

  type elt = A.elt
    

Type of scalar values.

Regression models
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ols : ?i:bool -> arr -> arr -> arr array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/optimise/owl_regression_generic.ml#L40>`__



.. code-block:: ocaml

  val ridge : ?i:bool -> ?alpha:float -> arr -> arr -> arr array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/optimise/owl_regression_generic.ml#L49>`__



.. code-block:: ocaml

  val lasso : ?i:bool -> ?alpha:float -> arr -> arr -> arr array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/optimise/owl_regression_generic.ml#L58>`__



.. code-block:: ocaml

  val elastic_net : ?i:bool -> ?alpha:float -> ?l1_ratio:float -> arr -> arr -> arr array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/optimise/owl_regression_generic.ml#L67>`__



.. code-block:: ocaml

  val svm : ?i:bool -> ?a:float -> arr -> arr -> arr array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/optimise/owl_regression_generic.ml#L78>`__



.. code-block:: ocaml

  val logistic : ?i:bool -> arr -> arr -> arr array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/optimise/owl_regression_generic.ml#L87>`__



.. code-block:: ocaml

  val exponential : ?i:bool -> arr -> arr -> elt * elt * elt

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/optimise/owl_regression_generic.ml#L96>`__



.. code-block:: ocaml

  val poly : arr -> arr -> int -> arr

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/optimise/owl_regression_generic.ml#L119>`__



