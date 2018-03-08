NLP.Lda
===============================================================================

This document is auto-generated for Owl's APIs.
#10 entries have been extracted.
timestamp: 2018-03-08 23:34:40

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_lda.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_lda.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type lda_typ = SimpleLDA | FTreeLDA | LightLDA | SparseLDA
    

Type of LDA training algorithms.

.. code-block:: ocaml

  type model
    

Type of LDA model.

Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val init : ?iter:int -> int -> (string, int) Hashtbl.t -> Owl_nlp_corpus.t -> model

``init ~iter k v d`` inits an LDA model for training. The default iteration is
100.

Parameters:
  * ``iter``: number of iterations.
  * ``k``: number of topics.
  * ``v``: vocabulary.
  * ``d``: corpus.

.. code-block:: ocaml

  val train : lda_typ -> model -> unit

After calling ``init``, calling this function starts the training.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_lda.ml#L289>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val show_info : model -> int -> float -> unit

Function for printing out log information, tailored for LDA training.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_lda.ml#L47>`__



.. code-block:: ocaml

  val include_token : model -> int -> int -> int -> unit

Include a token in model, used in training and you are not supposed to use it.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_lda.ml#L37>`__



.. code-block:: ocaml

  val exclude_token : model -> int -> int -> int -> unit

Exclude a token in model, used in training and you are not supposed to use it.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_lda.ml#L42>`__



