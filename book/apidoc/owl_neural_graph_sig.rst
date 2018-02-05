Neural.Graph Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#71 entries have been extracted.
timestamp:1517836488

Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type node = {
    mutable name : string;
    mutable prev : node array;
    mutable next : node array;
    mutable neuron : neuron;
    mutable output : t option;
    mutable network : network;
    mutable train : bool;
    }
    and network = {
    mutable nnid : string;
    mutable size : int;
    mutable root : node option;
    mutable topo : node array;
    }
    

TODO



Manipuate networks
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val make_network : ?nnid:string -> int -> node option -> node array -> network

TODO



.. code-block:: ocaml

  val make_node : ?name:string -> ?train:bool -> node array -> node array -> neuron -> t option -> network -> node

TODO



.. code-block:: ocaml

  val get_root : network -> node

TODO



.. code-block:: ocaml

  val get_node : network -> string -> node

TODO



.. code-block:: ocaml

  val get_network : node -> network

TODO



.. code-block:: ocaml

  val collect_output : node array -> t array

TODO



.. code-block:: ocaml

  val connect_pair : node -> node -> unit

TODO



.. code-block:: ocaml

  val connect_to_parents : node array -> node -> unit

TODO



.. code-block:: ocaml

  val add_node : ?act_typ:Activation.typ -> network -> node array -> node -> node

TODO



Interface to optimisation engine
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val init : network -> unit

TODO



.. code-block:: ocaml

  val reset : network -> unit

TODO



.. code-block:: ocaml

  val mktag : int -> network -> unit

TODO



.. code-block:: ocaml

  val mkpar : network -> t array array

TODO



.. code-block:: ocaml

  val mkpri : network -> t array array

TODO



.. code-block:: ocaml

  val mkadj : network -> t array array

TODO



.. code-block:: ocaml

  val update : network -> t array array -> unit

TODO



.. code-block:: ocaml

  val run : t -> network -> t

TODO



.. code-block:: ocaml

  val forward : network -> t -> t * t array array

TODO



.. code-block:: ocaml

  val backward : network -> t -> t array array * t array array

TODO



.. code-block:: ocaml

  val copy : network -> network

TODO



.. code-block:: ocaml

  val model : network -> arr -> arr

TODO



Create Neurons
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val input : ?name:string -> int array -> node

TODO



.. code-block:: ocaml

  val activation : ?name:string -> Activation.typ -> node -> node

TODO



.. code-block:: ocaml

  val linear : ?name:string -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int -> node -> node

TODO



.. code-block:: ocaml

  val linear_nobias : ?name:string -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int -> node -> node

TODO



.. code-block:: ocaml

  val embedding : ?name:string -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int -> int -> node -> node

TODO



.. code-block:: ocaml

  val recurrent : ?name:string -> ?init_typ:Init.typ -> act_typ:Activation.typ -> int -> int -> node -> node

TODO



.. code-block:: ocaml

  val lstm : ?name:string -> ?init_typ:Init.typ -> int -> node -> node

TODO



.. code-block:: ocaml

  val gru : ?name:string -> ?init_typ:Init.typ -> int -> node -> node

TODO



.. code-block:: ocaml

  val conv1d : ?name:string -> ?padding:Owl_types.padding -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

TODO



.. code-block:: ocaml

  val conv2d : ?name:string -> ?padding:Owl_types.padding -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

TODO



.. code-block:: ocaml

  val conv3d : ?name:string -> ?padding:Owl_types.padding -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

TODO



.. code-block:: ocaml

  val fully_connected : ?name:string -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int -> node -> node

TODO



.. code-block:: ocaml

  val max_pool1d : ?name:string -> ?padding:Owl_types.padding -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

TODO



.. code-block:: ocaml

  val max_pool2d : ?name:string -> ?padding:Owl_types.padding -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

TODO



.. code-block:: ocaml

  val avg_pool1d : ?name:string -> ?padding:Owl_types.padding -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

TODO



.. code-block:: ocaml

  val avg_pool2d : ?name:string -> ?padding:Owl_types.padding -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

TODO



.. code-block:: ocaml

  val global_max_pool1d : ?name:string -> ?act_typ:Activation.typ -> node -> node

TODO



.. code-block:: ocaml

  val global_max_pool2d : ?name:string -> ?act_typ:Activation.typ -> node -> node

TODO



.. code-block:: ocaml

  val global_avg_pool1d : ?name:string -> ?act_typ:Activation.typ -> node -> node

TODO



.. code-block:: ocaml

  val global_avg_pool2d : ?name:string -> ?act_typ:Activation.typ -> node -> node

TODO



.. code-block:: ocaml

  val dropout : ?name:string -> float -> node -> node

TODO



.. code-block:: ocaml

  val gaussian_noise : ?name:string -> float -> node -> node

TODO



.. code-block:: ocaml

  val gaussian_dropout : ?name:string -> float -> node -> node

TODO



.. code-block:: ocaml

  val alpha_dropout : ?name:string -> float -> node -> node

TODO



.. code-block:: ocaml

  val normalisation : ?name:string -> ?axis:int -> ?training:bool -> ?decay:float -> ?mu:arr -> ?var:arr -> node -> node

TODO



.. code-block:: ocaml

  val reshape : ?name:string -> int array -> node -> node

TODO



.. code-block:: ocaml

  val flatten : ?name:string -> node -> node

TODO



.. code-block:: ocaml

  val lambda : ?name:string -> ?act_typ:Activation.typ -> (t -> t) -> node -> node

TODO



.. code-block:: ocaml

  val add : ?name:string -> ?act_typ:Activation.typ -> node array -> node

TODO



.. code-block:: ocaml

  val mul : ?name:string -> ?act_typ:Activation.typ -> node array -> node

TODO



.. code-block:: ocaml

  val dot : ?name:string -> ?act_typ:Activation.typ -> node array -> node

TODO



.. code-block:: ocaml

  val max : ?name:string -> ?act_typ:Activation.typ -> node array -> node

TODO



.. code-block:: ocaml

  val average : ?name:string -> ?act_typ:Activation.typ -> node array -> node

TODO



.. code-block:: ocaml

  val concatenate : ?name:string -> ?act_typ:Activation.typ -> int -> node array -> node

TODO



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val to_string : network -> string

TODO



.. code-block:: ocaml

  val pp_network : Format.formatter -> network -> unit

TODO



.. code-block:: ocaml

  val print : network -> unit

TODO



.. code-block:: ocaml

  val save : network -> string -> unit

TODO



.. code-block:: ocaml

  val load : string -> network

TODO



.. code-block:: ocaml

  val save_weights : network -> string -> unit

TODO



.. code-block:: ocaml

  val load_weights : network -> string -> unit

TODO



Train Networks
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val train_generic : ?state:Checkpoint.state -> ?params:Params.typ -> ?init_model:bool -> network -> t -> t -> Checkpoint.state

TODO



.. code-block:: ocaml

  val train : ?state:Checkpoint.state -> ?params:Params.typ -> ?init_model:bool -> network -> arr -> arr -> Checkpoint.state

TODO



