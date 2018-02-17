NLP.Vocabulary
===============================================================================

This document is auto-generated for Owl's APIs.
#28 entries have been extracted.
timestamp: 2018-02-17 13:53:11

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_vocabulary.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_vocabulary.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t
    

Type of vocabulary (or dictionary).

Query vocabulary
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val get_w2i : t -> (string, int) Hashtbl.t

``get_w2i v`` returns word -> index mapping of ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L17>`__



.. code-block:: ocaml

  val get_i2w : t -> (int, string) Hashtbl.t

``get_i2w v`` returns index -> word mapping of ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L19>`__



.. code-block:: ocaml

  val exits_w : t -> string -> bool

``exits_w v w`` returns ``true`` if word ``w`` exists in the vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L21>`__



.. code-block:: ocaml

  val exits_i : t -> int -> bool

``exits_i i w`` returns ``true`` if index ``i`` exists in the vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L23>`__



.. code-block:: ocaml

  val word2index : t -> string -> int

``word2index v w`` converts word ``w`` to its index using vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L25>`__



.. code-block:: ocaml

  val index2word : t -> int -> string

``index2word v i`` converts index ``i`` to its corresponding word using vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L27>`__



Obtain properties
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val length : t -> int

``length v`` returns the size of vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L29>`__



.. code-block:: ocaml

  val freq_i : t -> int -> int

``freq_i v i`` returns the frequency of word of index ``i``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L31>`__



.. code-block:: ocaml

  val freq_w : t -> string -> int

``freq_w v w`` returns the frequency of word ``w`` in the vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L33>`__



.. code-block:: ocaml

  val sort_freq : ?inc:bool -> t -> (int * int) array

``sort_freq v`` returns the vocabulary as a ``(index, freq) array`` in
increasing or decreasing frequency specified by parameter ``inc``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L162>`__



.. code-block:: ocaml

  val top : t -> int -> (string * int) array

``top v k`` returns the top ``k`` words in vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L177>`__



.. code-block:: ocaml

  val bottom : t -> int -> (string * int) array

``bottom v k`` returns the bottom ``k`` words in vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L183>`__



.. code-block:: ocaml

  val re_index : t -> t

``re_index v`` re-indexes the indices of words in vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L44>`__



Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val build : ?lo:float -> ?hi:float -> ?stopwords:(string, 'a) Hashtbl.t -> string -> t

``build ~lo ~hi ~stopwords fname`` builds a vocabulary from a corpus file of
name ``fname``.

Parameters:
  * ``lo``: percentage of lower bound of word frequency.
  * ``hi``: percentage of higher bound of word frequency.
  * ``fname``: file name of the corpus, each line contains a doc.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L125>`__



.. code-block:: ocaml

  val trim_percent : lo:float -> hi:float -> t -> t

``trim_percent ~lo ~hi v`` remove extremely low and high frequency words based
on percentage of frequency.

Parameters:
  * ``lo``: the percentage of lower bound.
  * ``hi``: the percentage of higher bound.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L82>`__



.. code-block:: ocaml

  val trim_count : lo:int -> hi:int -> t -> t

``trim_count ~lo ~hi v`` remove extremely low and high frequency words based
on absolute count of words.

Parameters:
  * ``lo``: the lower bound of number of occurrence.
  * ``hi``: the higher bound of number of occurrence.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L100>`__



.. code-block:: ocaml

  val remove_stopwords : ('a, 'b) Hashtbl.t -> ('a, 'c) Hashtbl.t -> unit

``remove_stopwords stopwords v`` removes the stopwords defined in a hashtbl from vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L113>`__



.. code-block:: ocaml

  val w2i_to_tuples : t -> (string * int) list

``w2w2i_to_tuples v`` converts vocabulary ``v`` to a list of ``(word, index)`` tuples.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L189>`__



.. code-block:: ocaml

  val copy : t -> t

``copy v`` makes a copy of vocabulary ``v``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L37>`__



I/O functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val save : t -> string -> unit

``save v fname`` serialises the vocabulary and saves it to a file of name ``s``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L194>`__



.. code-block:: ocaml

  val load : string -> t

``load fname`` loads the serialised vocabulary from a file of name ``fname``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L196>`__



.. code-block:: ocaml

  val save_txt : t -> string -> unit

``save_txt v fname`` saves the vocabulary in the text format to a file of name ``s``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_vocabulary.ml#L198>`__



