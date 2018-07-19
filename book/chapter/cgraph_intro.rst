Computation Graph
=================================================

This is not a tutorial on how to use the computation graph in Owl. Instead, what I will present is a bird's-eye view on how the computation graph is fitted into Owl's functor stack, and its implications on Owl's architecture design.

To motivate you to continue reading this article, you can try to run both `mnist_cnn.ml <https://github.com/owlbarn/owl/blob/master/examples/mnist_cnn.ml>`_ and `lazy_mnist.ml <https://github.com/owlbarn/owl/blob/master/examples/lazy_mnist.ml>`_ then compare their performance. Both Zoo scripts train the same convolutional neural network to recognise the handwritten digits in MNIST datasets in 60 iterations. On my laptop, ``mnist_cnn.ml`` takes about 30s to finish and consumes almost 4GB memory, whilst ``lazy_mnist.ml`` takes 5s to finish and only consume about 0.75GB. ``lazy_mnist.ml`` achieves the state-of-the-art performance which you can obtain from TensorFlow (with their recent XLA optimisation), actually Owl runs even faster on 3 out of 4 machines we have tested.

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



How Is It Implemented?
-------------------------------------------------



Why Does It Matter?
-------------------------------------------------



What to Do with GPU?
-------------------------------------------------



What Does It Implicate?
-------------------------------------------------
