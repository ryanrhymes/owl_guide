High-level OpenCL API
===============================================================================

This document is auto-generated for Owl's APIs.
#67 entries have been extracted.
timestamp: 2018-03-30 14:31:15

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/opencl/owl_opencl_base.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/opencl/owl_opencl_base.ml>`_



Platform module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type info = {
    profile    : string;
    version    : string;
    name       : string;
    vendor     : string;
    extensions : string;
    }
    

``info`` type contains the basic information of the object.

.. code-block:: ocaml

  val get_info : cl_platform_id -> info

Get the information of a given object.

.. code-block:: ocaml

  val to_string : cl_platform_id -> string

Get the string representation of a given object, often contains the object's basic information.

.. code-block:: ocaml

  val get_platforms : unit -> cl_platform_id array

Get an array of all the available platforms.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L27>`__



Device module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type info = {
    name                  : string;
    profile               : string;
    vendor                : string;
    version               : string;
    driver_version        : string;
    opencl_c_version      : string;
    build_in_kernels      : string;
    typ                   : int;
    address_bits          : int;
    available             : bool;
    compiler_available    : bool;
    linker_available      : bool;
    global_mem_cache_size : int;
    global_mem_size       : int;
    max_clock_frequency   : int;
    max_compute_units     : int;
    max_work_group_size   : int;
    max_parameter_size    : int;
    max_samplers          : int;
    reference_count       : int;
    double_fp_config      : int;
    extensions            : string;
    parent_device         : cl_device_id;
    platform              : cl_platform_id;
    }
    

``info`` type contains the basic information of the object.

.. code-block:: ocaml

  val get_info : cl_device_id -> info

Get the information of a given object.

.. code-block:: ocaml

  val to_string : cl_device_id -> string

Get the string representation of a given object, often contains the object's basic information.

.. code-block:: ocaml

  val get_devices : cl_platform_id -> cl_device_id array

Get an array of all the available devices on a given platform.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L101>`__



Context module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type info = {
    reference_count : int;
    num_devices     : int;
    devices         : cl_device_id array;
    }
    

``info`` type contains the basic information of the object.

.. code-block:: ocaml

  val get_info : cl_context -> info

Get the information of a given object.

.. code-block:: ocaml

  val to_string : cl_context -> string

Get the string representation of a given object, often contains the object's basic information.

.. code-block:: ocaml

  val create : ?properties:(int * int) list -> cl_device_id array -> cl_context

Create an object with the passed in parameters.

.. code-block:: ocaml

  val create_from_type : ?properties:(int * int) list -> int -> cl_context

Create a context from a given type.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L231>`__



.. code-block:: ocaml

  val retain : cl_context -> unit

Retain a resource by increasing its reference number by 1.

.. code-block:: ocaml

  val release : cl_context -> unit

Release a resource by decreasing its reference number by 1.

Program module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type info = {
    reference_count : int;
    context         : cl_context;
    num_devices     : int;
    devices         : cl_device_id array;
    source          : string;
    binary_sizes    : int array;
    binaries        : Cstubs_internals.voidp array;
    num_kernels     : int;
    kernel_names    : string array;
    }
    

``info`` type contains the basic information of the object.

.. code-block:: ocaml

  val get_info : cl_program -> info

Get the information of a given object.

.. code-block:: ocaml

  val to_string : cl_program -> string

Get the string representation of a given object, often contains the object's basic information.

.. code-block:: ocaml

  val create_with_source : cl_context -> string array -> cl_program

Create a program from its source string.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L294>`__



.. code-block:: ocaml

  val build : ?options:string -> cl_program -> cl_device_id array -> unit

Build a program for the passed-in devices with the given parameters.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L311>`__



.. code-block:: ocaml

  val retain : cl_program -> unit

Retain a resource by increasing its reference number by 1.

.. code-block:: ocaml

  val release : cl_program -> unit

Release a resource by decreasing its reference number by 1.

Kernel module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type info = {
    function_name   : string;
    num_args        : int;
    attributes      : int;
    reference_count : int;
    context         : cl_context;
    program         : cl_program;
    work_group_size : (cl_device_id * int) array;
    }
    

``info`` type contains the basic information of the object.

.. code-block:: ocaml

  val get_info : cl_kernel -> info

Get the information of a given object.

.. code-block:: ocaml

  val to_string : cl_kernel -> string

Get the string representation of a given object, often contains the object's basic information.

.. code-block:: ocaml

  val create : cl_program -> string -> cl_kernel

Create an object with the passed in parameters.

.. code-block:: ocaml

  val set_arg : cl_kernel -> int -> int -> 'a Ctypes.ptr -> unit

Set the arguments of a given kernel.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L412>`__



.. code-block:: ocaml

  val enqueue_task : ?wait_for:cl_event list -> cl_command_queue -> cl_kernel -> cl_event

Enqueue a task into the associate command queue of a given kernel.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L419>`__



.. code-block:: ocaml

  val enqueue_ndrange : ?wait_for:cl_event list -> ?global_work_ofs:int list -> ?local_work_size:int list -> cl_command_queue -> cl_kernel -> int -> int list -> cl_event

Enqueue a ndrange task into the associate command queue of a given kernel.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L431>`__



.. code-block:: ocaml

  val retain : cl_kernel -> unit

Retain a resource by increasing its reference number by 1.

.. code-block:: ocaml

  val release : cl_kernel -> unit

Release a resource by decreasing its reference number by 1.

CommandQueue module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type info = {
    context          : cl_context;
    device           : cl_device_id;
    reference_count  : int;
    queue_properties : Unsigned.ULong.t;
    }
    

``info`` type contains the basic information of the object.

.. code-block:: ocaml

  val get_info : cl_command_queue -> info

Get the information of a given object.

.. code-block:: ocaml

  val to_string : cl_command_queue -> string

Get the string representation of a given object, often contains the object's basic information.

.. code-block:: ocaml

  val create : ?properties:int list -> cl_context -> cl_device_id -> cl_command_queue

Create an object with the passed in parameters.

.. code-block:: ocaml

  val barrier : ?wait_for:cl_event list -> cl_command_queue -> cl_event

Barrier function of the given command queue.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L526>`__



.. code-block:: ocaml

  val marker : ?wait_for:cl_event list -> cl_command_queue -> cl_event

Marker function of the given command queue.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L538>`__



.. code-block:: ocaml

  val flush : cl_command_queue -> unit

Flush the given command queue.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L520>`__



.. code-block:: ocaml

  val finish : cl_command_queue -> unit

Finish the given command queue.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L523>`__



.. code-block:: ocaml

  val retain : cl_command_queue -> unit

Retain a resource by increasing its reference number by 1.

.. code-block:: ocaml

  val release : cl_command_queue -> unit

Release a resource by decreasing its reference number by 1.

Event module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type info = {
    command_type             : int;
    reference_count          : int;
    command_execution_status : int;
    command_queue            : cl_command_queue;
    context                  : cl_context;
    }
    

``info`` type contains the basic information of the object.

.. code-block:: ocaml

  val get_info : cl_event -> info

Get the information of a given object.

.. code-block:: ocaml

  val to_string : cl_event -> string

Get the string representation of a given object, often contains the object's basic information.

.. code-block:: ocaml

  val create : cl_context -> cl_event

Create an object with the passed in parameters.

.. code-block:: ocaml

  val set_status : cl_event -> int -> unit

Set the status of a given event.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L611>`__



.. code-block:: ocaml

  val wait_for : cl_event list -> int32

Wait for a list of events to finish.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L617>`__



.. code-block:: ocaml

  val retain : cl_event -> unit

Retain a resource by increasing its reference number by 1.

.. code-block:: ocaml

  val release : cl_event -> unit

Release a resource by decreasing its reference number by 1.

Buffer module
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type info = {
    typ             : int;
    size            : int;
    reference_count : int;
    }
    

``info`` type contains the basic information of the object.

.. code-block:: ocaml

  val get_info : cl_mem -> info

Get the information of a given object.

.. code-block:: ocaml

  val to_string : cl_mem -> string

Get the string representation of a given object, often contains the object's basic information.

.. code-block:: ocaml

  val create : ?flags:int list -> cl_context -> ('a, 'b) Owl_dense_ndarray_generic.t -> cl_mem

Create an object with the passed in parameters.

.. code-block:: ocaml

  val enqueue_read : ?blocking:bool -> ?wait_for:cl_event list -> cl_command_queue -> cl_mem -> int -> int -> unit Ctypes.ptr -> cl_event

Enqueue a read operation on the given memory object to a command queue.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L687>`__



.. code-block:: ocaml

  val enqueue_write : ?blocking:bool -> ?wait_for:cl_event list -> cl_command_queue -> cl_mem -> int -> int -> unit Ctypes.ptr -> cl_event

Enqueue a write operation on the given memory object to a command queue.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L707>`__



.. code-block:: ocaml

  val enqueue_map : ?blocking:bool -> ?wait_for:Owl_opencl_generated.cl_event list -> ?flags:int list -> cl_command_queue -> cl_mem -> int -> int -> 'a -> cl_event * unit Ctypes.ptr

Enqueue a map operation on the given memory object to a command queue.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L727>`__



.. code-block:: ocaml

  val enqueue_unmap : ?wait_for:cl_event list -> cl_command_queue -> cl_mem -> unit Ctypes.ptr -> cl_event

Enqueue a unmap operation on the given memory object to a command queue.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_base.ml#L750>`__



.. code-block:: ocaml

  val retain : cl_mem -> unit

Retain a resource by increasing its reference number by 1.

.. code-block:: ocaml

  val release : cl_mem -> unit

Release a resource by decreasing its reference number by 1.

