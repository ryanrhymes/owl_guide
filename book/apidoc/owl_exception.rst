Exception
===============================================================================

This document is auto-generated for Owl's APIs.
#16 entries have been extracted.
timestamp: 2018-03-24 02:19:45

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/core/owl_exception.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/core/owl_exception.ml>`_



Core function
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val check : bool -> exn -> unit

``check p e`` raises the exception ``e`` if the predicate ``p`` is
``false``, otherwise returns ``unit``.

Parameters:
  * ``p``: predicate to check.
  * ``e``: exception to raise.

Returns:
  * ``unit``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/core/owl_exception.ml#L7>`__



Exception definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  exception NOT_IMPLEMENTED
    

Exception of not implemented yet.

.. code-block:: ocaml

  exception FOUND
    

Exception of found an element.

.. code-block:: ocaml

  exception NOT_FOUND
    

Exception of not found an element.

.. code-block:: ocaml

  exception EMPTY_ARRAY
    

Exception of an empty array

.. code-block:: ocaml

  exception TEST_FAIL
    

Unit Test fails.

.. code-block:: ocaml

  exception NOT_SQUARE
    

Fails if a matrix is not square.

.. code-block:: ocaml

  exception DIFFERENT_SHAPE
    

Fail if two ndarrays have different shape.

.. code-block:: ocaml

  exception NOT_BROADCASTABLE
    

Fail if the shapes of multiple ndarrays are not broadcastable.

.. code-block:: ocaml

  exception NOT_CONVERGE
    

Fail to converge.

.. code-block:: ocaml

  exception MAX_ITERATION
    

Number of iteration exceeds the threshold.

.. code-block:: ocaml

  exception SINGULAR
    

Exception of singular matrix.

.. code-block:: ocaml

  exception INDEX_OUT_OF_BOUND
    

Exception of index out of boundary.

.. code-block:: ocaml

  exception ZOO_ILLEGAL_GIST_NAME
    

Exception of illegal gist name.

