Introduction
=================================================

Owl is an emerging numerical platform for engineering and scientific computing. The library is (mostly) developed in the OCaml language and inherits all its powerful features such as static type checking, powerful module system, and superior runtime efficiency. Owl allows you to write succinct type-safe numerical applications in a functional language without sacrificing performance, significantly reduces the cost from prototype to production use.



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

After over one-year intensive development, Owl is already capable of doing many complicated numerical tasks, e.g. see our `[Google Inception V3 demo] <http://138.68.155.178/>`_ for image classification. I will keep improving Owl and I hope it helps you in solving real-world problems.



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

If you are interested in more researchy topics, I also offer Part III Projects and please have a look at :doc:`Owl's Sub-Projects <project>` page and contact me directly via email. 
