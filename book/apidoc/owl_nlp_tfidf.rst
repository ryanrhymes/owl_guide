NLP.Tfidf
===============================================================================

This document is auto-generated for Owl's APIs.
#39 entries have been extracted.
timestamp: 2018-02-17 13:53:11

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_tfidf.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_tfidf.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type tf_typ = Binary | Count | Frequency | Log_norm
    

Type of term frequency.

.. code-block:: ocaml

  type df_typ = Unary | Idf | Idf_Smooth
    

Type of inverse document frequency.

.. code-block:: ocaml

  type t
    

Type of a TFIDF model

Query model
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val length : t -> int

Size of Tfidf model, i.e. number of documents contained.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L72>`__



.. code-block:: ocaml

  val term_freq : tf_typ -> float -> float -> float

``term_freq term_count num_words`` calculates the term frequency weight.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L34>`__



.. code-block:: ocaml

  val doc_freq : df_typ -> float -> float -> float

``doc_freq doc_count num_docs`` calculates the document frequency weight.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L40>`__



.. code-block:: ocaml

  val get_uri : t -> string

Return the path of the TFIDF model.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L68>`__



.. code-block:: ocaml

  val get_corpus : t -> Owl_nlp_corpus.t

Return the corpus contained in TFIDF model

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L70>`__



.. code-block:: ocaml

  val vocab_len : t -> int

Return the size of the vocabulary contained in the TFIDF model.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L74>`__



.. code-block:: ocaml

  val get_handle : t -> in_channel

Geht the file handle associated with TFIDF model.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L76>`__



.. code-block:: ocaml

  val doc_count_of : t -> string -> float

``doc_count_of tfidf w`` calculate document frequency for a given word ``w``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L85>`__



.. code-block:: ocaml

  val doc_count : Owl_nlp_vocabulary.t -> string -> float array * int

``doc_count vocab fname``count occurrency in all documents contained in the raw text corpus of file ``fname``, for all words

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L91>`__



.. code-block:: ocaml

  val term_count : ('a, float) Hashtbl.t -> 'a array -> unit

``term_count count doc`` counts the term occurrency in a document, and saves the result in count hashtbl.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L112>`__



.. code-block:: ocaml

  val density : t -> float

Return the percentage of non-zero elements in doc-term matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L270>`__



.. code-block:: ocaml

  val doc_to_vec : (float, 'a) Bigarray.kind -> t -> (int * float) array -> (float, 'a) Owl_dense.Ndarray.Generic.t

``doc_to_vec kind tfidf vec`` converts a TFIDF vector from its sparse represents to dense ndarray vector whose length equals the vocabulary size.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L277>`__



Iteration functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val get : t -> int -> (int * float) array

Return the ith TFIDF vector in the model. The format of return is ``(vocabulary index, weight)`` tuple array of a document.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L213>`__



.. code-block:: ocaml

  val next : t -> (int * float) array

Return the next document vector in the model. The format of return is ``(vocabulary index, weight)`` tuple array of a document.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L198>`__



.. code-block:: ocaml

  val next_batch : ?size:int -> t -> (int * float) array array

Return the next batch of document vectors in the model, the default size is 100.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L200>`__



.. code-block:: ocaml

  val iteri : (int -> (int * float) array -> unit) -> t -> unit

Iterate all the document vectors in a TFIDF model. The format of document vector is ``(vocabulary index, weight)`` tuple array of a document.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L209>`__



.. code-block:: ocaml

  val mapi : (int -> (int * float) array -> 'a) -> t -> 'a array

Map all the document vectors in a TFIDF model. The format of document vector is ``(vocabulary index, weight)`` tuple array of a document.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L211>`__



.. code-block:: ocaml

  val reset_iterators : t -> unit

Reset the iterator to the begining of the TFIDF model.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L220>`__



Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val build : ?norm:bool -> ?sort:bool -> ?tf:tf_typ -> ?df:df_typ -> Owl_nlp_corpus.t -> t

This function builds up a TFIDF model according to the passed in paramaters.

Parameters:
* ``norm``: whether to normalise the vectors in the TFIDF model, default is ``false``.
* ``sort``: whether to sort the terms in a TFIDF vector in increasing order w.r.t their vocabulary indices. The default is ``false``.
* ``tf``: type of term frequency used in building TFIDF. The default is ``Count``.
* ``df``: type of document frequency used in building TFIDF. The default is ``Idf``.
* ``corpus``: the corpus built by ``Owl_nlp_corpus`` model atop of which TFIDF will be built.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L188>`__



I/O functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val save : t -> string -> unit

``save tfidf fname`` saves the TFIDF to a file of given file name ``fname``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L248>`__



.. code-block:: ocaml

  val load : string -> t

``load fname`` loads a TFIDF from a file of name ``fname``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L253>`__



.. code-block:: ocaml

  val to_string : t -> string

Convert a TFIDF to its string representation, contains summary information.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L255>`__



.. code-block:: ocaml

  val print : t -> unit

Pretty print out the summary information of a TFIDF model.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L264>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val tf_typ_string : tf_typ -> string

Convert term frequency type into string.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L45>`__



.. code-block:: ocaml

  val df_typ_string : df_typ -> string

Convert document frequency type into string.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L51>`__



.. code-block:: ocaml

  val apply : t -> string -> (int * float) array

Convert a single document according to a given model

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L228>`__



.. code-block:: ocaml

  val normalise : ('a * float) array -> ('a * float) array

``normalise x`` makes ``x`` a unit vector by dividing its l2norm.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L124>`__



.. code-block:: ocaml

  val create : tf_typ -> df_typ -> Owl_nlp_corpus.t -> t

Wrap up a TFIDF model type. Low-level function and you are not supposed to use it.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L56>`__



.. code-block:: ocaml

  val all_pairwise_distance : Owl_nlp_similarity.t -> t -> ('a * float) array -> (int * float) array

Calculate pairwise distance for the whole model, return format is ``(id,dist)`` array.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L283>`__



.. code-block:: ocaml

  val nearest : ?typ:Owl_nlp_similarity.t -> t -> ('a * float) array -> int -> (int * float) array

Return K-nearest neighbours, it is very slow due to linear search.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_tfidf.ml#L290>`__



