Pretty
===============================================================================

This document is auto-generated for Owl's APIs.
#3 entries have been extracted.
timestamp:1517969971

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_pretty.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_pretty.ml>`_



Basic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val pp_dsnda : Format.formatter -> ('a, 'b, 'c) Bigarray.Genarray.t -> unit

[pp_dsnda] is the pretty printer for n-dimensional arrays.



.. code-block:: ocaml

  val print : ?header:bool -> ?max_row:int -> ?max_col:int -> ?elt_to_str_fun:('a -> string) -> ?formatter:Format.formatter -> ('a, 'b, Bigarray.c_layout) Bigarray.Genarray.t -> unit

[print] provides the better control of pretty printing function of owl's
n-dimensional array. [max_row] and [max_col] specify the maximum number of
rows and columns to display. [header] specifies whether or not to print out
the headers. [fmt] is the function to format every element into string.



