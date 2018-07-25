Introduction
=================================================

Owl is an emerging numerical platform for engineering and scientific computing. The library is (mostly) developed in the OCaml language and inherits all its powerful features such as static type checking, powerful module system, and superior runtime efficiency. Owl allows you to write succinct type-safe numerical applications in a functional language without sacrificing performance, significantly reduces the cost from prototype to production use.



Motivation
-------------------------------------------------

If you are from Python world and familiar with its ecosystem for scientific computing. You may see Owl as a mixture of Numpy, Scipy, Pandas, and other libraries. You may be curious why I have packed so many stuff together. As you learn more and more about OCaml, I am almost certain your curiosity will grow even bigger because this seems against the *minimalist*, a popular design principle adopted by many OCaml libraries.

However, I would like to argue that these functionality should be co-designed and implemented together. This is exactly what we have learnt in the past two decades struggling to build a modern numerical system. The current co-design choice avoids a lot of redundant code and duplicated efforts, and makes optimisation a lot easier. Numpy, Scipy, Pandas, and other software took so many years to well define the boundary of their functionality. In the end, Numpy becomes data representation, Scipy builds high-level analytical functions atop of such representation, Pandas is a combination of table manipulation and analytical functions, and Pytorch bridges these functions between heterogenous devices. However, there is still a significant amount of overlap if you look deep into the code.

Back to the OCaml world, the co-design becomes even more important because of the language's strict static typing. Especially if every small numerical library wraps its data representation into abstract types, then they will not play together nicely whenever you try to build a large and complex application. This further indicates that by having a huge number of small libraries in the ecosystem will not really improve a programmers' productivity. Owl is supposed to address this issue with a consistent *wholistic* design, with a strong focus on scientific computing.

Different choice of design principle also reveals the difference between system programming and numerical programming. System programming is built atop of a wide range of complicated and heterogenous hardware, it abstracts out the realworld complexity by providing a (relatively) small set of APIs (recall how many system calls in Unix operating system). On the other hand, numerical computing is built atop of a small amount of abstract number types (e.g. real and complex), then derives a fat set of advanced numerical operations for various fields (recall how many APIs in a numerical library). As a result, reductionism is preferred in system programming whereas wholism is preferred in numerical one.



Features
-------------------------------------------------

Behind the scene, Owl builds up many advanced numerical functions atop of its solid implementation of n-dimensional arrays. Comparing to other numerical libraries, Owl is very unique, e.g. algorithmic differentiation and distributed computing have been included as integral components in the core system to maximise developers' productivity. Owl is young but grows very fast, the current features include:

* N-dimensional array (both dense and sparse)
* Various number types: ``float32``, ``float64``, ``complex32``, ``complex64``, ``int16``, ``int32`` ...
* Linear algebra and full interface to CBLAS and LAPACKE
* Algorithmic differentiation (or automatic differentiation)
* Neural network module for deep learning applications
* Dynamic computational graph allowing greatest flexibility for applications
* Parallel and Distributed engine (map-reduce, parameter server, etc.)
* Advanced math and stats functions (e.g., hypothesis tests, MCMC, etc.)
* Zoo system for efficient scripting and code sharing
* GPU support (work in progress ...)

The system evolves very fast, and your feedback is very important for me to adjust the direction and decide the focus. In case you find some important features are missing, welcome to submit an issue on the `Issue Tracker <https://github.com/ryanrhymes/owl/issues>`_.



Brief History
-------------------------------------------------

Owl originated from a research project studying the design of large-scale distributed computing framework in the `Computer Lab <http://www.cl.cam.ac.uk/~lw525/>`_ in July 2016. I chose OCaml as the language for developing the system due to its expressiveness and superior runtime efficiency.

Even though OCaml is a very well-designed language, the libraries for numerical computing in OCaml were very limited and its tooling was fragmented at that time. In order to test various analytical applications, I had to write many numerical functions myself, from very low level algebra and random number generators to high level stuff like algorithmic differentiation and deep neural networks. These analytical functions started accumulating and eventually grew much bigger than the distributed engine itself. So I took these functions out and wrapped them up as a standalone library -- Owl.

After over one-year intensive development, Owl is already capable of doing many complicated numerical tasks, e.g. see our `{Google Inception V3 demo} <http://138.68.155.178/>`_ for image classification. I will keep improving Owl and I hope it helps you in solving real-world problems.



Why OCaml?
-------------------------------------------------

Why not?



Contact Me
-------------------------------------------------

You can reach me in the following ways, looking forward to hearing from you!

* `Email Me <mailto:liang.wang@cl.cam.ac.uk>`_
* `Slack Channel <https://join.slack.com/t/owl-dev-team/shared_invite/enQtMjQ3OTM1MDY4MDIwLTA3MmMyMmQ5Y2U0NjJiNjI0NzFhZDAwNGFhODBmMTk4N2ZmNDExYjZiMzI2N2M1MGNiMTUyYTQ5MTAzZjliZDI>`_
* `Issue Tracker <https://github.com/ryanrhymes/owl/issues>`_

**Student Project:** If you happen to be a student in the Computer Lab and want to do some challenging development and design, here are some `Part II Projects <http://www.cl.cam.ac.uk/research/srg/netos/stud-projs/studproj-17/#owl0>`_.

If you are interested in more researchy topics, I also offer Part III Projects and please have a look at :doc:`Owl's Sub-Projects <../project/proposal>` page and contact me directly via email.
