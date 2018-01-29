Broadcasting Operation
=================================================

Indexing, slicing, and broadcasting are three fundamental functions in Ndarray module. I already wrote a separate tutorial for indexing and slicing, so this one will just focus on the broadcasting operation.

There is a lot of material on the Internet about the broadcasting (e.g., in numpy, julia, and etc.), you can simply google it. Owl has implemented the same function so anything you learnt before can be equally applied here.



Motivation
-------------------------------------------------

The motivation is obvious: in many real-world applications, we need to operate two ndarrays/matrices whose shapes do not match. E.g., we have a `1000 x 500` matrix `x` containing 1000 samples, and each sample has 500 features. Now we want to add a bias value for each feature, i.e. a bias vector `v` of shape `1 x 500`.

Because the shape of `x` and `v` do not match, we need to tile `v` so that it has the same shape as that of `x`.

```ocaml
let x = Mat.uniform 1000 500;;
let v = Mat.uniform 1 500;;
let u = Mat.tile v [|1000;1|];;
Mat.(x + u);;
```

It works but everyone can see that the solution uses much more memory. High memory consumption is very pleasant for many applications, especially for those running on resource-constrained devices. Therefore we need the broadcasting operation come to rescue.

By the way, I used matrices as an example, but I am sure you know that the same can be applied to ndarrays.


Simple Conventions
-------------------------------------------------

The convention of broadcasting operation is much simpler than slicing. Given two data structures (matrix or ndarray) of the same dimensionality, for each dimension, the following two conditions must be met:

- both are equal.
- either is one.

Here are some valid shapes where broadcasting can be applied.

```bash
x : [| 2; 1; 3 |]    y : [| 1; 1; 1 |]
x : [| 2; 1; 3 |]    y : [| 2; 1; 1 |]
x : [| 2; 1; 3 |]    y : [| 2; 3; 1 |]
x : [| 2; 1; 3 |]    y : [| 2; 3; 3 |]
x : [| 2; 1; 3 |]    y : [| 1; 1; 3 |]
...
```

Here are some invalid shapes that violate the aforementioned conventions so the broadcasting cannot be applied.

```bash
x : [| 2; 1; 3 |]    y : [| 1; 1; 2 |]
x : [| 2; 1; 3 |]    y : [| 3; 1; 1 |]
x : [| 2; 1; 3 |]    y : [| 3; 1; 1 |]
...
```

What if `y` has smaller dimensionality than `x`? E.g., `x` has the shape `[|2;3;4;5|]` but `y` has the shape `[|4;5|]`. In this case, Owl will first call `Ndarray.expand` function to increase `y`'s dimensionality to the same as `x`'s. Technically, this is done by appending `1`s to lower dimension of `y`, so the new shape of `y` becomes `[|1;1;4;5|]`.

You can try `expand` by yourself, as below.

```ocaml
let y = Arr.sequential [|4;5|];;
let y' = Arr.expand y 4;;
Arr.shape y';;  (* returns [|1;1;4;5|] *)
```



Supported Operations
-------------------------------------------------

The broadcasting operation is transparent to users, which means it will be automatically applied if the shapes of two operators do not match (given the aforementioned conventions are met of course). In other words, you do not need to worry about broadcasting yourself and Owl will take care of it. Currently, the following operations in Owl support broadcasting:

- `add` `+`
- `sub` `-`
- `mul` `*`
- `div` `/`
- `pow` `**`
- `min2`
- `max2`
- `atan2`
- `hypot`
- `fmod`
- `elt_equal` `=.`
- `elt_not_equal` `!=.` `<>.`
- `elt_less` `<.`
- `elt_greater` `>.`
- `elt_less_equal` `<=.`
- `elt_greater_equal` `>=.`
