Log
===============================================================================

This document is auto-generated for Owl's APIs.
#12 entries have been extracted.
timestamp: 2018-02-10 17:42:51

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_log.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/base/misc/owl_log.ml>`_



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

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_log.ml#L33>`__



.. code-block:: ocaml

  val set_output : out_channel -> unit

This function sets the channel for the logging output. The default one is the
standard output.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_log.ml#L35>`__



.. code-block:: ocaml

  val set_color : bool -> unit

``set_color true`` turns on the colour; ``set_color false`` turns it off.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_log.ml#L37>`__



Log functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val debug : ('a, out_channel, unit) format -> 'a

This function outputs log at ``DEBUG`` level.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_log.ml#L73>`__



.. code-block:: ocaml

  val info : ('a, out_channel, unit) format -> 'a

This function outputs log at ``INFO`` level.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_log.ml#L71>`__



.. code-block:: ocaml

  val warn : ('a, out_channel, unit) format -> 'a

This function outputs log at ``WARN`` level.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_log.ml#L75>`__



.. code-block:: ocaml

  val error : ('a, out_channel, unit) format -> 'a

This function outputs log at ``ERROR`` level.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_log.ml#L77>`__



.. code-block:: ocaml

  val fatal : ('a, out_channel, unit) format -> 'a

This function outputs log at ``FATAL`` level.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/base/misc/owl_log.ml#L79>`__



