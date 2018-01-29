Function Naming Conventions
=================================================

Every software system has its own rules and conventions which require the developers to remember and comply with. Owl is not an exception, for example our [rules on broadcasting operation](https://github.com/ryanrhymes/owl/wiki/Tutorial:-Broadcasting-Operation) and [conventions on slicing definition](https://github.com/ryanrhymes/owl/wiki/Tutorial:-Indexing-and-Slicing). In this tutorial, I will focus on the naming conventions of functions.



Pure vs. Impure
-------------------------------------------------

`Ndarray` module contains a lot of functions to allow us manipulate arrays and perform mathematical operations atop of them. The **pure functions** refer to those which do not modify the passed in variables but always return a new one as result. In contrast, **impure functions** refer to those which modifies the passed-in variables in place.

The arguments between pure and impure functions will never end. However, the introduction of impure functions to Owl is under many careful and practical considerations. One primary motivation of using in-place modification is to avoid expensive memory allocation and deallocation, this can significantly improve the performance of a numerical application especially when large ndarrays and matrices involved.

Certainly, using impure functions makes it difficult to reason the correctness of your code. Therefore, be careful when you decide to use these function, and always remember that you can use `Lazy` functor to achieve the same effect but offload the "dangerous task" to Owl. Please refer to [this tutorial on "Laziness and Dataflow"](https://github.com/ryanrhymes/owl/wiki/Tutorial:-Laziness-and-Dataflow) for more details.

Many pure functions in Owl have their corresponding impure version, the difference is that impure version has an extra underscore "`_`" as their ending. For example, the following functions are the pure functions in `Arr` module.

```ocaml
Arr.sin;;
Arr.cos;;
Arr.log;;
Arr.abs;;
Arr.add;;
Arr.mul;;
```

Their corresponding impure functions are as follows.

```ocaml
Arr.sin_;;
Arr.cos_;;
Arr.log_;;
Arr.abs_;;
Arr.add_;;
Arr.mul_;;
```

For unary operators such as `Arr.sin x`, the situation is rather straightforward, `x` will be modified in place. However, for binary operates such as `Arr.add_scalar_ x a` and `Arr.add_ x y`, the situation needs some clarification. For `Arr.add_scalar x a`, `x` will be modified in place and stores the final result. For `Arr.add_ x y`, the first argument `x` will be modified in place. Because the binary operators in Owl support broadcasting operations by default, this indicates when using impure functions every dimension of the first argument `x` must not be smaller than that of the second argument `y`. In other words, impure function only allows broadcasting smaller `y` onto `x`.

Corresponding to `Arr.(x + y)` which returns the result in a new ndarray, you can write `Arr.(x += y)` which adds up `x` and `y` and saves the result into `x`.



Ndarray vs. Scalar
-------------------------------------------------

There are many functions can be categorised into reduction operations, such as `Arr.sum`, `Arr.prod`, `Arr.min`, `Arr.mean`, and etc. However, when you apply these reduction operations on a multi-dimensional array, you have two options:

* reduce along one specified axis;
* flatten the ndarray into a vector then reduce all the elements.

The first option explain why all the reduction function in Owl has a name parameter called `axis`. The second option is more nuance: the function still returns an ndarray as result but the returned ndarray only contains one element. You can understand this by trying the following code snippet then compare the returns.

```ocaml
let x = Arr.sequential [|3;3;3|];;
Arr.sum ~axis:1 x;;
Arr.sum x;;
```

When we reduce all the elements in an ndarray, we often want a scalar value as return so we don't have extract it out from the returned ndarray. This is not a problem for the languages like Python and Julia since the return type is dynamically determined. However, for OCaml, this turns out to be challenging: we either use a unified type; or we implement different functions. In the end, we chose the latter in Owl's design. As a result, every reduction operation has two versions:

* one allows you to reduce along the specified axis, or reduce all the elements, but always returns an ndarray;
* one only reduces all the elements and always returns a scalar value.

The difference between the two is that the functions returning a scalar ends up with a prime "`'`" in their names. For example, for the first type of functions that return an ndarray, their names look like these.

```ocaml
Arr.sum;;
Arr.min;;
Arr.prod;;
Arr.mean;;
```

For the second type of functions that return a scalar, their name looks like these.

```ocaml
Arr.sum';;
Arr.min';;
Arr.prod';;
Arr.mean';;
```

Let's extend the previous code snippet, and test it in OCaml's toplevel. Then you will understand the difference immediately.

```ocaml
let x = Arr.sequential [|3;3;3|];;
let a = Arr.sum ~axis:1 x;;
let b = Arr.sum x;;
let c = Arr.sum' x;;
```



Before Finishing
-------------------------------------------------

Rules and conventions often represent the tradeoffs in a design. By clarifying the restrictions, we hope the programmers can choose the right functions to use in a specific scenario. This tutorial may be updated in future to reflect the recent changes in Owl's design. But for now, you just need to ...
