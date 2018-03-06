Toplevel
===============================================================================

This document is auto-generated for Owl's APIs.
#3 entries have been extracted.
timestamp: 2018-03-06 15:54:42

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/top/owl_top.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/top/owl_top.ml>`_



Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val printers : string list

List of registered pretty printers for Owl.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/top/owl_top.ml#L7>`__



.. code-block:: ocaml

  val install_printers : string list -> unit

Install all the registered pretty printers.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/top/owl_top.ml#L19>`__



