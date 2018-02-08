Numdiff.Generic Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#14 entries have been extracted.
timestamp: 2018-02-08 00:56:27

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/optimise/owl_numdiff_generic_sig.ml>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/optimise/owl_numdiff_generic.ml>`_



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

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L28>`__



.. code-block:: ocaml

  val diff' : (elt -> elt) -> elt -> elt * elt

derivative of ``f : scalar -> scalar``, return both ``f x`` and ``f' x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L32>`__



.. code-block:: ocaml

  val diff2 : (elt -> elt) -> elt -> elt

second order derivative of ``f : float -> float``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L36>`__



.. code-block:: ocaml

  val diff2' : (elt -> elt) -> elt -> elt * elt

second order derivative of ``f : float -> float``, return ``f x`` and ``f' x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L40>`__



.. code-block:: ocaml

  val grad : (arr -> elt) -> arr -> arr

gradient of ``f : vector -> scalar``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L57>`__



.. code-block:: ocaml

  val grad' : (arr -> elt) -> arr -> arr * arr

gradient of ``f : vector -> scalar``, return ``f x`` and ``g x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L44>`__



.. code-block:: ocaml

  val jacobian : (arr -> arr) -> arr -> arr

jacobian of ``f : vector -> vector``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L88>`__



.. code-block:: ocaml

  val jacobian' : (arr -> arr) -> arr -> arr * arr

jacobian of ``f : vector -> vector``, return ``f x`` and ``j x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L82>`__



.. code-block:: ocaml

  val jacobianT : (arr -> arr) -> arr -> arr

transposed jacobian of ``f : vector -> vector``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L78>`__



.. code-block:: ocaml

  val jacobianT' : (arr -> arr) -> arr -> arr * arr

transposed jacobian of ``f : vector -> vector``, return ``f x`` and ``j x``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_numdiff_generic.ml#L61>`__



