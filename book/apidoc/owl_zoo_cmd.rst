Zoo System
===============================================================================

This document is auto-generated for Owl's APIs.
#16 entries have been extracted.
timestamp: 2018-02-13 22:30:58

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/zoo/owl_zoo_cmd.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/zoo/owl_zoo_cmd.ml>`_



Manipulate gists
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val remove_gist : string -> unit

Remove a local gist of given id.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L31>`__



.. code-block:: ocaml

  val upload_gist : string -> unit

Upload a zoo bundle of given path to the gist server.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L38>`__



.. code-block:: ocaml

  val download_gist : string -> unit

Download the gist of given id.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L44>`__



.. code-block:: ocaml

  val list_gist : unit -> unit

List all the local gists.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L50>`__



.. code-block:: ocaml

  val update_gist : string array -> unit

Update the zoo gist bundles of an array of gist ids.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L57>`__



.. code-block:: ocaml

  val show_info : string -> unit

Show the gist's detail information of given gist id.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L70>`__



Execute gists
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val load_file : string -> string

Load a zoo file with the given file name, the file path is relative to the default zoo folder.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L94>`__



.. code-block:: ocaml

  val eval : string -> unit

Evaluate an OCaml expression in toplevel.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L9>`__



.. code-block:: ocaml

  val preprocess : string -> string

Preprocess the zoo scripts, inject the necessary directives, functions, and modules.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L16>`__



.. code-block:: ocaml

  val run : string array -> string -> unit

``run args script`` executes the zoo script with the given arguments.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L102>`__



.. code-block:: ocaml

  val run_gist : string -> unit

``run_gist gist`` runs a zoo gist with the given ``id``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L109>`__



Helper functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val print_info : unit -> unit

Print out help information of ``owl`` command line.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L116>`__



.. code-block:: ocaml

  val start_toplevel : unit -> unit

Start the toplevel system tailored for Owl's zoo system.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/zoo/owl_zoo_cmd.ml#L133>`__



