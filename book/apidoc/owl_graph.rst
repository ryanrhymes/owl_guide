Graph
===============================================================================

This document is auto-generated for Owl's APIs.
#6 functions have been extracted.
timestamp:1517659115

.. code-block:: ocaml

  type order = BFS | DFS

Order to traverse a graph, BFS or DFS.

.. code-block:: ocaml

  type dir = Ancestor | Descendant

Iteration direction, i.e. ancestors or descendants

.. code-block:: ocaml

  type 'a node

type definition of a node

.. code-block:: ocaml

  val set_attr : 'a node -> 'a -> unit

{6 Manipulation functions}

.. code-block:: ocaml

  val copy : ?dir:dir -> 'a node array -> 'a node array

{6 Iterators}

.. code-block:: ocaml

  val fold_out_edges : ('b -> 'a node -> 'a node -> 'b) -> 'b -> 'a node array -> 'b

{6 Helper functions}

