NLP.Corpus
===============================================================================

This document is auto-generated for Owl's APIs.
#40 entries have been extracted.
timestamp: 2018-03-11 01:22:55

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_corpus.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/nlp/owl_nlp_corpus.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type t
    

Type of a text corpus.

Query corpus
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val length : t -> int

Return the size of the corpus, i.e. number of documents.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L80>`__



.. code-block:: ocaml

  val get : t -> int -> string

Return the ith document in the corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L97>`__



.. code-block:: ocaml

  val get_tok : t -> int -> int array

Return the ith tokenised document in the corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L105>`__



.. code-block:: ocaml

  val get_uri : t -> string

Return the path of the corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L49>`__



.. code-block:: ocaml

  val get_bin_uri : t -> string

Return the path of the binary format of corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L51>`__



.. code-block:: ocaml

  val get_bin_fh : t -> in_channel

Return the file handle of the binary formation of corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L53>`__



.. code-block:: ocaml

  val get_tok_uri : t -> string

Return the path of tokenised corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L60>`__



.. code-block:: ocaml

  val get_tok_fh : t -> in_channel

Return the file handle of the tokenised corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L62>`__



.. code-block:: ocaml

  val get_vocab_uri : t -> string

Return the path of vocabulary file associated with the corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L69>`__



.. code-block:: ocaml

  val get_vocab : t -> Owl_nlp_vocabulary.t

Return the vocabulary associated with the corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L71>`__



.. code-block:: ocaml

  val get_docid : t -> int array

Return a list of document ids which are mapped back to the original file where the corpus is built.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L78>`__



Iteration functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val next : t -> string

Return the next document in the corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L85>`__



.. code-block:: ocaml

  val next_tok : t -> int array

Return the next tokenised document in the corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L87>`__



.. code-block:: ocaml

  val iteri : (int -> string -> unit) -> t -> unit

Iterate all the documents in the corpus, the index (line number) is passed in.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L89>`__



.. code-block:: ocaml

  val iteri_tok : (int -> int array -> unit) -> t -> unit

Iterate the tokenised documents in the corpus, the index (line number) is passed in.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L91>`__



.. code-block:: ocaml

  val mapi : (int -> string -> 'a) -> t -> 'a array

Map all the documents in a corpus into another array. The index (line number) is passed in.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L93>`__



.. code-block:: ocaml

  val mapi_tok : (int -> 'a -> 'b) -> t -> 'b array

Map all the tokenised ocuments in a corpus into another array. The index (line number) is passed in.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L95>`__



.. code-block:: ocaml

  val next_batch : ?size:int -> t -> string array

Return the next batch of documents in a corpus as a string array. The default ``size`` is 100.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L123>`__



.. code-block:: ocaml

  val next_batch_tok : ?size:int -> t -> int array array

Return the next batch of tokenised documents in a corpus as a string array. The default ``size`` is 100.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L133>`__



.. code-block:: ocaml

  val reset_iterators : t -> unit

Reset the iterator to the begining of the corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L114>`__



Core functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val build : ?docid:int array -> ?stopwords:(string, 'a) Hashtbl.t -> ?lo:float -> ?hi:float -> ?vocab:Owl_nlp_vocabulary.t -> ?minlen:int -> string -> t

This function builds up a corpus of type ``t`` from a given raw text corpus. We
assume that each line in the raw text corpus represents a document.

Parameters:
  * ``?docid``: passed in ``docid`` can be used for tracking back to the original corpus, but this is not compulsory.
  * ``?stopwords``: stopwords used in building vocabulary.
  * ``?lo``: any word below this lower bound of the frequency is removed from vocabulary.
  * ``?hi``: any word above this upper bound of the frequency is removed from vocabulary.
  * ``?vocab``: an optional vocabulary, if it is not passed, the vocabulary is built from current corpus.
  * ``?(minlen=10)``: threshold of the document length, any document shorter than this is removed from the corpus.
  * ``fname``: the file name of the raw text corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L156>`__



.. code-block:: ocaml

  val tokenise : t -> string -> int array

``tokenise corpus doc`` tokenises the document ``doc`` using the ``corpus`` and its associated vocabulary.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L142>`__



.. code-block:: ocaml

  val unique : string -> string -> int array

Remove the duplicates in a text corpus, the ids of the removed files are returned.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L229>`__



.. code-block:: ocaml

  val simple_process : string -> string

Function for simple pre-processing a given string.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L247>`__



.. code-block:: ocaml

  val preprocess : (string -> bytes) -> string -> string -> unit

``preprocess f input_file output_file`` pre-processes a given file
``input_file`` with the passed in function ``f`` then saves the output to
``output_file``.

E.g., you can plug in ``simple_process`` function to clean up the text. Note
this function will not change the number of lines in a corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L258>`__



I/O functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val save : t -> string -> unit

Serialise the corpus and save it to a file of given name.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L281>`__



.. code-block:: ocaml

  val load : string -> t

Load a serialised corpus from a file.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L285>`__



.. code-block:: ocaml

  val save_txt : t -> string -> unit

Convert the tokenised corpus back to a text file

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L293>`__



.. code-block:: ocaml

  val to_string : t -> string

The string representation of a corpus, contains the summary of a corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L308>`__



.. code-block:: ocaml

  val print : t -> unit

Pretty print the summary of a text corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L314>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val create : string -> int array -> int array -> in_channel option -> in_channel option -> Owl_nlp_vocabulary.t option -> int -> int array -> t

```create uri bin_ofs tok_ofs bin_fh tok_fh vocab minlen docid` wraps up the
corpus into a record of type ``t``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L34>`__



.. code-block:: ocaml

  val reduce_model : t -> t

Set some fields to ``None`` so it can be safely serialised.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L270>`__



.. code-block:: ocaml

  val cleanup : t -> unit

Close the opened file handles associated with the corpus.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/nlp/owl_nlp_corpus.ml#L30>`__



