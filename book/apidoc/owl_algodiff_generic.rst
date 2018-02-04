Algodiff.Generic Functor
===============================================================================

This document is auto-generated for Owl's APIs.
#23 entries have been extracted.
timestamp:1517702703

.. code-block:: ocaml

  val diff : (t -> t) -> t -> t

``diff f x`` returns the exat derivative of a function ``f : scalar -> scalar``
at point ``x``. Simply calling ``diff f`` will return its derivative function ``g``
of the same type, i.e. ``g : scalar -> scalar``.

Keep calling this function will give you higher-order derivatives of ``f``, i.e.
``f |> diff |> diff |> diff |> ...``



.. code-block:: ocaml

  val diff' : (t -> t) -> t -> t * t

similar to ``diff``, but return ``(f x, diff f x)``.



.. code-block:: ocaml

  val grad : (t -> t) -> t -> t

gradient of ``f`` : (vector -> scalar) at ``x``, reverse ad.



.. code-block:: ocaml

  val grad' : (t -> t) -> t -> t * t

similar to ``grad``, but return ``(f x, grad f x)``.



.. code-block:: ocaml

  val jacobian : (t -> t) -> t -> t

jacobian of ``f`` : (vector -> vector) at ``x``, both ``x`` and ``y`` are row vectors.



.. code-block:: ocaml

  val jacobian' : (t -> t) -> t -> t * t

similar to ``jacobian``, but return ``(f x, jacobian f x)``



.. code-block:: ocaml

  val jacobianv : (t -> t) -> t -> t -> t

jacobian vector product of ``f`` : (vector -> vector) at ``x`` along ``v``,
    forward ad. Namely, it calcultes ``(jacobian x) v``



.. code-block:: ocaml

  val jacobianv' : (t -> t) -> t -> t -> t * t

similar to ``jacobianv'``, but return ``(f x, jacobianv f x v)``



.. code-block:: ocaml

  val jacobianTv : (t -> t) -> t -> t -> t

transposed jacobian vector product of ``f : (vector -> vector)`` at ``x``
along ``v``, backward ad. Namely, it calculates ``transpose ((jacobianv f x v))``.



.. code-block:: ocaml

  val jacobianTv' : (t -> t) -> t -> t -> t * t

similar to ``jacobianTv``, but return ``(f x, transpose (jacobianv f x v))``



.. code-block:: ocaml

  val hessian : (t -> t) -> t -> t

hessian of ``f`` : (scalar -> scalar) at ``x``.



.. code-block:: ocaml

  val hessian' : (t -> t) -> t -> t * t

simiarl to ``hessian``, but return ``(f x, hessian f x)``



.. code-block:: ocaml

  val hessianv : (t -> t) -> t -> t -> t

hessian vector product of ``f`` : (scalar -> scalar) at ``x`` along ``v``.
    Namely, it calculates ``(hessian x) v``.



.. code-block:: ocaml

  val hessianv' : (t -> t) -> t -> t -> t * t

similar to ``hessianv``, but return ``(f x, hessianv f x v)``.



.. code-block:: ocaml

  val laplacian : (t -> t) -> t -> t

laplacian of ``f : (scalar -> scalar)`` at ``x``.



.. code-block:: ocaml

  val laplacian' : (t -> t) -> t -> t * t

simiar to ``laplacian``, but return ``(f x, laplacian f x)``.



.. code-block:: ocaml

  val gradhessian : (t -> t) -> t -> t * t

return ``(grad f x, hessian f x)``, ``f : (scalar -> scalar)``



.. code-block:: ocaml

  val gradhessian' : (t -> t) -> t -> t * t * t

return ``(f x, grad f x, hessian f x)``



.. code-block:: ocaml

  val gradhessianv : (t -> t) -> t -> t -> t * t

return ``(grad f x v, hessian f x v)``



.. code-block:: ocaml

  val gradhessianv' : (t -> t) -> t -> t -> t * t * t

return ``(f x, grad f x v, hessian f x v)``



.. code-block:: ocaml

  val to_trace : t list -> string

``to_trace [t0; t1; ...]`` outputs the trace of computation graph on the
terminal in a human-readable format.



.. code-block:: ocaml

  val to_dot : t list -> string

``to_dot [t0; t1; ...]`` outputs the trace of computation graph in the dot
file format which you can use other tools further visualisation, such as
Graphviz.



.. code-block:: ocaml

  val pp_num : Format.formatter -> t -> unit

``pp_num t`` pretty prints the abstract number used in ``Algodiff``.



