Neural.Neuron Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#377 entries have been extracted.
timestamp: 2018-03-04 23:25:16

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/neural/owl_neural_neuron_sig.ml>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/neural/owl_neural_neuron.ml>`_



Init neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ =
    | Uniform of float * float
    | Gaussian of float * float
    | Standard
    | Tanh
    | GlorotNormal
    | GlorotUniform
    | LecunNormal
    | Custom of (int array -> t)
    

Initialisation types

.. code-block:: ocaml

  val calc_fans : int array -> float * float

Calculate fan-in and fan-out of weights.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_neuron.ml#L33>`__



.. code-block:: ocaml

  val run : typ -> int array -> t -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Input neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : int array -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Activation neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ =
    | Elu
    | Relu
    | Sigmoid
    | HardSigmoid
    | Softmax
    | Softplus
    | Softsign
    | Tanh
    | Relu6
    | LeakyRelu of float
    | TRelu of float
    | Custom of (t -> t)
    | None
    

Types of activation functions.

.. code-block:: ocaml

  type neuron_typ = {
    mutable activation : typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Linear neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable w : t;
    mutable b : t;
    mutable init_typ : Init.typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?inputs:int -> int -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

LinearNoBias neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable w : t;
    mutable init_typ : Init.typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?inputs:int -> int -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Recurrent neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable whh : t;
    mutable wxh : t;
    mutable why : t;
    mutable bh : t;
    mutable by : t;
    mutable h : t;
    mutable hiddens : int;
    mutable act : Activation.typ;
    mutable init_typ : Init.typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?time_steps:int -> ?inputs:int -> int -> int -> Activation.typ -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

LSTM neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable wxi : t;
    mutable whi : t;
    mutable wxc : t;
    mutable whc : t;
    mutable wxf : t;
    mutable whf : t;
    mutable wxo : t;
    mutable who : t;
    mutable bi : t;
    mutable bc : t;
    mutable bf : t;
    mutable bo : t;
    mutable c : t;
    mutable h : t;
    mutable init_typ : Init.typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?time_steps:int -> ?inputs:int -> int -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

GRU neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable wxz : t;
    mutable whz : t;
    mutable wxr : t;
    mutable whr : t;
    mutable wxh : t;
    mutable whh : t;
    mutable bz : t;
    mutable br : t;
    mutable bh : t;
    mutable h : t;
    mutable init_typ : Init.typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?time_steps:int -> ?inputs:int -> int -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Conv1D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable w : t;
    mutable b : t;
    mutable kernel : int array;
    mutable stride : int array;
    mutable padding : Owl_types.padding;
    mutable init_typ : Init.typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?inputs:int array -> Owl_types.padding -> int array -> int array -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Conv2D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable w : t;
    mutable b : t;
    mutable kernel : int array;
    mutable stride : int array;
    mutable padding : Owl_types.padding;
    mutable init_typ : Init.typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?inputs:int array -> Owl_types.padding -> int array -> int array -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Conv3D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable w : t;
    mutable b : t;
    mutable kernel : int array;
    mutable stride : int array;
    mutable padding : Owl_types.padding;
    mutable init_typ : Init.typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?inputs:int array -> Owl_types.padding -> int array -> int array -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

FullyConnected neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable w : t;
    mutable b : t;
    mutable init_typ : Init.typ;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?inputs:int -> int -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

MaxPool1D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable padding : Owl_types.padding;
    mutable kernel : int array;
    mutable stride : int array;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : Owl_types.padding -> int array -> int array -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

MaxPool2D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable padding : Owl_types.padding;
    mutable kernel : int array;
    mutable stride : int array;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

AvgPool1D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable padding : Owl_types.padding;
    mutable kernel : int array;
    mutable stride : int array;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

AvgPool2D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable padding : Owl_types.padding;
    mutable kernel : int array;
    mutable stride : int array;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : Owl_types.padding -> int array -> int array -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

GlobalMaxPool1D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

GlobalMaxPool2D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

GlobalAvgPool1D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

GlobalAvgPool2D neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

UpSampling1D neuron
-------------------------------------------------------------------------------



UpSampling2D neuron
-------------------------------------------------------------------------------



UpSampling3D neuron
-------------------------------------------------------------------------------



Padding1D neuron
-------------------------------------------------------------------------------



Padding2D neuron
-------------------------------------------------------------------------------



Padding3D neuron
-------------------------------------------------------------------------------



Lambda neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable lambda : t -> t;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : (t -> t) -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Dropout neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable rate : float;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : float -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Reshape neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?inputs:int array -> int array -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Flatten neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Add neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t array -> 'a -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Mul neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t array -> 'a -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Dot neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t array -> 'a -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Max neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t array -> 'a -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Average neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : unit -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : 'a -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t array -> 'a -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Concatenate neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable axis : int;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : int -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t array -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Normalisation neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable axis : int;
    mutable beta : t;
    mutable gamma : t;
    mutable mu : t;
    mutable var : t;
    mutable decay : t;
    mutable training : bool;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?training:bool -> ?decay:float -> ?mu:arr -> ?var:arr -> int -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

GaussianNoise neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable sigma : float;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : float -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

GaussianDropout neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable rate : float;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : float -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

AlphaDropout neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable rate : float;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : float -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Embedding neuron
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron_typ = {
    mutable w : t;
    mutable init_typ : Init.typ;
    mutable in_dim : int;
    mutable in_shape : int array;
    mutable out_shape : int array;
    }
    

Neuron type definition.

.. code-block:: ocaml

  val create : ?inputs:int -> int -> int -> Init.typ -> neuron_typ

Create the neuron.

.. code-block:: ocaml

  val connect : int array -> neuron_typ -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron_typ -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron_typ -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron_typ -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron_typ -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron_typ -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron_typ -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron_typ -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron_typ -> neuron_typ

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t -> neuron_typ -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron_typ -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : unit -> string

Return the name of the neuron.

Masking neuron
-------------------------------------------------------------------------------



Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type neuron =
    Input of Input.neuron_typ
    | Linear of Linear.neuron_typ
    | LinearNoBias of LinearNoBias.neuron_typ
    | Embedding of Embedding.neuron_typ
    | LSTM of LSTM.neuron_typ
    | GRU of GRU.neuron_typ
    | Recurrent of Recurrent.neuron_typ
    | Conv1D of Conv1D.neuron_typ
    | Conv2D of Conv2D.neuron_typ
    | Conv3D of Conv3D.neuron_typ
    | FullyConnected of FullyConnected.neuron_typ
    | MaxPool1D of MaxPool1D.neuron_typ
    | MaxPool2D of MaxPool2D.neuron_typ
    | AvgPool1D of AvgPool1D.neuron_typ
    | AvgPool2D of AvgPool2D.neuron_typ
    | GlobalMaxPool1D of GlobalMaxPool1D.neuron_typ
    | GlobalMaxPool2D of GlobalMaxPool2D.neuron_typ
    | GlobalAvgPool1D of GlobalAvgPool1D.neuron_typ
    | GlobalAvgPool2D of GlobalAvgPool2D.neuron_typ
    | Dropout of Dropout.neuron_typ
    | Reshape of Reshape.neuron_typ
    | Flatten of Flatten.neuron_typ
    | Lambda of Lambda.neuron_typ
    | Activation of Activation.neuron_typ
    | GaussianNoise of GaussianNoise.neuron_typ
    | GaussianDropout of GaussianDropout.neuron_typ
    | AlphaDropout of AlphaDropout.neuron_typ
    | Normalisation of Normalisation.neuron_typ
    | Add of Add.neuron_typ
    | Mul of Mul.neuron_typ
    | Dot of Dot.neuron_typ
    | Max of Max.neuron_typ
    | Average of Average.neuron_typ
    | Concatenate of Concatenate.neuron_typ
    

Types of neuron.

.. code-block:: ocaml

  val get_in_out_shape : neuron -> int array * int array

Get both input and output shapes of a neuron.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_neuron.ml#L2333>`__



.. code-block:: ocaml

  val get_in_shape : neuron -> int array

Get the input shape of a neuron.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_neuron.ml#L2370>`__



.. code-block:: ocaml

  val get_out_shape : neuron -> int array

Get the output shape of a neuron.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/neural/owl_neural_neuron.ml#L2373>`__



.. code-block:: ocaml

  val connect : int array array -> neuron -> unit

Connect this neuron to others in a neural network.

.. code-block:: ocaml

  val init : neuron -> unit

Initialise the neuron and its parameters.

.. code-block:: ocaml

  val reset : neuron -> unit

Reset the parameters in a neuron.

.. code-block:: ocaml

  val mktag : int -> neuron -> unit

Tag the neuron, used by ``Algodiff`` module.

.. code-block:: ocaml

  val mkpar : neuron -> t array

Assemble all the parameters in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkpri : neuron -> t array

Assemble all the primial values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val mkadj : neuron -> t array

Assemble all the adjacent values in an array, used by ``Optimise`` module.

.. code-block:: ocaml

  val update : neuron -> t array -> unit

Update parameters in a neuron, used by ``Optimise`` module.

.. code-block:: ocaml

  val copy : neuron -> neuron

Make a deep copy of the neuron and its parameters.

.. code-block:: ocaml

  val run : t array -> neuron -> t

Execute the computation in this neuron.

.. code-block:: ocaml

  val to_string : neuron -> string

Convert the neuron to its string representation. The string is often a summary of the parameters defined in the neuron.

.. code-block:: ocaml

  val to_name : neuron -> string

Return the name of the neuron.

