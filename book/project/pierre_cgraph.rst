Computer Vision in OCaml
================================================

by Pierre Vandenhove


As an intern at OCaml Labs, my initial task was to find a way to
automatically segment and categorise pictures and videos, using the
great OCaml’s numerical library `Owl <http://ocaml.xyz/>`_ created by
Liang Wang. Many machine learning tasks had already been successfully
ported to Owl (for `character
recognition <https://github.com/owlbarn/owl/blob/master/examples/lazy_mnist.ml>`_,
`image style transfer <http://demo.ocaml.xyz/fst.html>`_, ...). There
was even an implementation of Google’s `Inception neural
network <http://demo.ocaml.xyz/index.html>`_, which can already label
images in a really impressive way.

*Computer vision* is a field dealing with many different automated tasks
whose goal is to give high-level descriptions of images and videos. It
has been applied to a wide variety of domains ranging from highly
technical (automatic tagging of satellite images, analysis of medical
images, ...) to more mundane (categorise pictures in your phone, make
your face into an emoji, ...). It has seen tremendous progress since
2012, when `A. Krizhevsky et
al. <https://papers.nips.cc/paper/4824-imagenet-classification-with-deep-convolutional-neural-networks>`_
used the first deep learning approach to computer vision, crushing all
their opponents in the `ImageNet
challenge <http://image-net.org/challenges/LSVRC/2012/results.html>`_.
It has therefore evolved quite a lot since Inception was first described
in 2014 and it was relevant to implement a more recent and involved
network with Owl.

Inception performs *single-label image classification* — it works well
when there is one large object in an image, but gets easily confused
when there are lots of small ones. Other programs are meant to classify
the pixels on an image in different categories (*semantic
segmentation*), or to detect the position of the objects on an image
(*object detection*). In 2017, the *Mask R-CNN* (*Mask Region-based
Convolutional Neural Network*) architecture was published and with
sufficient training, it can solve all these problems at once: it can
detect objects on an image, label each of them and provide a binary mask
to tell which pixels belong to the objects. This network has now been
implemented in Owl. As a preliminary example, this is what it can do:


Example 1

.. figure:: ../figure/owl_vision_buildings.jpg
   :width: 100%
   :align: center
   :alt: mrcnn buildings


Example 2

.. figure:: ../figure/owl_vision_sheep.jpg
   :width: 100%
   :align: center
   :alt: mrcnn sheep



Mask R-CNN network
--------------------------------------------

I will briefly outline the main parts of architecture of Mask R-CNN and
how it stands out from its predecessors. You can of course get more
detailed and technical explanations in `the original
paper <https://arxiv.org/abs/1703.06870>`_. The Owl implementation of
the inference mode is available
`in this repository <https://github.com/pvdhove/owl-mask-rcnn>`_. The code was
mostly ported from `this Keras/TensorFlow
implementation <https://github.com/matterport/Mask_RCNN>`_.


Feature extractor
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The picture is first fed to a `convolutional neural
network <https://en.wikipedia.org/wiki/Convolutional_neural_network>`_
in order to extract features on the image. The first few layers detect
low-level features (edges and basic shapes) but as you go deeper into
the network, these features are assembled to detect higher level
features (people, cars) (which, some argue, works `in the same way as the brain <https://medium.freecodecamp.org/an-intuitive-guide-to-convolutional-neural-networks-260c2de0a050>`_).
Five of these layers (called *feature maps*) of various sizes, both
high- and low-level, are then passed on to the next parts. This
implementation chooses Microsoft’s
`ResNet101 <https://www.cv-foundation.org/openaccess/content_cvpr_2016/html/He_Deep_Residual_Learning_CVPR_2016_paper.html>`_
as a feature extractor.


These feature maps are then transformed with a `Feature Pyramid
Network <https://arxiv.org/abs/1612.03144>`_ to share information
between all the maps, such that each map knows about both high- and
low-level features at different resolutions. Later on, the size of the
objects will determine which feature map is used to analyse them.


Proposal generation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To try to locate the objects, about 250,000 overlapping rectangular regions
(*anchors*) are generated. A small convolutional network (a `Region
Proposal Network <http://papers.nips.cc/paper/5638-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks>`_,
introduced in 2015 by the predecessor of Mask R-CNN) scans the feature
maps and quickly associates to each of them a number that could be
called the ’objectness’ of that region. The 1000 best anchors are then
selected according to their objectness (higher is better). Anchors that
overlap too much with each other are eliminated, to avoid detecting the
same object multiple times. Each selected anchor is also refined in case
it was not perfectly centered around the object.


Classification
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

All anchor proposals from the previous layer are resized to a fixed size
and fed into a 10-layer neural network that assigns to each of them
probabilities that it belongs to each class (the network is pre-trained
on fixed classes; changing the set of classes requires to re-train the
whole network). Note that this step does not take as much time for each
anchor as a full-fledged image classifier (such as Inception) since it
reuses the pre-computed feature maps from the Feature Pyramid Network —
there is no need to go back to the original picture. The class with the
highest probability is chosen for each proposal and thanks to the class
predictions, the anchor proposals are even more refined. Proposals
classified in the ’background’ class are deleted. Eventually, only the
proposals with an objectness over some threshold are kept, and we have
our final detections, each coming with a bounding box and a label!

The only thing left to do is to generate a *binary mask* on each object.
This is handled by a small convolutional neural network which outputs
for each detected bounding box a small square of values between 0 and 1.
This square is resized to the original size of the bounding box with
bilinear interpolation, and pixels with a value over 0.5 are tagged as
being part of the object.



Mask-R-CNN-driven optimisation
------------------------------------------------------------

All of this works really well, but the first issue I stumbled upon after
porting it to Owl was that the memory usage, in inference mode, was
*huge*. The network has over 400 layers and to avoid reinitialising the
network for every picture, it is good to keep its input size fixed and
to resize instead all the images to that size — a larger size takes more
time and memory but yields more accurate results. A reasonable input
size for this network is a 1024-pixel-wide square. Unfortunately,
obtaining detections for one picture with this size required over *11 GB
of RAM*, which was too much for my laptop. As a comparison, the
TensorFlow implementation only uses 1 GB. There was a big room for
improvement!

What I had not used yet is the great *computation graph* module of Owl.
A *computation graph* is a way to represent the control flow of a
program. For example, the following program can be turned into this
graph:


.. figure:: ../figure/owl_vision_cg.png
   :width: 100%
   :align: center
   :alt: computation graph


A computation graph is always directed and acyclic. Representing the
structure of a program as a computation graph has several advantages,
especially for computationally-intensive code dealing with big
multi-dimensional arrays. A really useful one is that prior to
evaluating the nodes, you can optimise the structure of the graph: for
instance, useless calculations such as adding an array with nothing but
zeros can be removed, common patterns can be merged into one node and
executed more efficiently, etc. This helps a bit: thanks to these
optimisations, the number of nodes of Mask R-CNN drops from 4095 to 3765.
Another really important feature in this case is the ability to
pre-allocate a memory space to each node, to decrease the overall memory
consumption and reduce the garbage collector overhead.


Optimising memory with pebbles
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

To describe the problem of allocating memory in a computation graph, it
is interesting to look at the *pebble game*, which was introduced `in
1973 <http://perso.ens-lyon.fr/loris.marchal/scheduling/sethi_complete_register_allocation.pdf>`_
to explain register allocation.

The *pebble game* is played on a directed acyclic graph. Each node can
store at most one pebble. The game begins with no pebble on any node. At
each step, the player can do one of the following moves:


1. if a vertex :math:`v` has no predecessor, the player can place a pebble on
   :math:`v`.
2. if all predecessors of a vertex :math:`v` are pebbled, the player can
   place a pebble on :math:`v` or *slide* a pebble from one of its
   predecessors to :math:`v`.
3. the player can remove any pebble from a vertex (and reuse that
   pebble later).


The goal of the game is to place a pebble at least once on some fixed
*output vertices* of the graph.

Here is an example of an optimal pebbling strategy using the previous computation
graph (gray nodes are pebbled), using moves 1 → 2 → 3 → 1 →
2 → 2. We assume that the goal is to pebble
node 5:


.. figure:: ../figure/owl_vision_pebble.png
   :width: 100%
   :align: center
   :alt: pebbling


This relates to the memory allocation of the computation graph if we see
pebbles as memory blocks used to store the output value of a node. We
assume that the values of the inputs are known (move 1). We can only
compute the value of a vertex if all its predecessors are simultaneously
stored in memory (move 2). The *sliding* move means that the memory of a
node can be overwritten by its successor during its computation
(*inplace reuse*). We can always reuse a memory block from any other
node (move 3). Given a graph, the idea is thus to find a strategy to
pebble it using a minimum number of pebbles (in other words, using as
little memory as possible).

We also want to avoid pebbling any node twice (in order the keep the
execution time as low as possible, because that would mean that we
compute the same node twice). Given these constraints, finding a
strategy using the least amount of pebbles is unfortunately
`NP-complete <http://perso.ens-lyon.fr/loris.marchal/scheduling/sethi_complete_register_allocation.pdf>`_.
Since computation graphs can have a few thousand nodes, we will be
looking for a fast heuristic instead of an exact algorithm.


Allocation algorithm
--------------------------------------------------

The initially implemented strategy to allocate memory to a node :math:`u` in
Owl’s computation graph module was simply to reuse the memory of a
direct predecessor with same output shape as :math:`u` when that is possible.
This optimisation allowed to decrease the memory consumption of Mask
R-CNN from 11 GB to 7 GB — much better, but still quite far from the 1
GB of the TensorFlow implementation!

We can actually make it much more performant by sharing memory between
nodes

- that are not necessarily a parent/child pair;
- that do not have the same output size (by allocating a large block
  of memory once, without necessarily using all of it all the time).

To do this efficiently, we first have to fix an evaluation order (in
practice, any topological order). Given this order, we can pinpoint the
moment when the memory of a node becomes useless by keeping a counter of
how many times it has been used. When it has been used by all its
children, we can recycle its memory. Then to allocate memory to a node,
we simply check which blocks are available and we select the one with
the closest size (in order not to waste too much memory). If no block is
available, we allocate a new one. This can be executed in
:math:`\mathcal{O}(n * \log(n))` time, which is negligible compared to the
actual cost of evaluating the graph.

Then we just have to be careful that some operations cannot overwrite
their inputs while they are being computed (the *sliding* move from the
pebble game is forbidden) and that some nodes cannot be overwritten for
practical purposes (typically constant nodes or neural network weights).
Implementing this effectively reduced the memory consumption of Mask
R-CNN from 7 GB to 1 GB for a 1024x1024 picture, making it as efficient
as the TensorFlow implementation! A summary of the changes can be found in
`this pull request <https://github.com/owlbarn/owl/pull/318>`_. Here are some
more statistics illustrating what the computation graph with this new
algorithm achieves:


+------------------+---------------------+------------------------------------------+------------------------+---------------------+
| Architecture     | Time without CG (s) | Time with CG (building + evaluating) (s) | Memory without CG (MB) | Memory with CG (MB) |
+------------------+---------------------+------------------------------------------+------------------------+---------------------+
| InceptionV3      | 0.565               | 0.107 + 0.228 = 0.335                    | 625.76                 | 230.10              |
+------------------+---------------------+------------------------------------------+------------------------+---------------------+
| ResNet50         | 0.793               | 0.140 + 0.609 = 0.749                    | 1309.9                 | 397.07              |
+------------------+---------------------+------------------------------------------+------------------------+---------------------+
| MNIST (training) | 20.422              | 0.144 + 10.920 = 11.064                  | 3685.3                 | 895.32              |
+------------------+---------------------+------------------------------------------+------------------------+---------------------+
| Mask R-CNN       | 11.538              | 0.363 + 8.379 = 8.742                    | 6483.4                 | 870.48              |
+------------------+---------------------+------------------------------------------+------------------------+---------------------+


InceptionV3 and ResNet50 are tested with a 299x299 image; Mask R-CNN is
tested with a 768x768 image. The MNIST line refers to a small neural network
trained to recognize hand-written digits whose implementation can be found
`in this code repository <https://github.com/owlbarn/owl/blob/master/examples/lazy_mnist.ml>`_.
The time is the average over 30 evaluations, without reusing pre-computed nodes
when a computation graph is used. The graph building phase includes graph
construction, optimisation and memory initialisation. The memory is the maximum
resident set size of the program. This was evaluated on a laptop with an Intel
i5-6300HQ and 8 GB of RAM.

For instance, when evaluated in the right order, the following
computation graph, which can be used to recognise hand-written
digits, needs only two different blocks of memory (each colour
corresponds to a memory block, white nodes always need to be kept in
memory):


.. figure:: ../figure/owl_vision_lazymnistinf.png
   :width: 100%
   :align: center
   :alt: coloured cgraph


You can find bigger visualisations of the allocation performed by `the
new algorithm <https://drive.google.com/drive/folders/12KCY9OC6GjuHiH2pRiAjqNi-pz2sNcc1?usp=sharing>`_.

Using a computation graph has many other advantages that I have not
mentioned. To learn more about it, you can see `this
article <http://ocaml.xyz/chapter/cgraph_intro.html>`_. It is important
to point out that this mechanism can be used for any scientific
computation using multi-dimensional arrays, not only neural networks.


Try it!
--------------------------------------------------

Here is an example of what happens if you apply Mask R-CNN on a video:

.. raw:: html

  <div style="position:relative;height:0;padding-bottom:56.25%">
    <iframe src="https://www.youtube.com/embed/ruM7S-cqk-k?ecver=2" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen>
    </iframe>
  </div>


Processing one image with a size of 1024x1024 pixels takes between 10 and
15 seconds on my laptop. You can try a demo of the network
`on this page <http://demo.ocaml.xyz/mrcnn.html>`_. If you want to apply it on
videos, large images or experiment a bit more, see `the
GitHub repository <https://github.com/pvdhove/owl-mask-rcnn>`_. Pre-trained
weights on 80 classes of common objects are provided, which have been converted
from the TensorFlow implementation mentioned above.


What’s next?
--------------------------------------------------

A few things can still be improved. First of all, to fully support
training, some operations are still missing both in Owl and in my
implementation of Mask R-CNN. Then to make it even faster, especially
for videos, GPU support would be incredibly helpful. Owl’s `GPU
support <https://github.com/owlbarn/owl/tree/master/src/opencl>`_ is
already fully functional, but some work is still necessary to apply it
to Mask R-CNN.
