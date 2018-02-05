Optimise.Generic Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#60 entries have been extracted.
timestamp:1517873900

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/optimise/owl_optimise_generic_sig.ml>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/optimise/owl_optimise_generic.ml>`_



Utils module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val sample_num : t -> int

TODO



.. code-block:: ocaml

  val draw_samples : t -> t -> int -> t * t

TODO



.. code-block:: ocaml

  val get_chunk : t -> t -> int -> int -> t * t

TODO



Learning_Rate module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ =
    | Adagrad of float
    | Const of float
    | Decay of float * float
    | Exp_decay of float * float
    | RMSprop of float * float
    | Schedule of float array
    

types of learning rate



.. code-block:: ocaml

  val run : typ -> int -> 'a -> t -> t

TODO



.. code-block:: ocaml

  val default : typ -> typ

TODO



.. code-block:: ocaml

  val update_ch : typ -> t -> t -> t

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



Batch module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = Full | Mini of int | Sample of int | Stochastic
    

TODO



.. code-block:: ocaml

  val run : typ -> t -> t -> int -> t * t

TODO



.. code-block:: ocaml

  val batches : typ -> t -> int

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



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
    

TODO



.. code-block:: ocaml

  val run : typ -> t -> t -> t

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



Gradient module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = GD | CG | CD | NonlinearCG | DaiYuanCG | NewtonCG | Newton
    

TODO



.. code-block:: ocaml

  val run : typ -> (t -> t) -> t -> t -> t -> t -> t

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



Momentum module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = Standard of float | Nesterov of float | None
    

TODO



.. code-block:: ocaml

  val run : typ -> t -> t -> t

TODO



.. code-block:: ocaml

  val default : typ -> typ

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



Regularisation module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ =
    | L1norm of float
    | L2norm of float
    | Elastic_net of float * float
    | None
    

TODO



.. code-block:: ocaml

  val run : typ -> t -> t

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



Clipping module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = L2norm of float | Value of float * float | None
    

TODO



.. code-block:: ocaml

  val run : typ -> t -> t

TODO



.. code-block:: ocaml

  val default : typ -> typ

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



Stopping module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type typ = Const of float | Early of int * int | None
    

TODO



.. code-block:: ocaml

  val run : typ -> float -> bool

TODO



.. code-block:: ocaml

  val default : typ -> typ

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



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
    mutable ch : t array array;
    }
    

TODO



.. code-block:: ocaml

  type typ =
    | Batch of int
    | Epoch of float
    | Custom of (state -> unit)
    | None
    

TODO



.. code-block:: ocaml

  val init_state : int -> float -> state

TODO



.. code-block:: ocaml

  val default_checkpoint_fun : (string -> 'a) -> 'a

TODO



.. code-block:: ocaml

  val print_state_info : state -> unit

TODO



.. code-block:: ocaml

  val print_summary : state -> unit

TODO



.. code-block:: ocaml

  val run : typ -> (string -> unit) -> int -> t -> state -> unit

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



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
    

TODO



.. code-block:: ocaml

  val default : unit -> typ

TODO



.. code-block:: ocaml

  val config : ?batch:Batch.typ -> ?gradient:Gradient.typ -> ?loss:Loss.typ -> ?learning_rate:Learning_Rate.typ -> ?regularisation:Regularisation.typ -> ?momentum:Momentum.typ -> ?clipping:Clipping.typ -> ?stopping:Stopping.typ -> ?checkpoint:Checkpoint.typ -> ?verbosity:bool -> float -> typ

TODO



.. code-block:: ocaml

  val to_string : typ -> string

TODO



Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val minimise_weight : ?state:Checkpoint.state -> Params.typ -> (t -> t -> t) -> t -> t -> t -> Checkpoint.state * t

TODO



.. code-block:: ocaml

  val minimise_network : ?state:Checkpoint.state -> Params.typ -> (t -> t * t array array) -> (t -> t array array * t array array) -> (t array array -> 'a) -> (string -> unit) -> t -> t -> Checkpoint.state

TODO



.. code-block:: ocaml

  val minimise_fun : ?state:Checkpoint.state -> Params.typ -> (t -> t) -> t -> Checkpoint.state * t

TODO



