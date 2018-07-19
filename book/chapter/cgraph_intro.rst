Computation Graph
=================================================

This is not a tutorial on how to use the computation graph in Owl. Instead, what I will present is a bird's-eye view on how the computation graph is fitted into Owl's functor stack, and its implications on Owl's architecture design.

To motivate you to continue reading this article, you can try to run both `mnist_cnn.ml <https://github.com/owlbarn/owl/blob/master/examples/mnist_cnn.ml>`_ and `lazy_mnist.ml <https://github.com/owlbarn/owl/blob/master/examples/lazy_mnist.ml>`_ then compare their performance. Both Zoo scripts train the same convolutional neural network to recognise the handwritten digits in MNIST datasets in 60 iterations. On my laptop, ``mnist_cnn.ml`` takes about 30s to finish and consumes approximate 4GB memory, whilst ``lazy_mnist.ml`` only takes 5s and consumes about 0.75GB to finish the same job. ``lazy_mnist.ml`` achieves the state-of-the-art performance which you can obtain from TensorFlow (with its recent XLA optimisation), actually Owl runs even faster on 3 out of 4 machines we have tested.

OK, if these numbers arouse your interest in knowing how the magic happens, let me unveil the underlying mechanism of Owl's computation graph in the following sections.



What Is A Computation Graph?
-------------------------------------------------

As a functional programmer, it is basic knowledge that a function takes an input then produces an output. The input of a function can be the output of another function which creates dependency. If we view a function as a node and its input and output as incoming and outgoing links respectively, as the computation continues, these functions are chained together to form a directed acyclic graph (DAG). Such a DAG is often referred to as a computation graph.

Here is an example for calculating ``sin (x * y)``.


.. figure:: ../figure/plot_cgraph_01.png
   :scale: 50 %
   :align: center
   :alt: computation graph


The generated computation graph contains several pieces of information which are essential for debugging the applications. These includes node index, operation, reference counter, and shape information. In the figure above, we can see the row vector ``x`` of shape [1; 4] is broadcasted on the matrix ``y`` of shape [8; 4] in ``Add`` operation.

The computation graph can be either implicitly constructed or explicitly declared in a software. Often, implicit construction is done by operator overloading while explicit declaration uses domain specific languages (DSL). The two methods lead to two different kinds of computation graphs -- *dynamic* and *static graph*, each has its own pros and cons.

Dynamic graph is constructed during the runtime. Due to operator overloading, its construction can be naturally blended with a language's native constructs such as ``if ... else ...`` and ``for`` loops. This renders greatest flexibility and expressive. On the other hand, a static graph needs to be declared using a specific DSL. Because the structure of a graph is already known during the compilation, there is a great space for optimisation. However, static graphs sometimes make it difficult to express conditions and loops when using with native code together.

As we can see, the flexibility of a dynamic graph comes with the price of lower performance. Facebook's Pytorch and Google's TensorFlow are the typical examples of dynamic and static graph respectively. Interestingly, Owl does something slightly different in order to get the best parts of both world, we will detail this in the following.



Why Does It Matter?
-------------------------------------------------

Now that you know what is a computation graph, you may ask why it matters? Well, the computation graph makes many things a lot easier. Here is an incomplete list of potential benefits.

- Simulate lazy evaluation in a language with eager evaluation;
- Incremental computation (a.k.a Self-Adjusted Computation);
- Reduce computation complexity by optimising the structure of a graph;
- Reduce memory management overhead by pre-allocating the space;
- Reduce memory footprint by reusing allocated memory space;
- Natural support for parallel and distributed computing;
- Natural support for heterogeneous computing;
- Natural support for symbolic math;

Some of the benefits are very obvious. Memory usage can certainly be optimised if the graph structure is fixed and the input shape is known. One optimisation is reusing previously allocated memory, which is especially useful for those applications involving large ndarray calculations. In fact, this optimisation can also be performed by a compiler by tracking the reference number of allocated memory, a technique referred to as linear types.

Some may appear less obvious at the first glance. For example, we can decompose a computation graph into multiple independent subgraphs and each can be evaluated in parallel on different cores or even computers. Maintaining the graph structure also improves fault-tolerance, by providing natural support for rollback mechanisms.

The computation graph provides a way to abstract the flow of computations, therefore it is able to bridge the high-level applications and low-level machinery of various hardware devices. This is why I say it has natural support for heterogeneous computing.



How Is It Implemented?
-------------------------------------------------


.. figure:: ../figure/owl_cgraph_functor_stack.png
   :scale: 50 %
   :align: center
   :alt: computation graph functor stack


.. code-block:: ocaml

  module M =
    Owl_neural_generic.Flatten (
      Owl_neural_graph.Make (
        Owl_neural_neuron.Make (
          Owl_optimise_generic.Make (
            Owl_algodiff_generic.Make (
              Dense.Ndarray.S)))));;


Now ...


.. code-block:: ocaml

  module M =
    Owl_neural_generic.Flatten (
      Owl_neural_graph.Make (
        Owl_neural_neuron.Make (
          Owl_optimise_generic.Make (
            Owl_algodiff_generic.Make (
              Owl_computation_engine.Flatten (
                Owl_computation_cpu_engine.Make_Nested (
                  Owl_computation_graph.Make (
                    Owl_computation_optimiser.Make (
                      Owl_computation_operator.Make (
                        Owl_computation_symbol.Make (
                          Owl_computation_shape.Make (
                            Owl_computation_type.Make (
                              Owl_computation_cpu_device.Make (
                                Dense.Ndarray.S))))))))))))));;




What to Do with GPU?
-------------------------------------------------



What Does It Implicate?
-------------------------------------------------


JIT - From Dynamic to Static
-------------------------------------------------


What Is Next?
-------------------------------------------------
