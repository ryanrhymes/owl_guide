Interacting with Owl
=================================================

There are several ways to interact with Owl system. The most classic one is to write an OCaml application, compile the code, then run it natively on a computer. You can also skip the compilation step, and use Zoo system to run the code as a script.

However, the easiest way for a beginner to try out Owl is REPL (Read–Eval–Print Loop), or an interactive toplevel. The toplevel offers a convenient way to play with small code snippets. The code run in the toplevel is compiled into bytecode rather than native code. Bytecode often runs much slower than native code. However, this has very little impact on Owl's performance because all its performance-critical functions are implemented in C language.

In the following, I will introduce two options to set up an interactive environment for Owl.



Using Toplevel
-------------------------------------------------

OCaml language has bundled with a simple toplevel, but I recommend to use *utop* as a more advance replacement. Installing *utop* is straightforward in OPAM, simply run the following command in the system shell.


.. code-block:: bash

  opam install utop


After installation, you can load Owl in *utop* with the following commands. ``owl-toplevel`` is Owl's toplevel library which will automatically load several dependent libraries (including ``owl-zoo``, ``owl-base``, and ``owl`` core library) to set up a complete numerical environment.

.. code-block:: ocaml

  #require "owl-top";;
  open Owl;;


If you do not want to type these commands every time you start *toplevel*, you can add them to ``.ocamlinit`` file. The toplevel reads ``.ocamlinit`` file when it starts and uses it to initialise the environment. This file is often stored in the home directory on your computer.



Using Notebook
-------------------------------------------------

Jupyter Notebook is a popular way to mix presentation with interactive code execution. It originates in Python world but is widely supported by various languages. One attractive feature of notebook is that it uses client/server architecture and runs in a browser.

If you want to know how to use a notebook and its technical details, please read `Jupyter Documentation <http://jupyter.org/documentation>`_. Here let me show you how to set up a notebook to run Owl step by step.

Run the following commands in the shell will install all the dependency for you. This includes Jupyter Notebook and its `OCaml language extension <https://github.com/akabe/ocaml-jupyter>`_.


.. code-block:: bash

  pip install jupyter
  opam install jupyter
  jupyter kernelspec install --name ocaml-jupyter "$(opam config var share)/jupyter"


To start a Jupyter notebook, you can run this command. The command starts a local server running on ``http://127.0.0.1:8888/``, then opens a tab in your browser as the client.


.. code-block:: bash

  jupyter notebook


When the everything is up and running, you can start a new notebook in the web interface. In the new notebook, you must run the following OCaml code in the first input field to load Owl environment.


.. code-block:: bash

  #use "topfind";;
  #require "owl-top";;


At this point, a complete Owl environment is set up in the Jupyter Notebook, and you are free to go with any experiments you like. For example, you can simply copy & paste the code in `lazy_mnist.ml <https://github.com/owlbarn/owl/blob/master/examples/lazy_mnist.ml>`_ to train a convolutional neural network.
