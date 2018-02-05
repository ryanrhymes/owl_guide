Numdiff.Generic Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#14 entries have been extracted.
timestamp:1517850917

Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type arr
    

General ndarray type



.. code-block:: ocaml

  type elt
    

Scalar type



Basic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val diff : (elt -> elt) -> elt -> elt

derivative of ``f : scalar -> scalar``.



.. code-block:: ocaml

  val diff' : (elt -> elt) -> elt -> elt * elt

derivative of ``f : scalar -> scalar``, return both ``f x`` and ``f' x``.



.. code-block:: ocaml

  val diff2 : (elt -> elt) -> elt -> elt

second order derivative of ``f : float -> float``.



.. code-block:: ocaml

  val diff2' : (elt -> elt) -> elt -> elt * elt

second order derivative of ``f : float -> float``, return ``f x`` and ``f' x``.



.. code-block:: ocaml

  val grad : (arr -> elt) -> arr -> arr

gradient of ``f : vector -> scalar``.



.. code-block:: ocaml

  val grad' : (arr -> elt) -> arr -> arr * arr

gradient of ``f : vector -> scalar``, return ``f x`` and ``g x``.



.. code-block:: ocaml

  val jacobian : (arr -> arr) -> arr -> arr

jacobian of ``f : vector -> vector``.



.. code-block:: ocaml

  val jacobian' : (arr -> arr) -> arr -> arr * arr

jacobian of ``f : vector -> vector``, return ``f x`` and ``j x``.



.. code-block:: ocaml

  val jacobianT : (arr -> arr) -> arr -> arr

transposed jacobian of ``f : vector -> vector``.



.. code-block:: ocaml

  val jacobianT' : (arr -> arr) -> arr -> arr * arr

transposed jacobian of ``f : vector -> vector``, return ``f x`` and ``j x``.



