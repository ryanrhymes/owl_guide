Function Naming Conventions
=================================================

Every software system has its own rules and conventions which require the developers to comply with. Owl is not an exception, for example our :doc:`rules on broadcasting operation <broadcast>` and :doc:`conventions on slicing definition <slicing>`. In this chapter, I will cover the naming conventions of Owl's functions.



Pure vs. Impure
-------------------------------------------------

``Ndarray`` module contains a lot of functions to manipulate arrays and perform mathematical operations over them. The **pure functions** (aka immutable functions) refer to those which do not modify the passed in variables but always return a new one as result. In contrast, **impure functions** (aka mutable functions) refer to those which modifies the passed-in variables in place.

The arguments between pure and impure functions will never end. Functional programming in general promotes the use of immutable data structures. However, the introduction of impure functions to Owl is under many careful and practical considerations. One primary motivation of using in-place modification is to avoid expensive memory allocation and deallocation, this can significantly improve the performance of a numerical application especially when large ndarrays and matrices involved.

Using impure functions makes it difficult to reason the correctness of the code, therefore, you need to be careful when you decide to use them. Always remember that you can use ``Lazy`` functor to achieve the same effect but offload the "dangerous task" to Owl. Please refer to :doc:`Laziness and Dataflow <lazy>` chapter for more details.

Many pure functions in Owl have their corresponding impure version, the difference is that impure version has an extra underscore "``_``" as their ending. For example, the following functions are the pure functions in ``Arr`` module.

.. code-block:: ocaml

  Arr.sin;;
  Arr.cos;;
  Arr.log;;
  Arr.abs;;
  Arr.add;;
  Arr.mul;;


Their corresponding impure functions are as follows.

.. code-block:: ocaml

  Arr.sin_;;
  Arr.cos_;;
  Arr.log_;;
  Arr.abs_;;
  Arr.add_;;
  Arr.mul_;;


For unary operators such as ``Arr.sin x``, the situation is rather straightforward, ``x`` will be modified in place. However, for binary operates such as ``Arr.add_scalar_ x a`` and ``Arr.add_ x y``, the situation needs some clarifications. For ``Arr.add_scalar x a``, ``x`` will be modified in place and stores the final result, this is trivial.

For ``Arr.add_ x y``, the first argument ``x`` will be modified in place. Because the binary operators in Owl support broadcasting operations by default, this indicates when using impure functions every dimension of the first argument ``x`` must not be smaller than that of the second argument `y`. In other words, impure function only allows broadcasting smaller ``y`` onto ``x``.

Most binary math functions in Owl are associated with a shorthand operator, such as ``+``, ``-``, ``*``, and ``/``. The impure versions also have their own operators. For exmaple, corresponding to `Arr.(x + y)` which returns the result in a new ndarray, you can write `Arr.(x += y)` which adds up `x` and `y` and saves the result into `x`.

* ``+`` vs. ``+=``
* ``-`` vs. ``-=``
* ``*`` vs. ``*=``
* ``/`` vs. ``/=``
* ``+$`` vs. ``+$=``
* ``-$`` vs. ``-$=``
* ``*$`` vs. ``*$=``
* ``/$`` vs. ``/$=``



Ndarray vs. Scalar
-------------------------------------------------

There are many functions can be categorised into reduction operations, such as ``Arr.sum``, ``Arr.prod``, ``Arr.min``, ``Arr.mean``, ``Arr.std``, and etc. All the reduction functions in Owl has a name parameter called ``axis`. When you apply these reduction operations on a multi-dimensional array, there are two possible cases:

* if axis is explicitly specified, then reduce along one specified axis;
* if axis is not specified, then flatten the ndarray into a vector then reduce all the elements (i.e., reduce along axis 0).

If the passed in ndarray is already one-dimensional, then two cases are equivalent. In the following code snippet, ``a`` has shape ``[|3;1;3|]`` whereas ``b`` has shape ``[|1|]`` since it only contains one element.

.. code-block:: ocaml

  let x = Arr.sequential [|3;3;3|];;
  let a = Arr.sum ~axis:1 x;;
  let b = Arr.sum x;;


If you plan to add the result in ``b`` with another float number, you need to retrieve the value by calling ``get`` function.

.. code-block:: ocaml

  let c = Arr.get b [|0|] in
    c +. 10.;;


This does not look very convenient if we always need to extract a scalar value from the return of reduction operations. This is not a problem for the languages like Python and Julia since the return type is dynamically determined. However, for OCaml, this turns out to be challenging: we either use a unified type; or we implement another set of functions. In the end, we picked the latter in Owl's design. As a result, every reduction operation has two versions:

* one allows you to reduce along the specified axis, or reduce all the elements, but always returns an ndarray;
* one only reduces all the elements and always returns a scalar value.

The difference between the two is that the functions returning a scalar ends up with an extra prime "``'``" character in their names. For example, for the first type of functions that return an ndarray, their function names look like these.

.. code-block:: ocaml

  Arr.sum;;
  Arr.min;;
  Arr.prod;;
  Arr.mean;;


For the second type of functions that return a scalar, their name looks like these.

.. code-block:: ocaml

  Arr.sum';;
  Arr.min';;
  Arr.prod';;
  Arr.mean';;


Technically, ``Arr.sum'`` is equivalent to the following code.

.. code-block:: ocaml

  let sum' x =
    let y = Arr.sum x in
    Arr.get y [|0|]


Let's extend the previous code snippet, and test it in OCaml's toplevel. Then you will understand the difference immediately.

.. code-block:: ocaml

  let x = Arr.sequential [|3;3;3|];;
  let a = Arr.sum ~axis:1 x;;
  let b = Arr.sum x;;
  let c = Arr.sum' x;;


Rules and conventions often represent the tradeoffs in a design. By clarifying the restrictions, we hope the programmers can choose the right functions to use in a specific scenario. This chapter may be updated in future to reflect the recent changes in Owl's design.
