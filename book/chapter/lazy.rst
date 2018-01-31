Lazy Evaluation and Dataflow
=================================================

This chapter is about lazy evaluation and dataflow programming in Owl. Different from Haskell, OCaml eagerly evaluates the expressions in a program. However, laziness can be very helpful in numerical applications which involve complicated computation graphs and large data chunks such as matrices. Laziness can potentially reduce unnecessary memory allocations, optimise computation graph, incrementally update results, and etc.

Owl is able to simulate the lazy evaluation atop of OCaml using its `Lazy functor`. This functor has been optimised for memory allocation. Moreover, ``Lazy`` functor also provides a dataflow programming model to explicitly construct a computation graph.

The examples used in this chapter can be found in `[lazy_eval.ml] <https://github.com/ryanrhymes/owl/blob/master/examples/lazy_eval.ml>`_.



Core APIs
-------------------------------------------------

The ``Lazy`` functor is specifically designed for numerical computing which uses ndarray as its core data structure. It does not aim to provide a general framework beyond aforementioned numerical scope. To generate a new module, you need to pass in Owl's ndarray module.

.. code-block:: ocaml

  module M = Owl.Lazy.Make (Dense.Ndarray.D);;
  module N = Owl.Lazy.Make (Dense.Ndarray.S);;


The code above generates two lazy modules supporting single and double precision float numbers respectively. In the generated modules, there are several core APIs you need to know.

- ``val variable : unit -> t`` : this function creates a placeholder for a variable in the computation graph. This is where you can start constructing a computation graph. The variables are the inputs of the graph, and you can plug in actual values later.

- ``val assign_arr : t -> A.arr -> unit`` : this function assigns a specific ndarray value to the variable previously created by ``variable`` function. Note that you can only assign values to those created by ``variable`` function, otherwise an exception will be thrown.

- ``val assign_elt : t -> A.elt -> unit`` : similar to ``assign_arr``, this function assigns a value of type ``A.elt`` to a variable. ``A.elt`` depends on the module you plug into ``Lazy`` functor, but it refers to a float number in our current context.

- ``val eval : t -> unit`` : this function evaluates the associated computation graph for a given variable of type ``t``.

- ``val to_arr : t -> A.arr`` : this function unpacks the value of an ndarray from a variable of type ``t``. You can only use this function after you call ``eval``.

- ``val to_elt : t -> A.elt`` : Similarly, ``to_elt`` is used for unpacking the value of float number out of a variable.

**Note**: ``assign_arr`` and ``assign_elt`` can only be applied to those variables previously created by the ``variable`` function. There are other ways to plug in the inputs into a computation graph, e.g. the following two functions.

- ``val of_arr : A.arr -> t`` : pack an ndarray and return it as a constant of type ``t``.
- ``val of_elt : A.elt -> t`` : pack an element and return it as a constant of type ``t``.

The difference is that inputs created by ``of_arr`` and ``of_elt`` are treated as **constants** and their values cannot be changed in the evaluation of a computation graph. Therefore, you cannot use ``assign_arr`` and ``assign_elt`` to change the value of inputs created by these two functions.



A Simple Example
-------------------------------------------------

The following code snippet shows how to perform a sequence of computation on an ndarray ``x`` with eager evaluation. This is how you write normal application in Owl normally.

.. code-block:: ocaml

  let eager_eval x () =
    Arr.(add x x |> log |> sin |> neg |> cos |> abs |> sinh |> round |> atan)


How can we perform the same computation using lazy evaluation? The following code demonstrates how ``Lazy`` functor can help us to achieve this.

.. code-block:: ocaml

  let lazy_eval x () =
    let a = M.variable () in
    let z = M.(add a a |> log |> sin |> neg |> cos |> abs |> sinh |> round |> atan) in
    M.assign_arr a x;
    M.eval z


As you can see, we first define a placeholder for variable ``a``. Then we use the predefined math operators in ``Lazy`` functor to construct the computation graph, and the code looks exactly the same as that in eager evaluation.

Comparing to eager evaluation, we need some extra steps: first, assign value ``x`` to variable ``a``; second, evaluate the computation graph by calling ``eval`` function. ``z`` is the output of the computation graph, you can also think ``z`` represents the expression that produces the final value.

We did not really extract the final value from ``z``, but it is trivial by calling ``M.to_arr z``.



Visualise Computation Graph
-------------------------------------------------

``Lazy`` functor provides two APIs that help you to visualise the computation graph corresponding to an expression.

* ``val to_trace : t list -> string`` : the function returns a string which can be printed out on the terminal directly.

* ``val to_dot : t list -> string`` : the function returns a dot-formatted string to represent the graph structure. Because it is in dot format, you can save it to a file then use another tool (such as GraphViz) to produce the figure.

For example, the following code prints out the trace using ``to_trace`` function.

.. code-block:: ocaml

  let print_trace a =
    let x = M.variable () in
    let y = M.variable () in
    let z = M.(add x y |> sin |> abs |> log) in
    M.assign_arr x a;
    M.assign_arr y a;
    M.eval z;
    M.to_trace [z] |> print_endline


You can probably see the similar output on your screen if you try it out in ``utop``. "valid" and "invalid" states relate to the internal mechanism of ``Lazy`` functor, we can simply ignore them at the moment.

.. code-block:: bash

  [ #5 name:abs state:invalid ] -> [ #6 name:log state:valid ]
  [ #4 name:sin state:invalid ] -> [ #5 name:abs state:invalid ]
  [ #3 name:add state:invalid ] -> [ #4 name:sin state:invalid ]
  [ #1 name:variable state:valid ] -> [ #3 name:add state:invalid ]
  [ #2 name:variable state:valid ] -> [ #3 name:add state:invalid ]


What if you want to actually visualise the graph in to a picture, then you need to use ``to_trace`` function as the following code snippet does.

.. code-block:: ocaml

  let print_graph () =
    let x = M.variable () in
    let y = M.variable () in
    let z = M.(add x y |> dot x |> sin |> abs |> sum' |> add_scalar x |> log |> atan2 y |> neg |> relu) in
    print_endline "visualise computation graph to dot file ...";
    M.to_dot [z] |> Utils.write_file "plot_lazy.dot";
    Sys.command "dot -Tpdf plot_lazy.dot -o plot_lazy.pdf"


With the code above, you can generate a nice figure as below. Note you need to install GraphViz on you local computer because ``Sys.command`` calls ``dot`` command which is a tool in GraphViz.


.. figure:: ../figure/plot_032.png
   :scale: 100 %
   :align: center
   :alt: computation graph



Incremental Computation
-------------------------------------------------

What is incremental computation? Many numerical applications involve calculations on a large amount of variables which further creates complicated computation graphs. Quite often, we only change the value of several variables then we have to re-evaluate the whole graph. However, re-evaluating the whole computation graph is very expensive and is not necessary in many cases.

Incremental computation refers to the situation we only re-evaluate the subgraph depending on the updated variables. This can also be referred to as `Self-Adjusting Computing (SAC)`, or `dataflow programming`. It has many names but the general idea is the same.

The flowing code shows how to perform incremental computation with ``Lazy`` functor.

.. code-block:: ocaml

  let incremental x =
    let a = M.variable () in
    let b = M.variable () in
    let c = M.(a |> sin |> cos |> abs |> log |> sum' |> mul_scalar a |> scalar_add b) in
    M.assign_arr a x;
    M.assign_elt b 5.;
    Printf.printf "Incremental#0:\t%.3f ms\n" (Utils.time (fun () -> M.eval c));
    M.assign_elt b 6.;
    Printf.printf "Incremental#1:\t%.3f ms\n" (Utils.time (fun () -> M.eval c));
    M.assign_elt b 7.;
    Printf.printf "Incremental#2:\t%.3f ms\n" (Utils.time (fun () -> M.eval c))


In the code, ``a`` and ``b`` are variables and ``c`` represents the expression we want to evaluate. After the first evaluation, we changed the assignment of ``b`` twice, then re-evaluate the expression.

Because of incremental computation, Owl does not have to re-calculate everything in the following evaluations. In fact, as we can see in the following figure, only the part of the computation graph in the red-dotted rectangular will be re-evaluated if we update variable ``b``. This mechanism can significantly reduce the computation time. On my computer, the first full evaluation takes about ``275ms`` whereas the latter two incremental ones takes only ``30ms`` each, a big win!


.. figure:: ../figure/plot_033.png
   :scale: 100 %
   :align: center
   :alt: incremental computation



Behind the Scene
-------------------------------------------------

In this section, I want to show you something under the hood. It is not critical if you just want to use ``Lazy`` functor, but knowing these details help you understand better about Owl's design.

``Lazy`` functor is optimised for memory allocation in numerical computing, because keep allocating large chunk of memory is really expensive. To reuse the allocated one, you can use in-place modification function in Owl. E.g., ``Arr.sin`` is a pure function and always returns a new ndarray whilst ``Arr.sin_`` performs in-place modification and overwrites the original ndarray. However, this is not safe and you should avoid using in-place modification unless you really know what you are doing.

``Lazy`` functor is an ideal solution in this case. It automatically tracks the reference number of each node in the computation graph and tries to reuse the allocated memory as much as possible. By so doing, ``Lazy`` module often brings us a huge benefit in both performance and memory usage when large ndarrays and matrices are involved in computation. You can safely construct very complicated computation graphs without worrying about blowing up your memory. For example, you can keep transforming a big ndarray using ``sin`` function one million times and only constant memory will be used (plus some additional overhead in maintaining the graph structure).


One thing worth noting is that ``Lazy`` functor will never overwrite the value you have assigned on a variable, so you can always safely reuse them later, the functor only tries to re-use the memory of internal nodes which are opaque to the outside. In short, you do not need to worry about the issues that something might get overwritten then later cause problems in your application, Owl will take care of it.

Regarding incremental computation, every time you re-assign a new value on a variable, ``Lazy`` functor will invalidate all the nodes in the subgraph that depends on this variable, i.e. its descendant nodes. When you evaluate an expression, only the nodes in the subgraph this expression depends on will be evaluated, i.e. its ancestor nodes. As you see, the directions are different.

All right, I think you have learnt enough today in order to be ``Lazy`` in Owl.
