Graph
===============================================================================

This document is auto-generated for Owl's APIs.
#33 entries have been extracted.
timestamp:1517921090

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_graph.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_graph.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type order = BFS | DFS
    

Order to traverse a graph, BFS or DFS.



.. code-block:: ocaml

  type dir = Ancestor | Descendant
    

Iteration direction, i.e. ancestors or descendants



.. code-block:: ocaml

  type 'a node
    

type definition of a node



Obtaining properties
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val id : 'a node -> int

``id x`` returns the id of node ``x``.



.. code-block:: ocaml

  val name : 'a node -> string

``name x`` returns the name string of node ``x``.



.. code-block:: ocaml

  val parents : 'a node -> 'a node array

``parents x`` returns the parents of node ``x``.



.. code-block:: ocaml

  val children : 'a node -> 'a node array

``children x`` returns the children of node ``x``.



.. code-block:: ocaml

  val indegree : 'a node -> int

``indegree x`` returns the in-degree of node ``x``.



.. code-block:: ocaml

  val outdegree : 'a node -> int

``outdegree x`` returns the out-degree of node ``x``.



.. code-block:: ocaml

  val attr : 'a node -> 'a

``attr x`` returns the ``attr`` field of node ``x``.



.. code-block:: ocaml

  val set_attr : 'a node -> 'a -> unit

``set_attr x`` sets the ``attr`` field of node ``x``.



Manipulation functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val node : ?id:int -> ?name:string -> ?prev:'a node array -> ?next:'a node array -> 'a -> 'a node

``node ~id ~name ~prev ~next attr`` creates a node with given id and name
string. The created node is also connected to parents in ``prev`` and children
in ``next``. The ``attr`` will be saved in ``attr`` field.



.. code-block:: ocaml

  val connect : 'a node array -> 'a node array -> unit

``connect parents children`` connects a set of parents to a set of children.
The created links are the Cartesian product of parents and children.



.. code-block:: ocaml

  val remove_node : 'a node -> unit

``remove_node x`` removes node ``x`` from the graph by disconnecting itself
from all its parent nodes and child nodes.



.. code-block:: ocaml

  val remove_edge : 'a node -> 'a node -> unit

``remove_edge src dst`` removes a link ``src -> dst`` from the graph. Note that
it does not remove [dst -> src] if there exists one.



.. code-block:: ocaml

  val copy : ?dir:dir -> 'a node array -> 'a node array

``copy ~dir x`` makes a copy of ``x`` and all its ancestors
(if ``dir = Ancestor``) or all its descendants (if ``dir = Descendant``).

Note that this function only makes a copy of the graph structure, ``attr``
fileds of the nodes in the new graph share the same memory with those in the
original graph.



Iterators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val iter_ancestors : ?order:order -> ('a node -> unit) -> 'a node array -> unit

Iterate the ancestors of a given node.



.. code-block:: ocaml

  val iter_descendants : ?order:order -> ('a node -> unit) -> 'a node array -> unit

Iterate the descendants of a given node.



.. code-block:: ocaml

  val filter_ancestors : ('a node -> bool) -> 'a node array -> 'a node array

Filter the ancestors of a given node.



.. code-block:: ocaml

  val filter_descendants : ('a node -> bool) -> 'a node array -> 'a node array

Iterate the descendants of a given node.



.. code-block:: ocaml

  val fold_ancestors : ('b -> 'a node -> 'b) -> 'b -> 'a node array -> 'b

Fold the ancestors of a given node.



.. code-block:: ocaml

  val fold_descendants : ('b -> 'a node -> 'b) -> 'b -> 'a node array -> 'b

Fold the descendants of a given node.



.. code-block:: ocaml

  val iter_in_edges : ?order:order -> ('a node -> 'a node -> unit) -> 'a node array -> unit

Iterate all the in-edges of a given node.



.. code-block:: ocaml

  val iter_out_edges : ?order:order -> ('a node -> 'a node -> unit) -> 'a node array -> unit

Iterate all the out-edges of a given node.



.. code-block:: ocaml

  val fold_in_edges : ('b -> 'a node -> 'a node -> 'b) -> 'b -> 'a node array -> 'b

Fold all the in-edges of a given node.



.. code-block:: ocaml

  val fold_out_edges : ('b -> 'a node -> 'a node -> 'b) -> 'b -> 'a node array -> 'b

Fold all the out-edges of a given node.



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val pp_node : Format.formatter -> 'a node -> unit

Pretty print a given node.



.. code-block:: ocaml

  val to_string : bool -> 'a node array -> string

Convert a given node to its string representaion.



