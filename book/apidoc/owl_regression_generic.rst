Regression.Generic Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#12 entries have been extracted.
timestamp:1517843405

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



.. code-block:: ocaml

  val ridge : ?i:bool -> ?alpha:float -> arr -> arr -> arr array

TODO



.. code-block:: ocaml

  val lasso : ?i:bool -> ?alpha:float -> arr -> arr -> arr array

TODO



.. code-block:: ocaml

  val elastic_net : ?i:bool -> ?alpha:float -> ?l1_ratio:float -> arr -> arr -> arr array

TODO



.. code-block:: ocaml

  val svm : ?i:bool -> ?a:float -> arr -> arr -> arr array

TODO



.. code-block:: ocaml

  val logistic : ?i:bool -> arr -> arr -> arr array

TODO



.. code-block:: ocaml

  val exponential : ?i:bool -> arr -> arr -> elt * elt * elt

TODO



.. code-block:: ocaml

  val poly : arr -> arr -> int -> arr

TODO



