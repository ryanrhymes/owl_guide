Neural.Neuron Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#58 entries have been extracted.
timestamp:1517794545

Init neuron
-------------------------------------------------------------------------------



Input neuron
-------------------------------------------------------------------------------



Activation neuron
-------------------------------------------------------------------------------



Linear neuron
-------------------------------------------------------------------------------



LinearNoBias neuron
-------------------------------------------------------------------------------



Recurrent neuron
-------------------------------------------------------------------------------



LSTM neuron
-------------------------------------------------------------------------------



GRU neuron
-------------------------------------------------------------------------------



Conv1D neuron
-------------------------------------------------------------------------------



Conv2D neuron
-------------------------------------------------------------------------------



Conv3D neuron
-------------------------------------------------------------------------------



FullyConnected neuron
-------------------------------------------------------------------------------



MaxPool1D neuron
-------------------------------------------------------------------------------



MaxPool2D neuron
-------------------------------------------------------------------------------



AvgPool1D neuron
-------------------------------------------------------------------------------



AvgPool2D neuron
-------------------------------------------------------------------------------



GlobalMaxPool1D neuron
-------------------------------------------------------------------------------



GlobalMaxPool2D neuron
-------------------------------------------------------------------------------



GlobalAvgPool1D neuron
-------------------------------------------------------------------------------



GlobalAvgPool2D neuron
-------------------------------------------------------------------------------



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



Dropout neuron
-------------------------------------------------------------------------------



Reshape neuron
-------------------------------------------------------------------------------



Flatten neuron
-------------------------------------------------------------------------------



Add neuron
-------------------------------------------------------------------------------



Mul neuron
-------------------------------------------------------------------------------



Dot neuron
-------------------------------------------------------------------------------



Max neuron
-------------------------------------------------------------------------------



Average neuron
-------------------------------------------------------------------------------



Concatenate neuron
-------------------------------------------------------------------------------



Normalisation neuron
-------------------------------------------------------------------------------



GaussianNoise neuron
-------------------------------------------------------------------------------



GaussianDropout neuron
-------------------------------------------------------------------------------



AlphaDropout neuron
-------------------------------------------------------------------------------



Embedding neuron
-------------------------------------------------------------------------------



Masking neuron
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
    

TODO



.. code-block:: ocaml

  val get_in_out_shape : neuron -> int array * int array

TODO



.. code-block:: ocaml

  val get_in_shape : neuron -> int array

TODO



.. code-block:: ocaml

  val get_out_shape : neuron -> int array

TODO



.. code-block:: ocaml

  val connect : int array array -> neuron -> unit

TODO



.. code-block:: ocaml

  val init : neuron -> unit

TODO



.. code-block:: ocaml

  val reset : neuron -> unit

TODO



.. code-block:: ocaml

  val mktag : int -> neuron -> unit

TODO



.. code-block:: ocaml

  val mkpar : neuron -> t array

TODO



.. code-block:: ocaml

  val mkpri : neuron -> t array

TODO



.. code-block:: ocaml

  val mkadj : neuron -> t array

TODO



.. code-block:: ocaml

  val update : neuron -> t array -> unit

TODO



.. code-block:: ocaml

  val copy : neuron -> neuron

TODO



.. code-block:: ocaml

  val run : t array -> neuron -> t

TODO



.. code-block:: ocaml

  val to_string : neuron -> string

TODO



.. code-block:: ocaml

  val to_name : neuron -> string

TODO



