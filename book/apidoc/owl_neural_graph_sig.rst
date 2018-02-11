Neural.Graph Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#71 entries have been extracted.
timestamp: 2018-02-11 16:15:30

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/neural/owl_neural_graph_sig.ml>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/neural/owl_neural_graph.ml>`_



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
    

Type definition of a node and a neural network.

Manipuate networks
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val make_network : ?nnid:string -> int -> node option -> node array -> network

Create an empty neural network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L44>`__



.. code-block:: ocaml

  val make_node : ?name:string -> ?train:bool -> node array -> node array -> neuron -> t option -> network -> node

Create a node in a neural network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L52>`__



.. code-block:: ocaml

  val get_root : network -> node

Get the root of the neural network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L68>`__



.. code-block:: ocaml

  val get_node : network -> string -> node

Get a node in a network with the given name.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L74>`__



.. code-block:: ocaml

  val get_network : node -> network

Get the neural network of a given node associated with.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L80>`__



.. code-block:: ocaml

  val collect_output : node array -> t array

Collect the output values of given nodes.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L84>`__



.. code-block:: ocaml

  val connect_pair : node -> node -> unit

Connect two nodes in a neural network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L92>`__



.. code-block:: ocaml

  val connect_to_parents : node array -> node -> unit

Connect a node to a list of parents.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L99>`__



.. code-block:: ocaml

  val add_node : ?act_typ:Activation.typ -> network -> node array -> node -> node

Add a node to the given network.

Interface to optimisation engine
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val init : network -> unit

Initialise the network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L133>`__



.. code-block:: ocaml

  val reset : network -> unit

Reset the network, i.e. all the paramters in the neurons.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L136>`__



.. code-block:: ocaml

  val mktag : int -> network -> unit

Tag the neurons, used by ``Algodiff`` module.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L139>`__



.. code-block:: ocaml

  val mkpar : network -> t array array

Collect the paramters of neurons, used by ``Optimise`` module.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L142>`__



.. code-block:: ocaml

  val mkpri : network -> t array array

Collect the primal values of neurons, used by ``Optimise`` module.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L145>`__



.. code-block:: ocaml

  val mkadj : network -> t array array

Collect the adjacent values of neurons, used by ``Optimise`` module.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L148>`__



.. code-block:: ocaml

  val update : network -> t array array -> unit

Update the paramters of neurons, used by ``Optimise`` module.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L151>`__



.. code-block:: ocaml

  val run : t -> network -> t

Execute the computations in all the neurons in a network with the given input.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L154>`__



.. code-block:: ocaml

  val forward : network -> t -> t * t array array

Run the forward pass of a network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L170>`__



.. code-block:: ocaml

  val backward : network -> t -> t array array * t array array

Run the backward pass of a network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L173>`__



.. code-block:: ocaml

  val copy : network -> network

Make a deep copy of the given network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L176>`__



.. code-block:: ocaml

  val model : network -> arr -> arr

Make a deep copy of the given network, excluding the neurons marked with ``training = true``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L216>`__



Create Neurons
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val input : ?name:string -> int array -> node

``input shape`` creates an input node for input data.

Arguments:
  * ``shape``: shape of input data.

.. code-block:: ocaml

  val activation : ?name:string -> Activation.typ -> node -> node

Applies an activation function to an output.

Arguments:
  * ``activation``: name of activation function to use.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L238>`__



.. code-block:: ocaml

  val linear : ?name:string -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int -> node -> node

``linear ?act_typ units node`` adds the regular densely-connected NN node to
``node``.

Arguments:
  * ``units``: Positive integer, dimensionality of the output space.
  * ``act_typ``: Activation function to use.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L245>`__



.. code-block:: ocaml

  val linear_nobias : ?name:string -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int -> node -> node

Similar to ``linear``, but does not use the bias vector.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L252>`__



.. code-block:: ocaml

  val embedding : ?name:string -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int -> int -> node -> node

Create a node for embedding neuron.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L259>`__



.. code-block:: ocaml

  val recurrent : ?name:string -> ?init_typ:Init.typ -> act_typ:Activation.typ -> int -> int -> node -> node

Create a node for recurrent neuron.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L266>`__



.. code-block:: ocaml

  val lstm : ?name:string -> ?init_typ:Init.typ -> int -> node -> node

``lstm units node`` adds a LSTM node on previous ``node``.

Arguments:
  * ``units``: Positive integer, dimensionality of the output space.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L273>`__



.. code-block:: ocaml

  val gru : ?name:string -> ?init_typ:Init.typ -> int -> node -> node

``gru units node`` adds a Gated Recurrent Unit node on previous ``node``.

Arguments:
  * ``units``: Positive integer, dimensionality of the output space.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L280>`__



.. code-block:: ocaml

  val conv1d : ?name:string -> ?padding:Owl_types.padding -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

``conv1d kernels strides node`` adds a 1D convolution node (e.g. temporal
convolution) on previous ``node``.

Arguments:
  * ``kernel``: int array consists of ``h, i, o``. ``h`` specifies the dimension of the 1D convolution window. ``i`` and ``o`` are the dimensionalities of the input and output space.
  * ``stride``: int array of 1 integer

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L287>`__



.. code-block:: ocaml

  val conv2d : ?name:string -> ?padding:Owl_types.padding -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

``conv2d kernels strides node`` adds a 2D convolution node (e.g. spatial convolution over images) on previous ``node``.

Arguments:
  * ``kernel``: int array consists of ``w, h, i, o``. ``w`` and ``h`` specify the width and height of the 2D convolution window. ``i`` and ``o`` are the dimensionality of the input and output space.
  * ``stride``: int array of 2 integers

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L294>`__



.. code-block:: ocaml

  val conv3d : ?name:string -> ?padding:Owl_types.padding -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

``conv3d kernels strides node`` adds a 3D convolution node (e.g. spatial
convolution over volumes) on previous ``node``.

Arguments:
  * ``kernel``: int array consists of ``w, h, d, i, o``. ``w``, ``h``, and ``d`` specify the 3 dimensionality of the 3D convolution window. ``i`` and ``o`` are the dimensionality of the input and output space.
  * ``stride``: int array of 3 integers

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L301>`__



.. code-block:: ocaml

  val fully_connected : ?name:string -> ?init_typ:Init.typ -> ?act_typ:Activation.typ -> int -> node -> node

``fully_connected outputs node`` adds a fully connected node to ``node``.

Arguments:
  * ``outputs``: integer, the number of output units in the node

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L308>`__



.. code-block:: ocaml

  val max_pool1d : ?name:string -> ?padding:Owl_types.padding -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

``max_pool1d ~padding ~act_typ pool_size strides node`` adds a max pooling
operation for temporal data to ``node``.

Arguments:
  * ``pool_size``: Array of one integer, size of the max pooling windows.
  * ``strides``: Array of one integer, factor by which to downscale.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L315>`__



.. code-block:: ocaml

  val max_pool2d : ?name:string -> ?padding:Owl_types.padding -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

``max_pool2d ~padding ~act_typ pool_size strides node`` adds a max pooling
operation for spatial data to ``node``.

Arguments:
  * ``pool_size``: Array of 2 integers, size of the max pooling windows.
  * ``strides``: Array of 2 integers, factor by which to downscale.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L322>`__



.. code-block:: ocaml

  val avg_pool1d : ?name:string -> ?padding:Owl_types.padding -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

``avg_pool1d ~padding ~act_typ pool_size strides node`` adds a average pooling
operation for temporal data to ``node``.

Arguments:
  * ``pool_size``: Array of one integer, size of the max pooling windows.
  * ``strides``: Array of one integer, factor by which to downscale.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L329>`__



.. code-block:: ocaml

  val avg_pool2d : ?name:string -> ?padding:Owl_types.padding -> ?act_typ:Activation.typ -> int array -> int array -> node -> node

``avg_pool2d ~padding ~act_typ pool_size strides node`` adds a average pooling operation for spatial data to ``node``.

Arguments:
  * ``pool_size``: Array of 2 integers, size of the max pooling windows.
  * ``strides``: Array of 2 integers, factor by which to downscale.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L336>`__



.. code-block:: ocaml

  val global_max_pool1d : ?name:string -> ?act_typ:Activation.typ -> node -> node

``global_max_pool1d`` adds global max pooling operation for temporal data.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L343>`__



.. code-block:: ocaml

  val global_max_pool2d : ?name:string -> ?act_typ:Activation.typ -> node -> node

``global_max_poo2d`` global max pooling operation for spatial data.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L350>`__



.. code-block:: ocaml

  val global_avg_pool1d : ?name:string -> ?act_typ:Activation.typ -> node -> node

``global_avg_pool1d`` adds global average pooling operation for temporal data.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L357>`__



.. code-block:: ocaml

  val global_avg_pool2d : ?name:string -> ?act_typ:Activation.typ -> node -> node

``global_avg_poo2d`` global average pooling operation for spatial data.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L364>`__



.. code-block:: ocaml

  val dropout : ?name:string -> float -> node -> node

``dropout rate node`` applies Dropout to the input to prevent overfitting.

Arguments:
  * ``rate``: float between 0 and 1. Fraction of the input units to drop.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L371>`__



.. code-block:: ocaml

  val gaussian_noise : ?name:string -> float -> node -> node

``gaussian_noise stddev node`` applies additive zero-centered Gaussian noise.

Arguments:
  * ``stddev``: float, standard deviation of the noise distribution.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L378>`__



.. code-block:: ocaml

  val gaussian_dropout : ?name:string -> float -> node -> node

``gaussian_dropout rate node`` applies multiplicative 1-centered Gaussian noise.
Only active at training time.

Arguments:
  * ``rates``: float, drop probability

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L385>`__



.. code-block:: ocaml

  val alpha_dropout : ?name:string -> float -> node -> node

``alpha_dropout rate node`` applies Alpha Dropout to the input ``node``.
Only active at training time.

Arguments:
  * ``rates``: float, drop probability

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L392>`__



.. code-block:: ocaml

  val normalisation : ?name:string -> ?axis:int -> ?training:bool -> ?decay:float -> ?mu:arr -> ?var:arr -> node -> node

``normalisation axis node`` normalise the activations of the previous node at
each batch.

Arguments:
  * ``axis``:  Integer, the axis that should be normalised (typically the features axis). Default value is 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L399>`__



.. code-block:: ocaml

  val reshape : ?name:string -> int array -> node -> node

``reshape target_shape node`` reshapes an output to a certain shape.

Arguments:
  * ``target_shape``: target shape. Array of integers. Does not include the batch axis.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L406>`__



.. code-block:: ocaml

  val flatten : ?name:string -> node -> node

``flatten node`` flattens the input. Does not affect the batch size.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L413>`__



.. code-block:: ocaml

  val lambda : ?name:string -> ?act_typ:Activation.typ -> (t -> t) -> node -> node

``lambda func node`` wraps arbitrary expression as a Node object.

Arguments:
  * ``func``: The function to be evaluated. Takes input tensor as first argument.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L420>`__



.. code-block:: ocaml

  val add : ?name:string -> ?act_typ:Activation.typ -> node array -> node

Node that adds a list of inputs.

It takes as input an array of nodes, all of the same shape, and returns a
single node (also of the same shape).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L427>`__



.. code-block:: ocaml

  val mul : ?name:string -> ?act_typ:Activation.typ -> node array -> node

Node that multiplies (element-wise) a list of inputs.

It takes as input an array of nodes, all of the same shape, and returns a
single node (also of the same shape).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L434>`__



.. code-block:: ocaml

  val dot : ?name:string -> ?act_typ:Activation.typ -> node array -> node

Node that computes a dot product between samples in two nodes.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L441>`__



.. code-block:: ocaml

  val max : ?name:string -> ?act_typ:Activation.typ -> node array -> node

Node that computes the maximum (element-wise) a list of inputs.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L448>`__



.. code-block:: ocaml

  val average : ?name:string -> ?act_typ:Activation.typ -> node array -> node

Node that averages a list of inputs.

It takes as input an array of nodes, all of the same shape, and returns a
single node (also of the same shape).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L455>`__



.. code-block:: ocaml

  val concatenate : ?name:string -> ?act_typ:Activation.typ -> int -> node array -> node

``concatenate axis nodes`` concatenates a array of ``nodes`` and return as a single node.

Arguments:
  * ``axis``: Axis along which to concatenate.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L462>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val to_string : network -> string

Convert a neural network to its string representation.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L472>`__



.. code-block:: ocaml

  val pp_network : Format.formatter -> network -> unit

Pretty printing function a neural network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L488>`__



.. code-block:: ocaml

  val print : network -> unit

Print the string representation of a neural network to the standard output.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L494>`__



.. code-block:: ocaml

  val save : network -> string -> unit

Serialise a network and save it to the a file with the given name.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L497>`__



.. code-block:: ocaml

  val load : string -> network

Load the neural network from a file with the given name.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L500>`__



.. code-block:: ocaml

  val save_weights : network -> string -> unit

Save all the weights in a neural network to a file. The weights and the name of
their associated neurons are saved as key-value pairs in a hash table.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L503>`__



.. code-block:: ocaml

  val load_weights : network -> string -> unit

Load the weights from a file of the given name. Note that the weights and the
name of their associated neurons are saved as key-value pairs in a hash table.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L512>`__



Train Networks
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val train_generic : ?state:Checkpoint.state -> ?params:Params.typ -> ?init_model:bool -> network -> t -> t -> Checkpoint.state

Generic function of training a neural network.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L528>`__



.. code-block:: ocaml

  val train : ?state:Checkpoint.state -> ?params:Params.typ -> ?init_model:bool -> network -> arr -> arr -> Checkpoint.state

Train a neural network with various configurations.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_graph.ml#L541>`__



