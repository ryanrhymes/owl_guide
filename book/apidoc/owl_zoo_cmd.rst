Zoo System
===============================================================================

This document is auto-generated for Owl's APIs.
#16 entries have been extracted.
timestamp: 2018-03-18 23:19:08

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/zoo/owl_zoo_cmd.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/zoo/owl_zoo_cmd.ml>`_



Manipulate gists
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val remove_gist : string -> unit

Remove a local gist of given id.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L34>`__



.. code-block:: ocaml

  val upload_gist : string -> string

Upload a zoo bundle of given path to the gist server and return a gist id.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L45>`__



.. code-block:: ocaml

  val download_gist : ?vid:string -> string -> unit

Download the gist of given id and version; if a version id is not given, the latest version id will be used.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L53>`__



.. code-block:: ocaml

  val list_gist : string -> unit

``list_gist ""`` lists all the local gists; ``list_gist gist-id`` lists all the local versions of a gist.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L69>`__



.. code-block:: ocaml

  val update_gist : string array -> unit

Update the zoo gist bundles of an array of gist ids.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L76>`__



.. code-block:: ocaml

  val show_info : string -> unit

Show the gist's detail information of given gist id.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L85>`__



Execute gists
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val load_file : string -> string -> string

Load a zoo file with the given gist name and file name, the file path is relative to the gist/version folder.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L112>`__



.. code-block:: ocaml

  val eval : string -> unit

Evaluate an OCaml expression in toplevel.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L12>`__



.. code-block:: ocaml

  val preprocess : string -> string

Preprocess the zoo scripts, inject the necessary directives, functions, and modules.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L19>`__



.. code-block:: ocaml

  val run : string array -> string -> unit

``run args script`` executes the zoo script with the given arguments.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L118>`__



.. code-block:: ocaml

  val run_gist : string -> unit

``run_gist gist-id`` runs a zoo gist with the given ``gist-id``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L125>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val print_info : unit -> unit

Print out help information of ``owl`` command line.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L132>`__



.. code-block:: ocaml

  val start_toplevel : unit -> unit

Start the toplevel system tailored for Owl's zoo system.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L149>`__



