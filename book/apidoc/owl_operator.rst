Operator Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#72 entries have been extracted.
timestamp:1517862062

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_operator.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_operator.ml>`_



Basic operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( + ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``add``



.. code-block:: ocaml

  val ( - ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``sub``



.. code-block:: ocaml

  val ( * ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``mul``



.. code-block:: ocaml

  val ( / ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``div``



.. code-block:: ocaml

  val ( +$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``add_scalar``



.. code-block:: ocaml

  val ( -$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``sub_scalar``



.. code-block:: ocaml

  val ( *$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``mul_scalar``



.. code-block:: ocaml

  val ( /$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``div_scalar``



.. code-block:: ocaml

  val ( $+ ) : 'a -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``scalar_add``



.. code-block:: ocaml

  val ( $- ) : 'a -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``scalar_sub``



.. code-block:: ocaml

  val ( $* ) : 'a -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``scalar_mul``



.. code-block:: ocaml

  val ( $/ ) : 'a -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``scalar_div``



.. code-block:: ocaml

  val ( = ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``equal``



.. code-block:: ocaml

  val ( != ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``not_equal``



.. code-block:: ocaml

  val ( <> ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``not_equal``



.. code-block:: ocaml

  val ( > ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``greater``



.. code-block:: ocaml

  val ( < ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``less``



.. code-block:: ocaml

  val ( >= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``greater_equal``



.. code-block:: ocaml

  val ( <= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``less_equal``



Extended operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( =$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``equal_scalar``



.. code-block:: ocaml

  val ( !=$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``not_equal_scalar``



.. code-block:: ocaml

  val ( <>$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``not_equal_scalar``



.. code-block:: ocaml

  val ( <$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``less_scalar``



.. code-block:: ocaml

  val ( >$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``greater_scalar``



.. code-block:: ocaml

  val ( <=$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``less_equal_scalar``



.. code-block:: ocaml

  val ( >=$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``greater_equal_scalar``



.. code-block:: ocaml

  val ( =. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_equal``



.. code-block:: ocaml

  val ( !=. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_not_equal``



.. code-block:: ocaml

  val ( <>. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_not_equal``



.. code-block:: ocaml

  val ( <. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_less``



.. code-block:: ocaml

  val ( >. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_greater``



.. code-block:: ocaml

  val ( <=. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_less_equal``



.. code-block:: ocaml

  val ( >=. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_greater_equal``



.. code-block:: ocaml

  val ( =.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_equal_scalar``



.. code-block:: ocaml

  val ( !=.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_not_equal_scalar``



.. code-block:: ocaml

  val ( <>.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_not_equal_scalar``



.. code-block:: ocaml

  val ( <.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_less_scalar``



.. code-block:: ocaml

  val ( >.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_greater_scalar``



.. code-block:: ocaml

  val ( <=.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_less_equal_scalar``



.. code-block:: ocaml

  val ( >=.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_greater_equal_scalar``



.. code-block:: ocaml

  val ( =~ ) : ?eps:float -> ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``approx_equal``



.. code-block:: ocaml

  val ( =~$ ) : ?eps:float -> ('a, 'b) M.t -> 'a -> bool

Operator of ``approx_equal_scalar``



.. code-block:: ocaml

  val ( =~. ) : ?eps:float -> ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``approx_elt_equal``



.. code-block:: ocaml

  val ( =~.$ ) : ?eps:float -> ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``approx_elt_equal_scalar``



.. code-block:: ocaml

  val ( % ) : (float, 'a) M.t -> (float, 'a) M.t -> (float, 'a) M.t

Operator of ``fmod``



.. code-block:: ocaml

  val ( %$ ) : (float, 'a) M.t -> float -> (float, 'a) M.t

Operator of ``fmod_scalar``



.. code-block:: ocaml

  val ( ** ) : (float, 'a) M.t -> (float, 'a) M.t -> (float, 'a) M.t

Operator of ``pow``



.. code-block:: ocaml

  val ( $** ) : float -> (float, 'a) M.t -> (float, 'a) M.t

Operator of ``scalar_pow``



.. code-block:: ocaml

  val ( **$ ) : (float, 'a) M.t -> float -> (float, 'a) M.t

Operator of ``pow_scalar``



.. code-block:: ocaml

  val ( += ) : ('a, 'b) M.t -> ('a, 'b) M.t -> unit

Operator of ``add_``



.. code-block:: ocaml

  val ( -= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> unit

Operator of ``sub_``



.. code-block:: ocaml

  val ( *= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> unit

Operator of ``mul_``



.. code-block:: ocaml

  val ( /= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> unit

Operator of ``div_``



.. code-block:: ocaml

  val ( +$= ) : ('a, 'b) M.t -> 'a -> unit

Operator of ``add_scalar_``



.. code-block:: ocaml

  val ( -$= ) : ('a, 'b) M.t -> 'a -> unit

Operator of ``sub_scalar_``



.. code-block:: ocaml

  val ( *$= ) : ('a, 'b) M.t -> 'a -> unit

Operator of ``mul_scalar_``



.. code-block:: ocaml

  val ( /$= ) : ('a, 'b) M.t -> 'a -> unit

Operator of ``div_scalar_``



.. code-block:: ocaml

  val ( .!{} ) : ('a, 'b) M.t -> Owl_types.index list -> ('a, 'b) M.t

Operator of ``get_fancy``



.. code-block:: ocaml

  val ( .!{}<- ) : ('a, 'b) M.t -> Owl_types.index list -> ('a, 'b) M.t -> unit

Operator of ``set_fancy``



.. code-block:: ocaml

  val ( .${} ) : ('a, 'b) M.t -> int list list -> ('a, 'b) M.t

Operator of ``get_slice``



.. code-block:: ocaml

  val ( .${}<- ) : ('a, 'b) M.t -> int list list -> ('a, 'b) M.t -> unit

Operator of ``set_slice``



Matrix-specific operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( *@ ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``dot``



.. code-block:: ocaml

  val ( @= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``concat_vertical``



.. code-block:: ocaml

  val ( @|| ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``concat_horizontal``



.. code-block:: ocaml

  val ( .%{} ) : ('a, 'b) M.t -> int array -> 'a

Operator of ``get``



.. code-block:: ocaml

  val ( .%{}<- ) : ('a, 'b) M.t -> int array -> 'a -> unit

Operator of ``set``



Ndarray-specific operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( .%{} ) : ('a, 'b) M.t -> int array -> 'a

Operator of ``get``



.. code-block:: ocaml

  val ( .%{}<- ) : ('a, 'b) M.t -> int array -> 'a -> unit

Operator of ``set``



