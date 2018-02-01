N-Dimensional Array
=================================================

N-dimensional array is the building block of Owl library. It serves as the core dense data structure and many advanced numerical functions are defined atop of it. For example, ``Algodiff``, ``Optimise``, ``Neural``, and ``Lazy`` all these functors take Ndarray module as their input.

Due to its importance, I have implemented a comprehensive set of operations on Ndarray, all of which are defined in `owl_dense_ndarray_generic.mli <https://github.com/ryanrhymes/owl/blob/master/src/owl/dense/owl_dense_ndarray_generic.mli>`_. Many of these functions (especially the critical ones) in Owl's core library have corresponding C-stub code to guarantee the best performance. If you have a look at the Ndarray's ``mli`` file, you can can see hundreds. But do not get scared by the number, many of them are similar and can be grouped together. In this chapter, I will explain these functions in details w.r.t these several groups.



Ndarray Types
-------------------------------------------------

The very first thing to understand is the types used in Ndarray. Owl's Ndarray module is built directly on top of OCaml's native ``Bigarray``, more specifically it is ``Bigarray.Genarray``. Therefore, Ndarray has the same type as that of ``Genarray``. I did not wrap Genarray into another type therefore changing the data between Owl and other libraries are trivial.

OCaml's Bigarray can further use ``kind`` GADT to specify the number type, precision, and memory layout. In Owl, I only keep the first two but fix the last one because Owl only uses ``C-layout``, or ``Row-based layout`` in its implementation. See the type definition in Ndarray module.

.. code-block:: ocaml

  type ('a, 'b) t = ('a, 'b, c_layout) Genarray.t


Technically, ``C-layout`` indicates the memory address is continuous at the high dimensions, comparing to the ``Fortran-layout`` whose continuous memory address is at the low dimensions. The reason why I made this decision is as follows.

* Mixing two layouts together opens a can of worms and is the source of bugs. Especially, indexing in Fortran starts from 1 whereas indexing in C starts form 0. Many native OCaml data structures such as ``Array`` and ``List`` all start indexing from 0, so using ``C-layout`` avoids many potential troubles in using the library.

* Supporting both layouts adds a significant amount of complexity in implementing underlying Ndarray functions. Due to the difference in memory layout, code performs well on one layout may not does well on another. Many functions may require different implementations given different layout. This will add too much complexity and increase the code base with marginal benefits.

* Owl has rather different design principles comparing to OCaml's Bigarray. The Bigarray serves as a basic tool to operate on a chunk of memory living outside OCaml's heap, facilitating exchanging data between different libraries (including Fortran ones). Owl focuses on providing high-level numerical functions allowing programmers to write concise analytical code. The simple design and small code base outweighs the benefits of supporting both layouts.


Because of Bigarray, Owl's Ndarray is also subject to maximum 16 dimensions limits. Moreover, Matrix is just a special case of n-dimensional array, and in fact many functions in ``Matrix`` module simply calls the same functions in Ndarray. But the module does provide more matrix-specific functions such as iterating rows or columns, and etc.



Creation Functions
-------------------------------------------------

The first group of functions I want to introduce is creation function. They generate a dense data structure for you to work on further. The most often used ones are probably these four.

.. code-block:: ocaml

  val empty : ('a, 'b) kind -> int array -> ('a, 'b) t

  val create : ('a, 'b) kind -> int array -> 'a -> ('a, 'b) t

  val zeros : ('a, 'b) kind -> int array -> ('a, 'b) t

  val ones : ('a, 'b) kind -> int array -> ('a, 'b) t


These four functions return an ndarray of specified shape, number type, and precision. ``empty`` function is different from the other three -- it does not really allocate any memory until you access it. Therefore, calling ``empty`` function is very fast.

The other three functions are self-explained, ``zeros`` and ``ones`` fill the allocated memory with zeors and one respectively, whereas ``create`` function fills the memory with the specified value.

If you need random numbers, you can use another three creation functions that return an ndarray where the elements following certain distributions.

.. code-block:: ocaml

  val uniform : ('a, 'b) kind -> ?a:'a -> ?b:'a -> int array -> ('a, 'b) t
  (* create an ndarray follows uniform distribution. *)

  val gaussian : ('a, 'b) kind -> ?mu:'a -> ?sigma:'a -> int array -> ('a, 'b) t
  (* create an ndarray follows gaussian distribution. *)

  val bernoulli : ('a, 'b) kind -> ?p:float -> int array -> ('a, 'b) t
  (* create a 0-1 ndarray follows bernoulli distribution. *)


Sometimes, we want to generate numbers with equal distance between two consecutive elements. These ndarrays are useful in generating intervals and plotting figures.

.. code-block:: ocaml

  val sequential : ('a, 'b) kind -> ?a:'a -> ?step:'a -> int array -> ('a, 'b) t
  (* generate sequential numbers with specified starting point and step size *)

  val linspace : ('a, 'b) kind -> 'a -> 'a -> int -> ('a, 'b) t
  (* generate a 1-d array with specified starting and ending points, and the number of points. *)

  val logspace : ('a, 'b) kind -> ?base:float -> 'a -> 'a -> int -> ('a, 'b) t
  (* similar to linspace but the distance is log-spaced. *)


If these functions cannot satisfy your need, Ndarray provides a more flexible mechanism allowing you to have more control over the initialisation of an ndarray.

.. code-block:: ocaml

  val init : ('a, 'b) kind -> int array -> (int -> 'a) -> ('a, 'b) t

  val init_nd : ('a, 'b) kind -> int array -> (int array -> 'a) -> ('a, 'b) t


The difference between the two is: ``init`` passes 1-d index to the user-defined function wheras ``init_nd`` passes n-dimensional index. As a result, ``init`` is much faster than ``init_nd``. The following code creates an ndarray where all the elements are even numbers.

.. code-block:: ocaml

  let x = Arr.init [|6;8|] (fun i -> 2. *. (float_of_int i));;




Properties Functions
-------------------------------------------------

After an ndarray is created, you can use various functions in the module to obtain its properties. For example, the following functions are commonly used ones.

.. code-block:: ocaml

  val shape : ('a, 'b) t -> int array
  (** [shape x] returns the shape of ndarray [x]. *)

  val num_dims : ('a, 'b) t -> int
  (** [num_dims x] returns the number of dimensions of ndarray [x]. *)

  val nth_dim : ('a, 'b) t -> int -> int
  (** [nth_dim x] returns the size of the nth dimension of [x]. *)

  val numel : ('a, 'b) t -> int
  (** [numel x] returns the number of elements in [x]. *)

  val nnz : ('a, 'b) t -> int
  (** [nnz x] returns the number of non-zero elements in [x]. *)

  val density : ('a, 'b) t -> float
  (** [density x] returns the percentage of non-zero elements in [x]. *)

  val size_in_bytes : ('a, 'b) t -> int
  (** [size_in_bytes x] returns the size of [x] in bytes in memory. *)

  val same_shape : ('a, 'b) t -> ('a, 'b) t -> bool
  (** [same_shape x y] checks whether [x] and [y] has the same shape or not. *)

  val kind : ('a, 'b) t -> ('a, 'b) kind
  (** [kind x] returns the type of ndarray [x]. *)


Note that ``nnz`` and ``density`` need to traverse through all the elements in an ndarray, but because the implementation is in C so even for a very large ndarray the performance is still good.

Property functions are easy to understand. In the following, I want to focus on three typical operations on n-dimensional array worth your special attention - ``map``, ``fold``, and ``scan``.



Map Functions
-------------------------------------------------

`map` function transforms from one ndarray to another with a given function, which is often done by applying the transformation function to every element in the original ndarray. The ``map`` function in Owl is pure and always generates a fresh new data structure rather than modifying original one.

For example, the following code add 1 to every element in ``x``

.. code-block:: ocaml

  let x = Arr.uniform [|3;4;5|];;
  let y = Arr.map (fun a -> a +. 1.) x;;


``map`` function can be very useful in implementing vectorised math functions. Many functions in Ndarray can be categorised into this group, such as ``sin``, ``cos``, ``neg``, and etc. Here are some examples to show how to make your own vectorised functions.

.. code-block:: ocaml

  let vec_sin x = Arr.map sin x;;

  let vec_cos x = Arr.map cos x;;

  let vec_log x = Arr.map log x;;

  ...


If you need indices in the transformation function, you can use ``mapi`` function which passes in the 1-d index of the element being accessed.

.. code-block:: ocaml

  val mapi : (int -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t



Fold Functions
-------------------------------------------------

`fold` function is often referred to as reduction in other programming languages. ``fold`` function has a named parameter called ``axis``, with which you can specify along what axis you want to fold a given ndarray.

.. code-block:: ocaml

  val fold : ?axis:int -> ('a -> 'a -> 'a) -> 'a -> ('a, 'b) t -> ('a, 'b) t


The ``axis`` parameter is optional, if you do not specify one, the ndarray will be flattened first folding happens along the zero dimension. In other words, the all the elements will be folded into a one-element one-dimensional ndarray. The ``fold`` function in Ndarray is actually folding from left, and you can also specify an initial value of the folding.

The code below demonstrates how to implement your own ``sum'`` function.

.. code-block:: ocaml

  let sum' ?axis x = Arr.fold ?axis ( +. ) 0. x;;


``sum``, ``sum'``, ``prod``, ``prod'``, ``min``, ``min'``, ``mean``, ``mean'`` all belong to this group. About the difference between the functions with/without prime ending, please refer to the chapter on :doc:`Function Naming Conventions <naming>`.

Similarly, if you need indices in folding function, you can use ``foldi`` which passes in 1-d indices.

.. code-block:: ocaml

  val foldi : ?axis:int -> (int -> 'a -> 'a -> 'a) -> 'a -> ('a, 'b) t -> ('a, 'b) t



Scan Functions
-------------------------------------------------

To some extent, the ``scan`` function is like the combination of ``map`` and ``fold``. It accumulates the value along the specified axis but it does not change the shape of the input. Think about how do we generate a cumulative distribution function (CDF) from a probability density/mass function (PDF/PMF).

The type signature of ``scan`` looks like this in Ndarray.

.. code-block:: ocaml

  val scan : ?axis:int -> ('a -> 'a -> 'a) -> ('a, 'b) t -> ('a, 'b) t


There are several functions belong to this group, such as ``cumsum``, ``cumprod``, ``cummin``, ``cummax``, and etc. To implement one ``cumsum`` for yourself, you can write in the following way.

.. code-block:: ocaml

  let cumsum ?axis x = Arr.scan ?axis ( +. ) x;;


Again, you can use ``scani`` to obtain the indices in the passed in cumulative functions.



Vectorised Math
-------------------------------------------------



Comparison Functions
-------------------------------------------------



Iteration Functions
-------------------------------------------------

index translation thing.



Manipulation Functions
-------------------------------------------------



Serialisation
-------------------------------------------------
