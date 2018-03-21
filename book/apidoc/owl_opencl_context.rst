OpenCL Context
===============================================================================

This document is auto-generated for Owl's APIs.
#23 entries have been extracted.
timestamp: 2018-03-21 23:32:06

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/opencl/owl_opencl_context.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/opencl/owl_opencl_context.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type num =
    | F of float
    | F32 of (float, float32_elt) Owl_dense_ndarray_generic.t
    | F64 of (float, float64_elt) Owl_dense_ndarray_generic.t
    

Type of supported number types in the `param` of `eval` function.

.. code-block:: ocaml

  type t = {
    mutable device : cl_device_id array;
    mutable context : cl_context;
    mutable program : cl_program;
    mutable progsrc : string array;
    mutable command_queue : (cl_device_id, cl_command_queue) Hashtbl.t;
    }
    

Type of context. Note this is different from OpenCL's context object.

.. code-block:: ocaml

  val default : t

Default context, with all GPU devices included and pre-compiled core kernels.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L129>`__



Query platform
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val platforms : unit -> cl_platform_id array

List all the platforms on this computer.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L39>`__



.. code-block:: ocaml

  val devices : unit -> cl_device_id array

List all the devices (including CPUs, GPUs, accelerators, etc.) on

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L42>`__



.. code-block:: ocaml

  val cpu_devices : unit -> cl_device_id array

List all the CPU devices on this computer.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L52>`__



.. code-block:: ocaml

  val gpu_devices : unit -> cl_device_id array

List all the GPU devices on this computer.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L59>`__



.. code-block:: ocaml

  val accelerators : unit -> cl_device_id array

List all the accelerators on this computer.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L66>`__



Manipulate context
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val create : cl_device_id array -> string array -> t

Create a context with the given devices. The corresponding command queues are created and core kernels are compiled.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L101>`__



.. code-block:: ocaml

  val get_opencl_ctx : t -> cl_context

Return the OpenCL context object. Note this is different from Owl's context.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L117>`__



.. code-block:: ocaml

  val get_program : t -> cl_program

Return the program associated with the context.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L120>`__



.. code-block:: ocaml

  val get_dev : t -> int -> cl_device_id

Return the ith device object associated with the context.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L123>`__



.. code-block:: ocaml

  val get_cmdq : t -> cl_device_id -> cl_command_queue

Return the corresponding command queue object of the given device object and its associated with the context.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L126>`__



Manipulate kernels
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val kernels : t -> string array

List all the installed kernels in the given context.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L73>`__



.. code-block:: ocaml

  val add_kernels : t -> string array -> unit

``add_kernels ctx code`` adds list of kernels to the existing context.
``src`` contains the source code of all the kernels. Note this function call
also causes all the existing kernels in the current context to be recompiled
with the passed in ones.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L78>`__



.. code-block:: ocaml

  val make_kernel : t -> string -> cl_kernel

``make_kernel ctx fun_name`` makes a kernel object from passed in context with the given function name.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L86>`__



.. code-block:: ocaml

  val ba_kernel : ('a, 'b) kind -> string -> cl_program -> cl_kernel

This function is similar to ``make_kernel`` but specifically for making Bigarray function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L89>`__



Evaluate kernels
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val eval : ?param:num array -> ?ctx:t -> ?dev_id:int -> ?work_dim:int -> ?work_size:int array -> string -> unit

``eval fun_name`` evaluates a kernel function in the given context, by calling
``Kernel.enqueue_ndrange`` function.

Parameters:
  * ``param``: an arrray of ``num`` type elements which are passed into kernel function. Note the order of array elements is the same as the order of parameters of kernel function.
  * ``ctx``: the context for running the kernel function, ``default`` is used if this parameter is not specified.
  * ``dev_id``: the device that the kernel function will run on. The default value is ``0``.
  * ``work_dim``: The number of dimensions used to specify the global work-items and work-items in the work-group. work_dim must be greater than zero and less than or equal to three.
  * ``work_size``: Global work size, if not specified the number of elements of the first ndarray in ``param`` is used.
  * ``fun_name``: the name of the kernel function. It is either a function in the recompiled kernels, or those added by calling ``add_kernels`` function before.

Refer to the ``global_work_size`` in `OpenCL Document on clEnqueueNDRangeKernel <https://www.khronos.org/registry/OpenCL/sdk/1.0/docs/man/xhtml/clEnqueueNDRangeKernel.html>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_context.ml#L138>`__



