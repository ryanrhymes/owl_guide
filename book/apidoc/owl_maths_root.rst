Maths_root
===============================================================================

This document is auto-generated for Owl's APIs.
#11 entries have been extracted.
timestamp: 2018-03-10 21:21:52

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/maths/owl_maths_root.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/maths/owl_maths_root.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type solver =
    | Bisec
    | FalsePos
    | Ridder
    | Brent
    

Type of root functions of univariate functions.

Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val fzero : ?solver:solver -> ?max_iter:int -> ?xtol:float -> (float -> float) -> float -> float -> float

``fzero ~solver f a b`` tries to find the root of univariate function ``f`` in
the bracket ``[a, b]`` using method ``solver``. This is the hub function of the
individual root finding algorithms in the following sections. You can certainly
call each individual ones.

Parameters:
  * ``solver``: solver, default one is Brent method.
  * ``max_iter``: maximum number of iterations, default value is ``1000``.
  * ``xtol``: the tolerance of ``x`` on abscissa, default value is ``1e-6``.
  * ``f``: the univariate scalar function to find root.
  * ``a``: boundary of bracket.
  * ``b``: boundary of bracket.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths_root.ml#L225>`__



Root of univariate functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val bisec : ?max_iter:int -> ?xtol:float -> (float -> float) -> float -> float -> float

``bisec f a b`` tries to find the root of univariate function ``f`` in the
bracket defined by ``[a, b]``.

Parameters:
  * ``max_iter``: maximum number of iterations.
  * ``xtol``: the tolerance of ``x`` on abscissa.
  * ``f``: the univariate scalar function to find root.
  * ``a``: boundary of bracket.
  * ``b``: boundary of bracket.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths_root.ml#L20>`__



.. code-block:: ocaml

  val false_pos : ?max_iter:int -> ?xtol:float -> (float -> float) -> float -> float -> float

``false_pos f a b`` tries to find the root of univariate function ``f`` in the
bracket defined by ``[a, b]``.

Parameters:
  * ``max_iter``: maximum number of iterations.
  * ``xtol``: the tolerance of ``x`` on abscissa.
  * ``f``: the univariate scalar function to find root.
  * ``a``: boundary of bracket.
  * ``b``: boundary of bracket.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths_root.ml#L47>`__



.. code-block:: ocaml

  val ridder : ?max_iter:int -> ?xtol:float -> (float -> float) -> float -> float -> float

``ridder f a b`` tries to find the root of univariate function ``f`` in the
bracket defined by ``[a, b]``.

Parameters:
  * ``max_iter``: maximum number of iterations.
  * ``xtol``: the tolerance of ``x`` on abscissa.
  * ``f``: the univariate scalar function to find root.
  * ``a``: boundary of bracket.
  * ``b``: boundary of bracket.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths_root.ml#L85>`__



.. code-block:: ocaml

  val brent : ?max_iter:int -> ?xtol:float -> (float -> float) -> float -> float -> float

``brent f a b`` tries to find the root of univariate function ``f`` in the
bracket defined by ``[a, b]``.

Parameters:
  * ``max_iter``: maximum number of iterations.
  * ``xtol``: the tolerance of ``x`` on abscissa.
  * ``f``: the univariate scalar function to find root.
  * ``a``: boundary of bracket.
  * ``b``: boundary of bracket.

Refer to :cite:`brent2013algorithms`

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths_root.ml#L134>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val bracket_expand : ?rate:float -> ?max_iter:int -> (float -> float) -> float -> float -> (float * float) option

``bracket_expand f a b`` expands the bracket ``[a, b]`` for a given function
``f`` until it finds ``f a`` and ``f b`` have different signs.

Parameters:
  * ``max_iter``: maximum number of iterations, the default is 100
  * ``rate``: rate of growth, the default is 1.6
  * ``f``: the univariate scalar function to find root.
  * ``a``: initial boundary of bracket.
  * ``b``: initial boundary of bracket.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/maths/owl_maths_root.ml#L233>`__



