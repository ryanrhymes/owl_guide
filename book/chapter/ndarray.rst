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



Properties Functions
-------------------------------------------------



Map Functions
-------------------------------------------------



Fold Functions
-------------------------------------------------



Scan Functions
-------------------------------------------------



Vectorised Math
-------------------------------------------------



Comparison Functions
-------------------------------------------------



Iteration Functions
-------------------------------------------------



Manipulation Functions
-------------------------------------------------



Serialisation
-------------------------------------------------
