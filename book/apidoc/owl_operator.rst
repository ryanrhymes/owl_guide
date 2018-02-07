Operator Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#72 entries have been extracted.
timestamp:1518020080

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_operator.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_operator.ml>`_



Basic operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( + ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``add``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( - ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``sub``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( * ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``mul``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( / ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``div``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( +$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``add_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( -$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``sub_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( *$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``mul_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( /$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``div_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( $+ ) : 'a -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``scalar_add``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( $- ) : 'a -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``scalar_sub``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( $* ) : 'a -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``scalar_mul``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( $/ ) : 'a -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``scalar_div``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( = ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( != ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``not_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <> ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``not_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( > ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``greater``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( < ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``less``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( >= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``greater_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``less_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



Extended operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( =$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( !=$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``not_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <>$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``not_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``less_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( >$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``greater_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <=$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``less_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( >=$ ) : ('a, 'b) M.t -> 'a -> bool

Operator of ``greater_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( =. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( !=. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_not_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <>. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_not_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_less``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( >. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_greater``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <=. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_less_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( >=. ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``elt_greater_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( =.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( !=.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_not_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <>.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_not_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_less_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( >.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_greater_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( <=.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_less_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( >=.$ ) : ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``elt_greater_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( =~ ) : ?eps:float -> ('a, 'b) M.t -> ('a, 'b) M.t -> bool

Operator of ``approx_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( =~$ ) : ?eps:float -> ('a, 'b) M.t -> 'a -> bool

Operator of ``approx_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( =~. ) : ?eps:float -> ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``approx_elt_equal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( =~.$ ) : ?eps:float -> ('a, 'b) M.t -> 'a -> ('a, 'b) M.t

Operator of ``approx_elt_equal_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( % ) : (float, 'a) M.t -> (float, 'a) M.t -> (float, 'a) M.t

Operator of ``fmod``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( %$ ) : (float, 'a) M.t -> float -> (float, 'a) M.t

Operator of ``fmod_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( ** ) : (float, 'a) M.t -> (float, 'a) M.t -> (float, 'a) M.t

Operator of ``pow``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( $** ) : float -> (float, 'a) M.t -> (float, 'a) M.t

Operator of ``scalar_pow``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( **$ ) : (float, 'a) M.t -> float -> (float, 'a) M.t

Operator of ``pow_scalar``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( += ) : ('a, 'b) M.t -> ('a, 'b) M.t -> unit

Operator of ``add_``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( -= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> unit

Operator of ``sub_``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( *= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> unit

Operator of ``mul_``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( /= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> unit

Operator of ``div_``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( +$= ) : ('a, 'b) M.t -> 'a -> unit

Operator of ``add_scalar_``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( -$= ) : ('a, 'b) M.t -> 'a -> unit

Operator of ``sub_scalar_``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( *$= ) : ('a, 'b) M.t -> 'a -> unit

Operator of ``mul_scalar_``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( /$= ) : ('a, 'b) M.t -> 'a -> unit

Operator of ``div_scalar_``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( .!{} ) : ('a, 'b) M.t -> Owl_types.index list -> ('a, 'b) M.t

Operator of ``get_fancy``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( .!{}<- ) : ('a, 'b) M.t -> Owl_types.index list -> ('a, 'b) M.t -> unit

Operator of ``set_fancy``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( .${} ) : ('a, 'b) M.t -> int list list -> ('a, 'b) M.t

Operator of ``get_slice``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( .${}<- ) : ('a, 'b) M.t -> int list list -> ('a, 'b) M.t -> unit

Operator of ``set_slice``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



Matrix-specific operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( *@ ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``dot``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( @= ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``concat_vertical``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( @|| ) : ('a, 'b) M.t -> ('a, 'b) M.t -> ('a, 'b) M.t

Operator of ``concat_horizontal``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( .%{} ) : ('a, 'b) M.t -> int array -> 'a

Operator of ``get``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( .%{}<- ) : ('a, 'b) M.t -> int array -> 'a -> unit

Operator of ``set``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



Ndarray-specific operators
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val ( .%{} ) : ('a, 'b) M.t -> int array -> 'a

Operator of ``get``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



.. code-block:: ocaml

  val ( .%{}<- ) : ('a, 'b) M.t -> int array -> 'a -> unit

Operator of ``set``

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_operator.ml#L17>`__



