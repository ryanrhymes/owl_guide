Log
===============================================================================

This document is auto-generated for Owl's APIs.
#12 entries have been extracted.
timestamp:1517848328

Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type level = DEBUG | INFO | WARN | ERROR | FATAL
    

Type definition of log levels, priority is from low to high. Using ``set_level``
function to set global logging level to high one can mask the output from low
level loggging.



Configuration functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val set_level : level -> unit

This function sets the global logging level. Low level logging will be omitted.



.. code-block:: ocaml

  val set_output : out_channel -> unit

This function sets the channel for the logging output. The default one is the
standard output.



.. code-block:: ocaml

  val set_color : bool -> unit

``set_color true`` turns on the colour; ``set_color false`` turns it off.



Log functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val debug : ('a, out_channel, unit) format -> 'a

This function outputs log at ``DEBUG`` level.



.. code-block:: ocaml

  val info : ('a, out_channel, unit) format -> 'a

This function outputs log at ``INFO`` level.



.. code-block:: ocaml

  val warn : ('a, out_channel, unit) format -> 'a

This function outputs log at ``WARN`` level.



.. code-block:: ocaml

  val error : ('a, out_channel, unit) format -> 'a

This function outputs log at ``ERROR`` level.



.. code-block:: ocaml

  val fatal : ('a, out_channel, unit) format -> 'a

This function outputs log at ``FATAL`` level.



