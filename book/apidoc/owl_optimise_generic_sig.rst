Optimise.Generic Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#60 entries have been extracted.
timestamp: 2018-02-17 00:38:22

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/base/optimise/owl_optimise_generic_sig.ml>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/base/optimise/owl_optimise_generic.ml>`_



Utils module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sample_num : t -> int

Return the total number of samples in passed in ndarray.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L31>`__



.. code-block:: ocaml

  val draw_samples : t -> t -> int -> t * t

``draw_samples x y`` draws samples from both ``x`` (observations) and ``y``
(labels). The samples will be drew along axis 0, so ``x`` and ``y`` must agree
along axis 0.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L36>`__



.. code-block:: ocaml

  val get_chunk : t -> t -> int -> int -> t * t

``get_chunk x y i c`` gets a continuous chunk of ``c`` samples from position
``i`` from  ``x`` (observations) and ``y`` (labels).

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L45>`__



Learning_Rate module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ =
    | Adagrad of float
    | Const of float
    | Decay of float * float
    | Exp_decay of float * float
    | RMSprop of float * float
    | Adam of float * float * float
    | Schedule of float array
    

types of learning rate

.. code-block:: ocaml

  val run : typ -> int -> t -> t array -> t

Execute the computations defined in module ``typ``.

.. code-block:: ocaml

  val default : typ -> typ

Create module ``typ`` with default values.

.. code-block:: ocaml

  val update_ch : typ -> t -> t array -> t array

Update the cache of gradients.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L93>`__



.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Batch module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = Full | Mini of int | Sample of int | Stochastic
    

Types of batches.

.. code-block:: ocaml

  val run : typ -> t -> t -> int -> t * t

Execute the computations defined in module ``typ``.

.. code-block:: ocaml

  val batches : typ -> t -> int

Return the total number of batches given a batch ``typ``.

.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Loss module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ =
    | Hinge
    | L1norm
    | L2norm
    | Quadratic
    | Cross_entropy
    | Custom of (t -> t -> t)
    

Types of loss functions.

.. code-block:: ocaml

  val run : typ -> t -> t -> t

Execute the computations defined in module ``typ``.

.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Gradient module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = GD | CG | CD | NonlinearCG | DaiYuanCG | NewtonCG | Newton
    

Types of gradient function.

.. code-block:: ocaml

  val run : typ -> (t -> t) -> t -> t -> t -> t -> t

Execute the computations defined in module ``typ``.

.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Momentum module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = Standard of float | Nesterov of float | None
    

Types of momentum functions.

.. code-block:: ocaml

  val run : typ -> t -> t -> t

Execute the computations defined in module ``typ``.

.. code-block:: ocaml

  val default : typ -> typ

Create module ``typ`` with default values.

.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Regularisation module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ =
    | L1norm of float
    | L2norm of float
    | Elastic_net of float * float
    | None
    

Types of regularisation functions.

.. code-block:: ocaml

  val run : typ -> t -> t

Execute the computations defined in module ``typ``.

.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Clipping module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = L2norm of float | Value of float * float | None
    

Types of clipping functions.

.. code-block:: ocaml

  val run : typ -> t -> t

Execute the computations defined in module ``typ``.

.. code-block:: ocaml

  val default : typ -> typ

Create module ``typ`` with default values.

.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Stopping module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = Const of float | Early of int * int | None
    

Types of stopping functions.

.. code-block:: ocaml

  val run : typ -> float -> bool

Execute the computations defined in module ``typ``.

.. code-block:: ocaml

  val default : typ -> typ

Create module ``typ`` with default values.

.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Checkpoint module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type state = {
    mutable current_batch : int;
    mutable batches_per_epoch : int;
    mutable epochs : float;
    mutable batches : int;
    mutable loss : t array;
    mutable start_at : float;
    mutable stop : bool;
    mutable gs : t array array;
    mutable ps : t array array;
    mutable us : t array array;
    mutable ch : t array array array;
    }
    

Type definition of checkpoint

.. code-block:: ocaml

  type typ =
    | Batch of int
    | Epoch of float
    | Custom of (state -> unit)
    | None
    

Batch type.

.. code-block:: ocaml

  val init_state : int -> float -> state

``init_state batches_per_epoch epochs`` initialises a state by specifying the
number of batches per epoch and the number of epochs in total.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L346>`__



.. code-block:: ocaml

  val default_checkpoint_fun : (string -> 'a) -> 'a

This function is used for saving intermediate files during optimisation.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L362>`__



.. code-block:: ocaml

  val print_state_info : state -> unit

Print out the detail information of current ``state``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L369>`__



.. code-block:: ocaml

  val print_summary : state -> unit

Print out the summary of current ``state``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L382>`__



.. code-block:: ocaml

  val run : typ -> (string -> unit) -> int -> t -> state -> unit

Execute the computations defined in module ``typ``.

.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Params module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = {
    mutable epochs : float;
    mutable batch : Batch.typ;
    mutable gradient : Gradient.typ;
    mutable loss : Loss.typ;
    mutable learning_rate : Learning_Rate.typ;
    mutable regularisation : Regularisation.typ;
    mutable momentum : Momentum.typ;
    mutable clipping : Clipping.typ;
    mutable stopping : Stopping.typ;
    mutable checkpoint : Checkpoint.typ;
    mutable verbosity : bool;
    }
    

Type definition of paramater.

.. code-block:: ocaml

  val default : unit -> typ

Create module ``typ`` with default values.

.. code-block:: ocaml

  val config : ?batch:Batch.typ -> ?gradient:Gradient.typ -> ?loss:Loss.typ -> ?learning_rate:Learning_Rate.typ -> ?regularisation:Regularisation.typ -> ?momentum:Momentum.typ -> ?clipping:Clipping.typ -> ?stopping:Stopping.typ -> ?checkpoint:Checkpoint.typ -> ?verbosity:bool -> float -> typ

This function creates a parameter object with many configurations.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L441>`__



.. code-block:: ocaml

  val to_string : typ -> string

Convert the module ``typ`` to its string representation.

Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val minimise_weight : ?state:Checkpoint.state -> Params.typ -> (t -> t -> t) -> t -> t -> t -> Checkpoint.state * t

This function minimises the weight ``w`` of passed-in function ``f``.

* ``f`` is a function ``f : w -> x -> y``.
* ``w`` is a row vector but ``y`` can have any shape.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L482>`__



.. code-block:: ocaml

  val minimise_network : ?state:Checkpoint.state -> Params.typ -> (t -> t * t array array) -> (t -> t array array * t array array) -> (t array array -> 'a) -> (string -> unit) -> t -> t -> Checkpoint.state

This function is specifically designed for minimising the weights in a neural
network of graph structure. In Owl's earlier versions, the functions in the
regression module were actually implemented using this function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L568>`__



.. code-block:: ocaml

  val minimise_fun : ?state:Checkpoint.state -> Params.typ -> (t -> t) -> t -> Checkpoint.state * t

This function minimises ``f : x -> y`` w.r.t ``x``.

``x`` is an ndarray; and ``y`` is an scalar value.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/base/optimise/owl_optimise_generic.ml#L665>`__



