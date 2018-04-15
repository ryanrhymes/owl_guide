# Owl Guide - Introduction to An OCaml Scientific Computing Library

This repository contains the parser and tools to automatically build up the API Reference and Tutorial book for [Owl](https://github.com/ryanrhymes/owl).

The built documentation is hosted on [my Lab page](http://www.cl.cam.ac.uk/~lw525/owl/). If you want to build a local copy of the whole documentation, please refer to the following instructions.


## Instructions

*Step 1*: You need to clone Owl's code repository from the Github, because the source files are needed to build up the documentation. The parser needs to parse both `ml` and `mli` files.

```bash
git clone https://github.com/owlbarn/owl.git
```

*Step 2*: Install Owl library. The parser needs to call a couple of functions from Owl library so you need to install Owl locally. Please refer to Owl's documentation to see how to install.


*Step 3*: Install Sphinx. You can use for example `pip` to install it. Python 2.7 should work fine.

```bash
pip install sphinx
```
