Computation Graph
=================================================

This is not a tutorial on how to use the computation graph in Owl. Instead, what I will present is a bird's-eye view on how the computation graph is fitted into Owl's functor stack, and its implication on its architecture design.

To motivate you to continue reading this article, you can try to run both `mnist_cnn.ml <https://github.com/owlbarn/owl/blob/master/examples/mnist_cnn.ml>`_ and `lazy_mnist.ml <https://github.com/owlbarn/owl/blob/master/examples/lazy_mnist.ml>`_ then compare their performance. Both Zoo scripts train the same convolutional neural network to recognise the handwritten digits in MNIST datasets in 60 iterations. On my laptop, ``mnist_cnn.ml`` takes about 30s to finish and consumes almost 4GB memory, whilst ``lazy_mnist.ml`` takes 5s to finish and only consume about 0.75GB. ``lazy_mnist.ml`` achieves the state-of-the-art performance which you can obtain from TensorFlow (with their recent XLA optimisation), actually Owl runs even faster on 3 out of 4 machines we have tested.

OK, if these numbers arouse your interest in knowing how the magic happens, let me unveil the underlying mechanism of the computation graph in Owl in the following sections.



What Is A Computation Graph?
-------------------------------------------------



How Is It Implemented?
-------------------------------------------------



Why Does It Matter?
-------------------------------------------------
