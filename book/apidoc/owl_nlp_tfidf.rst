NLP.Tfidf
===============================================================================

This document is auto-generated for Owl's APIs.
#39 entries have been extracted.
timestamp: 2018-02-17 00:38:24

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_tfidf.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_tfidf.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type tf_typ = Binary | Count | Frequency | Log_norm
    

TODO

.. code-block:: ocaml

  type df_typ = Unary | Idf | Idf_Smooth
    

TODO

.. code-block:: ocaml

  type t
    

TODO

Query model
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val length : t -> int

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L74>`__



.. code-block:: ocaml

  val term_freq : tf_typ -> float -> float -> float

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L36>`__



.. code-block:: ocaml

  val doc_freq : df_typ -> float -> float -> float

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L42>`__



.. code-block:: ocaml

  val tf_typ_string : tf_typ -> string

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L47>`__



.. code-block:: ocaml

  val df_typ_string : df_typ -> string

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L53>`__



.. code-block:: ocaml

  val get_uri : t -> string

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L70>`__



.. code-block:: ocaml

  val get_corpus : t -> Owl_nlp_corpus.t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L72>`__



.. code-block:: ocaml

  val vocab_len : t -> int

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L76>`__



.. code-block:: ocaml

  val get_handle : t -> in_channel

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L78>`__



.. code-block:: ocaml

  val doc_count_of : t -> string -> float

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L87>`__



.. code-block:: ocaml

  val doc_count : Owl_nlp_vocabulary.t -> string -> float array * int

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L93>`__



.. code-block:: ocaml

  val term_count : ('a, float) Hashtbl.t -> 'a array -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L114>`__



.. code-block:: ocaml

  val normalise : ('a * float) array -> ('a * float) array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L126>`__



Iterate functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val next : t -> (int * float) array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L200>`__



.. code-block:: ocaml

  val next_batch : ?size:int -> t -> (int * float) array array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L202>`__



.. code-block:: ocaml

  val iteri : (int -> 'a -> 'b) -> t -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L211>`__



.. code-block:: ocaml

  val mapi : (int -> 'a -> 'b) -> t -> 'b array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L213>`__



.. code-block:: ocaml

  val get : t -> int -> (int * float) array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L215>`__



.. code-block:: ocaml

  val reset_iterators : t -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L222>`__



.. code-block:: ocaml

  val apply : t -> string -> (int * float) array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L230>`__



Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val build : ?norm:bool -> ?sort:bool -> ?tf:tf_typ -> ?df:df_typ -> Owl_nlp_corpus.t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L190>`__



.. code-block:: ocaml

  val doc_to_vec : t -> (int * float) array -> Vec.arr

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L279>`__



I/O functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val save : t -> string -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L250>`__



.. code-block:: ocaml

  val load : string -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L255>`__



.. code-block:: ocaml

  val to_string : t -> string

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L257>`__



.. code-block:: ocaml

  val print : t -> unit

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L266>`__



.. code-block:: ocaml

  val density : t -> float

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L272>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val create : tf_typ -> df_typ -> Owl_nlp_corpus.t -> t

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L58>`__



.. code-block:: ocaml

  val all_pairwise_distance : Owl_nlp_similarity.t -> t -> ('a * float) array -> (int * float) array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L285>`__



.. code-block:: ocaml

  val nearest : ?typ:Owl_nlp_similarity.t -> t -> ('a * float) array -> int -> (int * float) array

TODO

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L292>`__



