Compile into Javascript
=================================================

This chapter uses two simple examples to demonstrate how to compile Owl applications into Javascript code so that you can deploy the analytical code into browsers.



Background
-------------------------------------------------

At first glance, Javascript has very little to do with high-performance scientific computing. Then why Owl cares about it? One important reason is that browser is arguably the most widely deployed technology on various edge devices, e.g. mobile phones, tablets, laptops, and etc. More functionality are being pushed from datacenters to edge for reduced latency, better privacy and security. The Javascript applications running in a browser are getting more complicated and powerful.

Moreover, the engine for executing Javascript is highly optimised even the relatively complicated computational tasks can run with reasonable performance.



Base Library
-------------------------------------------------

Before we start, you need to know some basic things to understand how Owl is able to support Javascript

Owl system is actually divided to two parts: `Base library <https://github.com/owlbarn/owl/tree/master/src/base>`_ and `Core library <https://github.com/owlbarn/owl/tree/master/src/owl>`_. The base library is implemented with pure OCaml so it can be safely compiled into Javascript. Many functionality (e.g. Ndarray) in the base library will be replaced with high-performance C implementation in the Core library.

As you can see, to enable Javascript, we can only use the functions implemented in the Base. You may wonder how much we will be limited by the Base. Fortunately, the most advanced functions in Owl are often implemented in pure OCaml and they live in the Base, which includes e.g. algorithmic differentiation, optimisation, even neural networks and many others.

In this following, I will present how to use ``Owl_base`` in writing Javascript applications using both native OCaml code and Facebook Reason. Both examples are straightforward thanks to the powerful jbuilder.



Use Native OCaml
-------------------------------------------------

We know that ``Owl_algodiff_generic`` is the cornerstone of Owl's fast neural network module. The first example uses Algodiff functor to optimise a mathematical function.

The first step is writing down our application in OCaml as follows, then save it into a file `demo.ml`


.. code-block:: ocaml

  (* Javascript example: use Owl_base to minimise sin *)

  include Owl_algodiff_generic.Make (Owl_base_dense_ndarray.D)

  let rec desc ?(eta=F 0.01) ?(eps=1e-6) f x =
    let g = (diff f) x in
    if (unpack_flt g) < eps then x
    else desc ~eta ~eps f Maths.(x - eta * g)

  let _ =
    let f = Maths.sin in
    let y = desc f (F 0.1) in
    Owl_log.info "argmin f(x) = %g" (unpack_flt y)


The code is very simple: the ``desc`` defines a gradient descent algorithm, then we use ``desc`` to calculate the minimum value of ``Maths.sin`` function. In the end, we print out the result using ``Owl_log`` module's ``info`` function. You should have noticed, we used ``Owl_algodiff_generic`` functor to create and include an algorithmic differentiation module by passing the pure implementation of Ndarray in the base library.

In the second step, we need to create a `jbuild` file as follows. This file will instruct how the OCaml code will be first compiled into bytecode then converted into javascript by calling ``js_of_ocaml``.


.. code-block:: bash

  (jbuild_version 1)

  (executables
   ((libraries (owl_base))
    (names (demo))))

    (rule
     ((targets (demo.js))
      (action
        (run ${bin:js_of_ocaml}
          --noruntime ${lib:js_of_ocaml-compiler:runtime.js}
          --source-map ${path:demo.bc} -o ${@} --pretty
        ))))


With these two files in the same folder, you can then simply run the following command in the terminal. The command builds the application and generates a `demo.js` in `_build/default/` folder.


.. code-block:: bash

  jbuilder build demo.js


In the last, we can run the javascript using Node.js engine.


.. code-block:: bash

 node _build/default/demo.js


You should be able to see the output result similar to ``2018-03-24 16:27:42.368 INFO : argmin f(x) = -1.5708``.



Use Facebook Reason
-------------------------------------------------

Facebook Reason is gaining its momentum and becoming a popular choice of developing web applications. Because Reason is basically a wrapper of OCaml, it is very straightforward to use Owl library in Reason to develop advanced numerical applications.

In this example, I demonstrate how to use reason code to manipulate multi-dimensional arrays, which is the core data structure in Owl. First, please save the following code into a reason file `demo.re`. Note the the suffix is *.re* now.


.. code-block:: ocaml

  /* Javascript example: Ndarray and Maths */

  open! Owl_base;

  /* calculate math functions */
  let x = Owl_base_maths.sin(5.);
  Owl_log.info("Result is %f", x);

  /* create random ndarray then print */
  let y = Owl_base_dense_ndarray.D.uniform([|3,4,5|]);
  Owl_base_dense_ndarray.D.set(y,[|1,1,1|],1.);
  Owl_base_dense_ndarray.D.print(y);

  /* take a slice */
  let z = Owl_base_dense_ndarray.D.get_slice([[],[],[0,3]],y);
  Owl_base_dense_ndarray.D.print(z);


The code above is simple, just creates a random ndarray, takes a slice, then prints them out. Now let's look at the `jbuild` file, which turns out to be exactly the same as that in the previous example.


.. code-block:: bash

  (jbuild_version 1)

  (executables
   ((libraries (owl_base))
    (names (demo))))

    (rule
     ((targets (demo.js))
      (action
        (run ${bin:js_of_ocaml}
          --noruntime ${lib:js_of_ocaml-compiler:runtime.js}
          --source-map ${path:demo.bc} -o ${@} --pretty
        ))))


Similarly, you can then compile and run the code with following commands.

.. code-block:: bash

  jbuilder build demo.js
  node _build/default/demo.js


As you can see, except the code is written in different languages, the rest of the steps are identical in both example thanks to the excellent jbuilder.



Future Plan
-------------------------------------------------

I only presented two simple examples in this Chapter. It is worth noting that Owl_base contains a large amount of advanced functions to allow you write complicated analytical functions including deep neural networks. However, the code above can serve as a template for you to try out different functions.

The javascript code converted by ``js_of_ocaml`` is not readable. On the contrary, BuckleScript is able to compile OCaml code into readable javascript. I am personally very interested in seeing how the complicated numerical functions will look like after BuckleScript converts it into javascript. I will give it a try soon on BuckleScript.

Moreover, I also find it very fascinated by the fact that these advanced analytical apps can be compiled into small, self-contained, cross-platform code and deployed directly in browser. This will be another story about our Zoo System (refer to :doc:`zoo`) which I will tell in near future.
