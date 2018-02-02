Numdiff.Generic
===============================================================================

This document is auto-generated for Owl's APIs.
#10 functions have been extracted.
timestamp:1517614153

.. code-block:: ocaml

  val diff : (elt -> elt) -> elt -> elt

derivative of [f : scalar -> scalar].

.. code-block:: ocaml

  val diff' : (elt -> elt) -> elt -> elt * elt

derivative of [f : scalar -> scalar], return both [f x] and [f' x].

.. code-block:: ocaml

  val diff2 : (elt -> elt) -> elt -> elt

second order derivative of [f : float -> float].

.. code-block:: ocaml

  val diff2' : (elt -> elt) -> elt -> elt * elt

second order derivative of [f : float -> float], return [f x] and [f' x].

.. code-block:: ocaml

  val grad : (arr -> elt) -> arr -> arr

gradient of [f : vector -> scalar].

.. code-block:: ocaml

  val grad' : (arr -> elt) -> arr -> arr * arr

gradient of [f : vector -> scalar], return [f x] and [g x].

.. code-block:: ocaml

  val jacobian : (arr -> arr) -> arr -> arr

jacobian of [f : vector -> vector].

.. code-block:: ocaml

  val jacobian' : (arr -> arr) -> arr -> arr * arr

jacobian of [f : vector -> vector], return [f x] and [j x].

.. code-block:: ocaml

  val jacobianT : (arr -> arr) -> arr -> arr

transposed jacobian of [f : vector -> vector].

.. code-block:: ocaml

  val jacobianT' : (arr -> arr) -> arr -> arr * arr

transposed jacobian of [f : vector -> vector], return [f x] and [j x].

