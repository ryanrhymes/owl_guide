Low-level OpenCL API
===============================================================================

This document is auto-generated for Owl's APIs.
#542 entries have been extracted.
timestamp:1518030855

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/opencl/owl_opencl_generated.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/opencl/owl_opencl_generated.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type cl_platform_id
    

Type of cl_platform_id

.. code-block:: ocaml

  type cl_device_id
    

Type of cl_device_id

.. code-block:: ocaml

  type cl_context
    

Type of cl_context

.. code-block:: ocaml

  type cl_command_queue
    

Type of cl_command_queue

.. code-block:: ocaml

  type cl_mem
    

Type of cl_mem

.. code-block:: ocaml

  type cl_program
    

Type of cl_program

.. code-block:: ocaml

  type cl_kernel
    

Type of cl_kernel

.. code-block:: ocaml

  type cl_event
    

Type of cl_event

.. code-block:: ocaml

  type cl_sampler
    

Type of cl_sampler

.. code-block:: ocaml

  val cl_platform_id : cl_platform_id Ctypes.typ

Value of cl_platform_id

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L17>`__



.. code-block:: ocaml

  val cl_platform_id_null : cl_platform_id

Null value of cl_platform_id

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L18>`__



.. code-block:: ocaml

  val cl_platform_id_ptr_null : cl_platform_id Ctypes.ptr

Null pointer of cl_platform_id

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L19>`__



.. code-block:: ocaml

  val cl_device_id : cl_device_id Ctypes.typ

Value of cl_device_id

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L22>`__



.. code-block:: ocaml

  val cl_device_id_null : cl_device_id

Null value of cl_device_id

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L23>`__



.. code-block:: ocaml

  val cl_device_id_ptr_null : cl_device_id Ctypes.ptr

Null pointer of cl_device_id

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L24>`__



.. code-block:: ocaml

  val cl_context : cl_context Ctypes.typ

Value of cl_context

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L27>`__



.. code-block:: ocaml

  val cl_context_null : cl_context

Null value of cl_context

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L28>`__



.. code-block:: ocaml

  val cl_context_ptr_null : cl_context Ctypes.ptr

Null pointer of cl_context

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L29>`__



.. code-block:: ocaml

  val cl_command_queue : cl_command_queue Ctypes.typ

Value of cl_command_queue

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L32>`__



.. code-block:: ocaml

  val cl_command_queue_null : cl_command_queue

Null value of cl_command_queue

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L33>`__



.. code-block:: ocaml

  val cl_command_queue_ptr_null : cl_command_queue Ctypes.ptr

Null pointer of cl_command_queue

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L34>`__



.. code-block:: ocaml

  val cl_mem : cl_mem Ctypes.typ

Value of cl_mem

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L37>`__



.. code-block:: ocaml

  val cl_mem_null : cl_mem

Null value of cl_mem

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L38>`__



.. code-block:: ocaml

  val cl_mem_ptr_null : cl_mem Ctypes.ptr

Null pointer of cl_mem

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L39>`__



.. code-block:: ocaml

  val cl_program : cl_program Ctypes.typ

Value of cl_program

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L42>`__



.. code-block:: ocaml

  val cl_program_null : cl_program

Null value of cl_program

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L43>`__



.. code-block:: ocaml

  val cl_program_ptr_null : cl_program Ctypes.ptr

Null pointer of cl_program

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L44>`__



.. code-block:: ocaml

  val cl_kernel : cl_kernel Ctypes.typ

Value of cl_kernel

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L47>`__



.. code-block:: ocaml

  val cl_kernel_null : cl_kernel

Null value of cl_kernel

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L48>`__



.. code-block:: ocaml

  val cl_kernel_ptr_null : cl_kernel Ctypes.ptr

Null pointer of cl_kernel

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L49>`__



.. code-block:: ocaml

  val cl_event : cl_event Ctypes.typ

Value of cl_event

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L52>`__



.. code-block:: ocaml

  val cl_event_null : cl_event

Null value of cl_event

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L53>`__



.. code-block:: ocaml

  val cl_event_ptr_null : cl_event Ctypes.ptr

Null pointer of cl_event

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L54>`__



.. code-block:: ocaml

  val cl_sampler : cl_sampler Ctypes.typ

Value of cl_sampler

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L57>`__



.. code-block:: ocaml

  val cl_sampler_null : cl_sampler

Null value of cl_sampler

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L58>`__



.. code-block:: ocaml

  val cl_sampler_ptr_null : cl_sampler Ctypes.ptr

Null pointer of cl_sampler

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L59>`__



Function definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val cl_check_err : int32 -> unit

``cl_check_err`` checks error code of return value.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1489>`__



.. code-block:: ocaml

  val clGetPlatformIDs : Unsigned.uint32 -> cl_platform_id ptr -> Unsigned.uint32 ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L385>`__



.. code-block:: ocaml

  val clGetPlatformInfo : cl_platform_id -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L388>`__



.. code-block:: ocaml

  val clGetDeviceIDs : cl_platform_id -> Unsigned.ULong.t -> Unsigned.uint32 -> cl_device_id ptr -> Unsigned.uint32 ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L391>`__



.. code-block:: ocaml

  val clGetDeviceInfo : cl_device_id -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L394>`__



.. code-block:: ocaml

  val clCreateSubDevices : cl_device_id -> Intptr.t ptr -> Unsigned.uint32 -> cl_device_id ptr -> Unsigned.uint32 ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L397>`__



.. code-block:: ocaml

  val clRetainDevice : cl_device_id -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L400>`__



.. code-block:: ocaml

  val clReleaseDevice : cl_device_id -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L403>`__



.. code-block:: ocaml

  val clCreateContext : Intptr.t ptr -> Unsigned.uint32 -> cl_device_id ptr -> unit ptr -> unit ptr -> int32 ptr -> cl_context

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L406>`__



.. code-block:: ocaml

  val clCreateContextFromType : Intptr.t ptr -> Unsigned.ULong.t -> unit ptr -> unit ptr -> int32 ptr -> cl_context

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L410>`__



.. code-block:: ocaml

  val clRetainContext : cl_context -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L414>`__



.. code-block:: ocaml

  val clReleaseContext : cl_context -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L417>`__



.. code-block:: ocaml

  val clGetContextInfo : cl_context -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L420>`__



.. code-block:: ocaml

  val clCreateCommandQueue : cl_context -> cl_device_id -> Unsigned.ULong.t -> int32 ptr -> cl_command_queue

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L423>`__



.. code-block:: ocaml

  val clRetainCommandQueue : cl_command_queue -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L427>`__



.. code-block:: ocaml

  val clReleaseCommandQueue : cl_command_queue -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L430>`__



.. code-block:: ocaml

  val clGetCommandQueueInfo : cl_command_queue -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L433>`__



.. code-block:: ocaml

  val clCreateBuffer : cl_context -> Unsigned.ULong.t -> Unsigned.size_t -> unit ptr -> int32 ptr -> cl_mem

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L436>`__



.. code-block:: ocaml

  val clCreateSubBuffer : cl_mem -> Unsigned.ULong.t -> Unsigned.uint32 -> unit ptr -> int32 ptr -> cl_mem

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L440>`__



.. code-block:: ocaml

  val clRetainMemObject : cl_mem -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L444>`__



.. code-block:: ocaml

  val clReleaseMemObject : cl_mem -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L447>`__



.. code-block:: ocaml

  val clGetMemObjectInfo : cl_mem -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L450>`__



.. code-block:: ocaml

  val clGetImageInfo : cl_mem -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L453>`__



.. code-block:: ocaml

  val clSetMemObjectDestructorCallback : cl_mem -> unit ptr -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L456>`__



.. code-block:: ocaml

  val clCreateSampler : cl_context -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> int32 ptr -> cl_sampler

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L459>`__



.. code-block:: ocaml

  val clRetainSampler : cl_sampler -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L463>`__



.. code-block:: ocaml

  val clReleaseSampler : cl_sampler -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L466>`__



.. code-block:: ocaml

  val clGetSamplerInfo : cl_sampler -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L469>`__



.. code-block:: ocaml

  val clCreateProgramWithSource : cl_context -> Unsigned.uint32 -> char ptr ptr -> Unsigned.size_t ptr -> int32 ptr -> cl_program

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L472>`__



.. code-block:: ocaml

  val clCreateProgramWithBinary : cl_context -> Unsigned.uint32 -> cl_device_id ptr -> Unsigned.size_t ptr -> Unsigned.UChar.t ptr ptr -> int32 ptr -> int32 ptr -> cl_program

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L476>`__



.. code-block:: ocaml

  val clCreateProgramWithBuiltInKernels : cl_context -> Unsigned.uint32 -> cl_device_id ptr -> char ptr -> int32 ptr -> cl_program

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L480>`__



.. code-block:: ocaml

  val clRetainProgram : cl_program -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L484>`__



.. code-block:: ocaml

  val clReleaseProgram : cl_program -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L487>`__



.. code-block:: ocaml

  val clBuildProgram : cl_program -> Unsigned.uint32 -> cl_device_id ptr -> char ptr -> unit ptr -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L490>`__



.. code-block:: ocaml

  val clCompileProgram : cl_program -> Unsigned.uint32 -> cl_device_id ptr -> char ptr -> Unsigned.uint32 -> cl_program ptr -> char ptr ptr -> unit ptr -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L493>`__



.. code-block:: ocaml

  val clLinkProgram : cl_context -> Unsigned.uint32 -> cl_device_id ptr -> char ptr -> Unsigned.uint32 -> cl_program ptr -> unit ptr -> unit ptr -> int32 ptr -> cl_program

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L496>`__



.. code-block:: ocaml

  val clUnloadPlatformCompiler : cl_platform_id -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L500>`__



.. code-block:: ocaml

  val clGetProgramInfo : cl_program -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L503>`__



.. code-block:: ocaml

  val clGetProgramBuildInfo : cl_program -> cl_device_id -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L506>`__



.. code-block:: ocaml

  val clCreateKernel : cl_program -> char ptr -> int32 ptr -> cl_kernel

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L509>`__



.. code-block:: ocaml

  val clCreateKernelsInProgram : cl_program -> Unsigned.uint32 -> cl_kernel ptr -> Unsigned.uint32 ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L513>`__



.. code-block:: ocaml

  val clRetainKernel : cl_kernel -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L516>`__



.. code-block:: ocaml

  val clReleaseKernel : cl_kernel -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L519>`__



.. code-block:: ocaml

  val clSetKernelArg : cl_kernel -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L522>`__



.. code-block:: ocaml

  val clGetKernelInfo : cl_kernel -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L525>`__



.. code-block:: ocaml

  val clGetKernelArgInfo : cl_kernel -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L528>`__



.. code-block:: ocaml

  val clGetKernelWorkGroupInfo : cl_kernel -> cl_device_id -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L531>`__



.. code-block:: ocaml

  val clWaitForEvents : Unsigned.uint32 -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L534>`__



.. code-block:: ocaml

  val clGetEventInfo : cl_event -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L537>`__



.. code-block:: ocaml

  val clCreateUserEvent : cl_context -> int32 ptr -> cl_event

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L540>`__



.. code-block:: ocaml

  val clRetainEvent : cl_event -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L544>`__



.. code-block:: ocaml

  val clReleaseEvent : cl_event -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L547>`__



.. code-block:: ocaml

  val clSetUserEventStatus : cl_event -> int32 -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L550>`__



.. code-block:: ocaml

  val clSetEventCallback : cl_event -> int32 -> unit ptr -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L553>`__



.. code-block:: ocaml

  val clGetEventProfilingInfo : cl_event -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L556>`__



.. code-block:: ocaml

  val clFlush : cl_command_queue -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L559>`__



.. code-block:: ocaml

  val clFinish : cl_command_queue -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L562>`__



.. code-block:: ocaml

  val clEnqueueReadBuffer : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L565>`__



.. code-block:: ocaml

  val clEnqueueReadBufferRect : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L568>`__



.. code-block:: ocaml

  val clEnqueueWriteBuffer : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L571>`__



.. code-block:: ocaml

  val clEnqueueWriteBufferRect : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L574>`__



.. code-block:: ocaml

  val clEnqueueFillBuffer : cl_command_queue -> cl_mem -> unit ptr -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L577>`__



.. code-block:: ocaml

  val clEnqueueCopyBuffer : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L580>`__



.. code-block:: ocaml

  val clEnqueueCopyBufferRect : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L583>`__



.. code-block:: ocaml

  val clEnqueueReadImage : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L586>`__



.. code-block:: ocaml

  val clEnqueueWriteImage : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L589>`__



.. code-block:: ocaml

  val clEnqueueFillImage : cl_command_queue -> cl_mem -> unit ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L592>`__



.. code-block:: ocaml

  val clEnqueueCopyImage : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L595>`__



.. code-block:: ocaml

  val clEnqueueCopyImageToBuffer : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L598>`__



.. code-block:: ocaml

  val clEnqueueCopyBufferToImage : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L601>`__



.. code-block:: ocaml

  val clEnqueueMapBuffer : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.ULong.t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32 ptr -> unit ptr

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L604>`__



.. code-block:: ocaml

  val clEnqueueMapImage : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.ULong.t -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32 ptr -> unit ptr

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L608>`__



.. code-block:: ocaml

  val clEnqueueUnmapMemObject : cl_command_queue -> cl_mem -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L612>`__



.. code-block:: ocaml

  val clEnqueueMigrateMemObjects : cl_command_queue -> Unsigned.uint32 -> cl_mem ptr -> Unsigned.ULong.t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L615>`__



.. code-block:: ocaml

  val clEnqueueNDRangeKernel : cl_command_queue -> cl_kernel -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L618>`__



.. code-block:: ocaml

  val clEnqueueTask : cl_command_queue -> cl_kernel -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L621>`__



.. code-block:: ocaml

  val clEnqueueNativeKernel : cl_command_queue -> unit ptr -> unit ptr -> Unsigned.size_t -> Unsigned.uint32 -> cl_mem ptr -> unit ptr ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L624>`__



.. code-block:: ocaml

  val clEnqueueMarkerWithWaitList : cl_command_queue -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L627>`__



.. code-block:: ocaml

  val clEnqueueBarrierWithWaitList : cl_command_queue -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L630>`__



.. code-block:: ocaml

  val clGetExtensionFunctionAddressForPlatform : cl_platform_id -> char ptr -> unit ptr

Refer to `OpenCL <https://www.khronos.org/opencl/>`_

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L633>`__



Constant definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val cl_SUCCESS : int

Constant ``SUCCESS = 0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L641>`__



.. code-block:: ocaml

  val cl_DEVICE_NOT_FOUND : int

Constant ``DEVICE_NOT_FOUND = -1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L643>`__



.. code-block:: ocaml

  val cl_DEVICE_NOT_AVAILABLE : int

Constant ``DEVICE_NOT_AVAILABLE = -2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L645>`__



.. code-block:: ocaml

  val cl_COMPILER_NOT_AVAILABLE : int

Constant ``COMPILER_NOT_AVAILABLE = -3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L647>`__



.. code-block:: ocaml

  val cl_MEM_OBJECT_ALLOCATION_FAILURE : int

Constant ``MEM_OBJECT_ALLOCATION_FAILURE = -4``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L649>`__



.. code-block:: ocaml

  val cl_OUT_OF_RESOURCES : int

Constant ``OUT_OF_RESOURCES = -5``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L651>`__



.. code-block:: ocaml

  val cl_OUT_OF_HOST_MEMORY : int

Constant ``OUT_OF_HOST_MEMORY = -6``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L653>`__



.. code-block:: ocaml

  val cl_PROFILING_INFO_NOT_AVAILABLE : int

Constant ``PROFILING_INFO_NOT_AVAILABLE = -7``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L655>`__



.. code-block:: ocaml

  val cl_MEM_COPY_OVERLAP : int

Constant ``MEM_COPY_OVERLAP = -8``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L657>`__



.. code-block:: ocaml

  val cl_IMAGE_FORMAT_MISMATCH : int

Constant ``IMAGE_FORMAT_MISMATCH = -9``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L659>`__



.. code-block:: ocaml

  val cl_IMAGE_FORMAT_NOT_SUPPORTED : int

Constant ``IMAGE_FORMAT_NOT_SUPPORTED = -10``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L661>`__



.. code-block:: ocaml

  val cl_BUILD_PROGRAM_FAILURE : int

Constant ``BUILD_PROGRAM_FAILURE = -11``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L663>`__



.. code-block:: ocaml

  val cl_MAP_FAILURE : int

Constant ``MAP_FAILURE = -12``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L665>`__



.. code-block:: ocaml

  val cl_MISALIGNED_SUB_BUFFER_OFFSET : int

Constant ``MISALIGNED_SUB_BUFFER_OFFSET = -13``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L667>`__



.. code-block:: ocaml

  val cl_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST : int

Constant ``EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST = -14``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L669>`__



.. code-block:: ocaml

  val cl_COMPILE_PROGRAM_FAILURE : int

Constant ``COMPILE_PROGRAM_FAILURE = -15``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L671>`__



.. code-block:: ocaml

  val cl_LINKER_NOT_AVAILABLE : int

Constant ``LINKER_NOT_AVAILABLE = -16``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L673>`__



.. code-block:: ocaml

  val cl_LINK_PROGRAM_FAILURE : int

Constant ``LINK_PROGRAM_FAILURE = -17``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L675>`__



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_FAILED : int

Constant ``DEVICE_PARTITION_FAILED = -18``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L677>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_INFO_NOT_AVAILABLE : int

Constant ``KERNEL_ARG_INFO_NOT_AVAILABLE = -19``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L679>`__



.. code-block:: ocaml

  val cl_INVALID_VALUE : int

Constant ``INVALID_VALUE = -30``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L681>`__



.. code-block:: ocaml

  val cl_INVALID_DEVICE_TYPE : int

Constant ``INVALID_DEVICE_TYPE = -31``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L683>`__



.. code-block:: ocaml

  val cl_INVALID_PLATFORM : int

Constant ``INVALID_PLATFORM = -32``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L685>`__



.. code-block:: ocaml

  val cl_INVALID_DEVICE : int

Constant ``INVALID_DEVICE = -33``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L687>`__



.. code-block:: ocaml

  val cl_INVALID_CONTEXT : int

Constant ``INVALID_CONTEXT = -34``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L689>`__



.. code-block:: ocaml

  val cl_INVALID_QUEUE_PROPERTIES : int

Constant ``INVALID_QUEUE_PROPERTIES = -35``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L691>`__



.. code-block:: ocaml

  val cl_INVALID_COMMAND_QUEUE : int

Constant ``INVALID_COMMAND_QUEUE = -36``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L693>`__



.. code-block:: ocaml

  val cl_INVALID_HOST_PTR : int

Constant ``INVALID_HOST_PTR = -37``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L695>`__



.. code-block:: ocaml

  val cl_INVALID_MEM_OBJECT : int

Constant ``INVALID_MEM_OBJECT = -38``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L697>`__



.. code-block:: ocaml

  val cl_INVALID_IMAGE_FORMAT_DESCRIPTOR : int

Constant ``INVALID_IMAGE_FORMAT_DESCRIPTOR = -39``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L699>`__



.. code-block:: ocaml

  val cl_INVALID_IMAGE_SIZE : int

Constant ``INVALID_IMAGE_SIZE = -40``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L701>`__



.. code-block:: ocaml

  val cl_INVALID_SAMPLER : int

Constant ``INVALID_SAMPLER = -41``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L703>`__



.. code-block:: ocaml

  val cl_INVALID_BINARY : int

Constant ``INVALID_BINARY = -42``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L705>`__



.. code-block:: ocaml

  val cl_INVALID_BUILD_OPTIONS : int

Constant ``INVALID_BUILD_OPTIONS = -43``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L707>`__



.. code-block:: ocaml

  val cl_INVALID_PROGRAM : int

Constant ``INVALID_PROGRAM = -44``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L709>`__



.. code-block:: ocaml

  val cl_INVALID_PROGRAM_EXECUTABLE : int

Constant ``INVALID_PROGRAM_EXECUTABLE = -45``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L711>`__



.. code-block:: ocaml

  val cl_INVALID_KERNEL_NAME : int

Constant ``INVALID_KERNEL_NAME = -46``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L713>`__



.. code-block:: ocaml

  val cl_INVALID_KERNEL_DEFINITION : int

Constant ``INVALID_KERNEL_DEFINITION = -47``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L715>`__



.. code-block:: ocaml

  val cl_INVALID_KERNEL : int

Constant ``INVALID_KERNEL = -48``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L717>`__



.. code-block:: ocaml

  val cl_INVALID_ARG_INDEX : int

Constant ``INVALID_ARG_INDEX = -49``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L719>`__



.. code-block:: ocaml

  val cl_INVALID_ARG_VALUE : int

Constant ``INVALID_ARG_VALUE = -50``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L721>`__



.. code-block:: ocaml

  val cl_INVALID_ARG_SIZE : int

Constant ``INVALID_ARG_SIZE = -51``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L723>`__



.. code-block:: ocaml

  val cl_INVALID_KERNEL_ARGS : int

Constant ``INVALID_KERNEL_ARGS = -52``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L725>`__



.. code-block:: ocaml

  val cl_INVALID_WORK_DIMENSION : int

Constant ``INVALID_WORK_DIMENSION = -53``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L727>`__



.. code-block:: ocaml

  val cl_INVALID_WORK_GROUP_SIZE : int

Constant ``INVALID_WORK_GROUP_SIZE = -54``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L729>`__



.. code-block:: ocaml

  val cl_INVALID_WORK_ITEM_SIZE : int

Constant ``INVALID_WORK_ITEM_SIZE = -55``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L731>`__



.. code-block:: ocaml

  val cl_INVALID_GLOBAL_OFFSET : int

Constant ``INVALID_GLOBAL_OFFSET = -56``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L733>`__



.. code-block:: ocaml

  val cl_INVALID_EVENT_WAIT_LIST : int

Constant ``INVALID_EVENT_WAIT_LIST = -57``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L735>`__



.. code-block:: ocaml

  val cl_INVALID_EVENT : int

Constant ``INVALID_EVENT = -58``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L737>`__



.. code-block:: ocaml

  val cl_INVALID_OPERATION : int

Constant ``INVALID_OPERATION = -59``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L739>`__



.. code-block:: ocaml

  val cl_INVALID_GL_OBJECT : int

Constant ``INVALID_GL_OBJECT = -60``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L741>`__



.. code-block:: ocaml

  val cl_INVALID_BUFFER_SIZE : int

Constant ``INVALID_BUFFER_SIZE = -61``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L743>`__



.. code-block:: ocaml

  val cl_INVALID_MIP_LEVEL : int

Constant ``INVALID_MIP_LEVEL = -62``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L745>`__



.. code-block:: ocaml

  val cl_INVALID_GLOBAL_WORK_SIZE : int

Constant ``INVALID_GLOBAL_WORK_SIZE = -63``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L747>`__



.. code-block:: ocaml

  val cl_INVALID_PROPERTY : int

Constant ``INVALID_PROPERTY = -64``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L749>`__



.. code-block:: ocaml

  val cl_INVALID_IMAGE_DESCRIPTOR : int

Constant ``INVALID_IMAGE_DESCRIPTOR = -65``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L751>`__



.. code-block:: ocaml

  val cl_INVALID_COMPILER_OPTIONS : int

Constant ``INVALID_COMPILER_OPTIONS = -66``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L753>`__



.. code-block:: ocaml

  val cl_INVALID_LINKER_OPTIONS : int

Constant ``INVALID_LINKER_OPTIONS = -67``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L755>`__



.. code-block:: ocaml

  val cl_INVALID_DEVICE_PARTITION_COUNT : int

Constant ``INVALID_DEVICE_PARTITION_COUNT = -68``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L757>`__



.. code-block:: ocaml

  val cl_VERSION_1_0 : int

Constant ``VERSION_1_0 = 1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L759>`__



.. code-block:: ocaml

  val cl_VERSION_1_1 : int

Constant ``VERSION_1_1 = 1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L761>`__



.. code-block:: ocaml

  val cl_VERSION_1_2 : int

Constant ``VERSION_1_2 = 1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L763>`__



.. code-block:: ocaml

  val cl_FALSE : int

Constant ``FALSE = 0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L765>`__



.. code-block:: ocaml

  val cl_TRUE : int

Constant ``TRUE = 1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L767>`__



.. code-block:: ocaml

  val cl_BLOCKING : int

Constant ``BLOCKING = 1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L769>`__



.. code-block:: ocaml

  val cl_NON_BLOCKING : int

Constant ``NON_BLOCKING = 0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L771>`__



.. code-block:: ocaml

  val cl_PLATFORM_PROFILE : int

Constant ``PLATFORM_PROFILE = 0x0900``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L773>`__



.. code-block:: ocaml

  val cl_PLATFORM_VERSION : int

Constant ``PLATFORM_VERSION = 0x0901``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L775>`__



.. code-block:: ocaml

  val cl_PLATFORM_NAME : int

Constant ``PLATFORM_NAME = 0x0902``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L777>`__



.. code-block:: ocaml

  val cl_PLATFORM_VENDOR : int

Constant ``PLATFORM_VENDOR = 0x0903``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L779>`__



.. code-block:: ocaml

  val cl_PLATFORM_EXTENSIONS : int

Constant ``PLATFORM_EXTENSIONS = 0x0904``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L781>`__



.. code-block:: ocaml

  val cl_DEVICE_TYPE_DEFAULT : int

Constant ``DEVICE_TYPE_DEFAULT = (1 lsl 0)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L783>`__



.. code-block:: ocaml

  val cl_DEVICE_TYPE_CPU : int

Constant ``DEVICE_TYPE_CPU = (1 lsl 1)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L785>`__



.. code-block:: ocaml

  val cl_DEVICE_TYPE_GPU : int

Constant ``DEVICE_TYPE_GPU = (1 lsl 2)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L787>`__



.. code-block:: ocaml

  val cl_DEVICE_TYPE_ACCELERATOR : int

Constant ``DEVICE_TYPE_ACCELERATOR = (1 lsl 3)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L789>`__



.. code-block:: ocaml

  val cl_DEVICE_TYPE_CUSTOM : int

Constant ``DEVICE_TYPE_CUSTOM = (1 lsl 4)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L791>`__



.. code-block:: ocaml

  val cl_DEVICE_TYPE_ALL : int

Constant ``DEVICE_TYPE_ALL = 0xFFFFFFFF``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L793>`__



.. code-block:: ocaml

  val cl_DEVICE_TYPE : int

Constant ``DEVICE_TYPE = 0x1000``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L795>`__



.. code-block:: ocaml

  val cl_DEVICE_VENDOR_ID : int

Constant ``DEVICE_VENDOR_ID = 0x1001``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L797>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_COMPUTE_UNITS : int

Constant ``DEVICE_MAX_COMPUTE_UNITS = 0x1002``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L799>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_WORK_ITEM_DIMENSIONS : int

Constant ``DEVICE_MAX_WORK_ITEM_DIMENSIONS = 0x1003``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L801>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_WORK_GROUP_SIZE : int

Constant ``DEVICE_MAX_WORK_GROUP_SIZE = 0x1004``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L803>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_WORK_ITEM_SIZES : int

Constant ``DEVICE_MAX_WORK_ITEM_SIZES = 0x1005``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L805>`__



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_CHAR = 0x1006``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L807>`__



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_SHORT = 0x1007``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L809>`__



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_INT : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_INT = 0x1008``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L811>`__



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_LONG : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_LONG = 0x1009``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L813>`__



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT = 0x100A``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L815>`__



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE = 0x100B``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L817>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_CLOCK_FREQUENCY : int

Constant ``DEVICE_MAX_CLOCK_FREQUENCY = 0x100C``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L819>`__



.. code-block:: ocaml

  val cl_DEVICE_ADDRESS_BITS : int

Constant ``DEVICE_ADDRESS_BITS = 0x100D``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L821>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_READ_IMAGE_ARGS : int

Constant ``DEVICE_MAX_READ_IMAGE_ARGS = 0x100E``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L823>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_WRITE_IMAGE_ARGS : int

Constant ``DEVICE_MAX_WRITE_IMAGE_ARGS = 0x100F``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L825>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_MEM_ALLOC_SIZE : int

Constant ``DEVICE_MAX_MEM_ALLOC_SIZE = 0x1010``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L827>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE2D_MAX_WIDTH : int

Constant ``DEVICE_IMAGE2D_MAX_WIDTH = 0x1011``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L829>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE2D_MAX_HEIGHT : int

Constant ``DEVICE_IMAGE2D_MAX_HEIGHT = 0x1012``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L831>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE3D_MAX_WIDTH : int

Constant ``DEVICE_IMAGE3D_MAX_WIDTH = 0x1013``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L833>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE3D_MAX_HEIGHT : int

Constant ``DEVICE_IMAGE3D_MAX_HEIGHT = 0x1014``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L835>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE3D_MAX_DEPTH : int

Constant ``DEVICE_IMAGE3D_MAX_DEPTH = 0x1015``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L837>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_SUPPORT : int

Constant ``DEVICE_IMAGE_SUPPORT = 0x1016``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L839>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_PARAMETER_SIZE : int

Constant ``DEVICE_MAX_PARAMETER_SIZE = 0x1017``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L841>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_SAMPLERS : int

Constant ``DEVICE_MAX_SAMPLERS = 0x1018``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L843>`__



.. code-block:: ocaml

  val cl_DEVICE_MEM_BASE_ADDR_ALIGN : int

Constant ``DEVICE_MEM_BASE_ADDR_ALIGN = 0x1019``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L845>`__



.. code-block:: ocaml

  val cl_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE : int

Constant ``DEVICE_MIN_DATA_TYPE_ALIGN_SIZE = 0x101A``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L847>`__



.. code-block:: ocaml

  val cl_DEVICE_SINGLE_FP_CONFIG : int

Constant ``DEVICE_SINGLE_FP_CONFIG = 0x101B``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L849>`__



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_CACHE_TYPE : int

Constant ``DEVICE_GLOBAL_MEM_CACHE_TYPE = 0x101C``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L851>`__



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_CACHELINE_SIZE : int

Constant ``DEVICE_GLOBAL_MEM_CACHELINE_SIZE = 0x101D``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L853>`__



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_CACHE_SIZE : int

Constant ``DEVICE_GLOBAL_MEM_CACHE_SIZE = 0x101E``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L855>`__



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_SIZE : int

Constant ``DEVICE_GLOBAL_MEM_SIZE = 0x101F``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L857>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_CONSTANT_BUFFER_SIZE : int

Constant ``DEVICE_MAX_CONSTANT_BUFFER_SIZE = 0x1020``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L859>`__



.. code-block:: ocaml

  val cl_DEVICE_MAX_CONSTANT_ARGS : int

Constant ``DEVICE_MAX_CONSTANT_ARGS = 0x1021``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L861>`__



.. code-block:: ocaml

  val cl_DEVICE_LOCAL_MEM_TYPE : int

Constant ``DEVICE_LOCAL_MEM_TYPE = 0x1022``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L863>`__



.. code-block:: ocaml

  val cl_DEVICE_LOCAL_MEM_SIZE : int

Constant ``DEVICE_LOCAL_MEM_SIZE = 0x1023``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L865>`__



.. code-block:: ocaml

  val cl_DEVICE_ERROR_CORRECTION_SUPPORT : int

Constant ``DEVICE_ERROR_CORRECTION_SUPPORT = 0x1024``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L867>`__



.. code-block:: ocaml

  val cl_DEVICE_PROFILING_TIMER_RESOLUTION : int

Constant ``DEVICE_PROFILING_TIMER_RESOLUTION = 0x1025``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L869>`__



.. code-block:: ocaml

  val cl_DEVICE_ENDIAN_LITTLE : int

Constant ``DEVICE_ENDIAN_LITTLE = 0x1026``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L871>`__



.. code-block:: ocaml

  val cl_DEVICE_AVAILABLE : int

Constant ``DEVICE_AVAILABLE = 0x1027``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L873>`__



.. code-block:: ocaml

  val cl_DEVICE_COMPILER_AVAILABLE : int

Constant ``DEVICE_COMPILER_AVAILABLE = 0x1028``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L875>`__



.. code-block:: ocaml

  val cl_DEVICE_EXECUTION_CAPABILITIES : int

Constant ``DEVICE_EXECUTION_CAPABILITIES = 0x1029``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L877>`__



.. code-block:: ocaml

  val cl_DEVICE_QUEUE_PROPERTIES : int

Constant ``DEVICE_QUEUE_PROPERTIES = 0x102A``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L879>`__



.. code-block:: ocaml

  val cl_DEVICE_NAME : int

Constant ``DEVICE_NAME = 0x102B``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L881>`__



.. code-block:: ocaml

  val cl_DEVICE_VENDOR : int

Constant ``DEVICE_VENDOR = 0x102C``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L883>`__



.. code-block:: ocaml

  val cl_DRIVER_VERSION : int

Constant ``DRIVER_VERSION = 0x102D``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L885>`__



.. code-block:: ocaml

  val cl_DEVICE_PROFILE : int

Constant ``DEVICE_PROFILE = 0x102E``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L887>`__



.. code-block:: ocaml

  val cl_DEVICE_VERSION : int

Constant ``DEVICE_VERSION = 0x102F``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L889>`__



.. code-block:: ocaml

  val cl_DEVICE_EXTENSIONS : int

Constant ``DEVICE_EXTENSIONS = 0x1030``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L891>`__



.. code-block:: ocaml

  val cl_DEVICE_PLATFORM : int

Constant ``DEVICE_PLATFORM = 0x1031``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L893>`__



.. code-block:: ocaml

  val cl_DEVICE_DOUBLE_FP_CONFIG : int

Constant ``DEVICE_DOUBLE_FP_CONFIG = 0x1032``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L895>`__



.. code-block:: ocaml

  val cl_DEVICE_HALF_FP_CONFIG : int

Constant ``DEVICE_HALF_FP_CONFIG = 0x1033``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L897>`__



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_HALF : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_HALF = 0x1034``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L899>`__



.. code-block:: ocaml

  val cl_DEVICE_HOST_UNIFIED_MEMORY : int

Constant ``DEVICE_HOST_UNIFIED_MEMORY = 0x1035``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L901>`__



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_CHAR : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_CHAR = 0x1036``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L903>`__



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_SHORT : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_SHORT = 0x1037``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L905>`__



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_INT : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_INT = 0x1038``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L907>`__



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_LONG : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_LONG = 0x1039``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L909>`__



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_FLOAT = 0x103A``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L911>`__



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE = 0x103B``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L913>`__



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_HALF : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_HALF = 0x103C``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L915>`__



.. code-block:: ocaml

  val cl_DEVICE_OPENCL_C_VERSION : int

Constant ``DEVICE_OPENCL_C_VERSION = 0x103D``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L917>`__



.. code-block:: ocaml

  val cl_DEVICE_LINKER_AVAILABLE : int

Constant ``DEVICE_LINKER_AVAILABLE = 0x103E``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L919>`__



.. code-block:: ocaml

  val cl_DEVICE_BUILT_IN_KERNELS : int

Constant ``DEVICE_BUILT_IN_KERNELS = 0x103F``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L921>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_MAX_BUFFER_SIZE : int

Constant ``DEVICE_IMAGE_MAX_BUFFER_SIZE = 0x1040``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L923>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_MAX_ARRAY_SIZE : int

Constant ``DEVICE_IMAGE_MAX_ARRAY_SIZE = 0x1041``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L925>`__



.. code-block:: ocaml

  val cl_DEVICE_PARENT_DEVICE : int

Constant ``DEVICE_PARENT_DEVICE = 0x1042``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L927>`__



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_MAX_SUB_DEVICES : int

Constant ``DEVICE_PARTITION_MAX_SUB_DEVICES = 0x1043``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L929>`__



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_PROPERTIES : int

Constant ``DEVICE_PARTITION_PROPERTIES = 0x1044``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L931>`__



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_AFFINITY_DOMAIN : int

Constant ``DEVICE_PARTITION_AFFINITY_DOMAIN = 0x1045``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L933>`__



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_TYPE : int

Constant ``DEVICE_PARTITION_TYPE = 0x1046``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L935>`__



.. code-block:: ocaml

  val cl_DEVICE_REFERENCE_COUNT : int

Constant ``DEVICE_REFERENCE_COUNT = 0x1047``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L937>`__



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_INTEROP_USER_SYNC : int

Constant ``DEVICE_PREFERRED_INTEROP_USER_SYNC = 0x1048``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L939>`__



.. code-block:: ocaml

  val cl_DEVICE_PRINTF_BUFFER_SIZE : int

Constant ``DEVICE_PRINTF_BUFFER_SIZE = 0x1049``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L941>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_PITCH_ALIGNMENT : int

Constant ``DEVICE_IMAGE_PITCH_ALIGNMENT = 0x104A``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L943>`__



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT : int

Constant ``DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT = 0x104B``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L945>`__



.. code-block:: ocaml

  val cl_FP_DENORM : int

Constant ``FP_DENORM = (1 lsl 0)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L947>`__



.. code-block:: ocaml

  val cl_FP_INF_NAN : int

Constant ``FP_INF_NAN = (1 lsl 1)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L949>`__



.. code-block:: ocaml

  val cl_FP_ROUND_TO_NEAREST : int

Constant ``FP_ROUND_TO_NEAREST = (1 lsl 2)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L951>`__



.. code-block:: ocaml

  val cl_FP_ROUND_TO_ZERO : int

Constant ``FP_ROUND_TO_ZERO = (1 lsl 3)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L953>`__



.. code-block:: ocaml

  val cl_FP_ROUND_TO_INF : int

Constant ``FP_ROUND_TO_INF = (1 lsl 4)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L955>`__



.. code-block:: ocaml

  val cl_FP_FMA : int

Constant ``FP_FMA = (1 lsl 5)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L957>`__



.. code-block:: ocaml

  val cl_FP_SOFT_FLOAT : int

Constant ``FP_SOFT_FLOAT = (1 lsl 6)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L959>`__



.. code-block:: ocaml

  val cl_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT : int

Constant ``FP_CORRECTLY_ROUNDED_DIVIDE_SQRT = (1 lsl 7)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L961>`__



.. code-block:: ocaml

  val cl_NONE : int

Constant ``NONE = 0x0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L963>`__



.. code-block:: ocaml

  val cl_READ_ONLY_CACHE : int

Constant ``READ_ONLY_CACHE = 0x1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L965>`__



.. code-block:: ocaml

  val cl_READ_WRITE_CACHE : int

Constant ``READ_WRITE_CACHE = 0x2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L967>`__



.. code-block:: ocaml

  val cl_LOCAL : int

Constant ``LOCAL = 0x1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L969>`__



.. code-block:: ocaml

  val cl_GLOBAL : int

Constant ``GLOBAL = 0x2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L971>`__



.. code-block:: ocaml

  val cl_EXEC_KERNEL : int

Constant ``EXEC_KERNEL = (1 lsl 0)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L973>`__



.. code-block:: ocaml

  val cl_EXEC_NATIVE_KERNEL : int

Constant ``EXEC_NATIVE_KERNEL = (1 lsl 1)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L975>`__



.. code-block:: ocaml

  val cl_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE : int

Constant ``QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE = (1 lsl 0)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L977>`__



.. code-block:: ocaml

  val cl_QUEUE_PROFILING_ENABLE : int

Constant ``QUEUE_PROFILING_ENABLE = (1 lsl 1)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L979>`__



.. code-block:: ocaml

  val cl_CONTEXT_REFERENCE_COUNT : int

Constant ``CONTEXT_REFERENCE_COUNT = 0x1080``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L981>`__



.. code-block:: ocaml

  val cl_CONTEXT_DEVICES : int

Constant ``CONTEXT_DEVICES = 0x1081``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L983>`__



.. code-block:: ocaml

  val cl_CONTEXT_PROPERTIES : int

Constant ``CONTEXT_PROPERTIES = 0x1082``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L985>`__



.. code-block:: ocaml

  val cl_CONTEXT_NUM_DEVICES : int

Constant ``CONTEXT_NUM_DEVICES = 0x1083``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L987>`__



.. code-block:: ocaml

  val cl_CONTEXT_PLATFORM : int

Constant ``CONTEXT_PLATFORM = 0x1084``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L989>`__



.. code-block:: ocaml

  val cl_CONTEXT_INTEROP_USER_SYNC : int

Constant ``CONTEXT_INTEROP_USER_SYNC = 0x1085``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L991>`__



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_EQUALLY : int

Constant ``DEVICE_PARTITION_EQUALLY = 0x1086``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L993>`__



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_BY_COUNTS : int

Constant ``DEVICE_PARTITION_BY_COUNTS = 0x1087``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L995>`__



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_BY_COUNTS_LIST_END : int

Constant ``DEVICE_PARTITION_BY_COUNTS_LIST_END = 0x0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L997>`__



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_BY_AFFINITY_DOMAIN : int

Constant ``DEVICE_PARTITION_BY_AFFINITY_DOMAIN = 0x1088``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L999>`__



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_NUMA : int

Constant ``DEVICE_AFFINITY_DOMAIN_NUMA = (1 lsl 0)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1001>`__



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L4_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L4_CACHE = (1 lsl 1)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1003>`__



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L3_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L3_CACHE = (1 lsl 2)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1005>`__



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L2_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L2_CACHE = (1 lsl 3)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1007>`__



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L1_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L1_CACHE = (1 lsl 4)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1009>`__



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE : int

Constant ``DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE = (1 lsl 5)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1011>`__



.. code-block:: ocaml

  val cl_QUEUE_CONTEXT : int

Constant ``QUEUE_CONTEXT = 0x1090``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1013>`__



.. code-block:: ocaml

  val cl_QUEUE_DEVICE : int

Constant ``QUEUE_DEVICE = 0x1091``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1015>`__



.. code-block:: ocaml

  val cl_QUEUE_REFERENCE_COUNT : int

Constant ``QUEUE_REFERENCE_COUNT = 0x1092``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1017>`__



.. code-block:: ocaml

  val cl_QUEUE_PROPERTIES : int

Constant ``QUEUE_PROPERTIES = 0x1093``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1019>`__



.. code-block:: ocaml

  val cl_MEM_READ_WRITE : int

Constant ``MEM_READ_WRITE = (1 lsl 0)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1021>`__



.. code-block:: ocaml

  val cl_MEM_WRITE_ONLY : int

Constant ``MEM_WRITE_ONLY = (1 lsl 1)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1023>`__



.. code-block:: ocaml

  val cl_MEM_READ_ONLY : int

Constant ``MEM_READ_ONLY = (1 lsl 2)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1025>`__



.. code-block:: ocaml

  val cl_MEM_USE_HOST_PTR : int

Constant ``MEM_USE_HOST_PTR = (1 lsl 3)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1027>`__



.. code-block:: ocaml

  val cl_MEM_ALLOC_HOST_PTR : int

Constant ``MEM_ALLOC_HOST_PTR = (1 lsl 4)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1029>`__



.. code-block:: ocaml

  val cl_MEM_COPY_HOST_PTR : int

Constant ``MEM_COPY_HOST_PTR = (1 lsl 5)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1031>`__



.. code-block:: ocaml

  val cl_MEM_HOST_WRITE_ONLY : int

Constant ``MEM_HOST_WRITE_ONLY = (1 lsl 7)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1033>`__



.. code-block:: ocaml

  val cl_MEM_HOST_READ_ONLY : int

Constant ``MEM_HOST_READ_ONLY = (1 lsl 8)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1035>`__



.. code-block:: ocaml

  val cl_MEM_HOST_NO_ACCESS : int

Constant ``MEM_HOST_NO_ACCESS = (1 lsl 9)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1037>`__



.. code-block:: ocaml

  val cl_MIGRATE_MEM_OBJECT_HOST : int

Constant ``MIGRATE_MEM_OBJECT_HOST = (1 lsl 0)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1039>`__



.. code-block:: ocaml

  val cl_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED : int

Constant ``MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED = (1 lsl 1)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1041>`__



.. code-block:: ocaml

  val cl_R : int

Constant ``R = 0x10B0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1043>`__



.. code-block:: ocaml

  val cl_A : int

Constant ``A = 0x10B1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1045>`__



.. code-block:: ocaml

  val cl_RG : int

Constant ``RG = 0x10B2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1047>`__



.. code-block:: ocaml

  val cl_RA : int

Constant ``RA = 0x10B3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1049>`__



.. code-block:: ocaml

  val cl_RGB : int

Constant ``RGB = 0x10B4``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1051>`__



.. code-block:: ocaml

  val cl_RGBA : int

Constant ``RGBA = 0x10B5``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1053>`__



.. code-block:: ocaml

  val cl_BGRA : int

Constant ``BGRA = 0x10B6``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1055>`__



.. code-block:: ocaml

  val cl_ARGB : int

Constant ``ARGB = 0x10B7``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1057>`__



.. code-block:: ocaml

  val cl_INTENSITY : int

Constant ``INTENSITY = 0x10B8``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1059>`__



.. code-block:: ocaml

  val cl_LUMINANCE : int

Constant ``LUMINANCE = 0x10B9``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1061>`__



.. code-block:: ocaml

  val cl_Rx : int

Constant ``Rx = 0x10BA``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1063>`__



.. code-block:: ocaml

  val cl_RGx : int

Constant ``RGx = 0x10BB``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1065>`__



.. code-block:: ocaml

  val cl_RGBx : int

Constant ``RGBx = 0x10BC``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1067>`__



.. code-block:: ocaml

  val cl_DEPTH : int

Constant ``DEPTH = 0x10BD``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1069>`__



.. code-block:: ocaml

  val cl_DEPTH_STENCIL : int

Constant ``DEPTH_STENCIL = 0x10BE``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1071>`__



.. code-block:: ocaml

  val cl_SNORM_INT8 : int

Constant ``SNORM_INT8 = 0x10D0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1073>`__



.. code-block:: ocaml

  val cl_SNORM_INT16 : int

Constant ``SNORM_INT16 = 0x10D1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1075>`__



.. code-block:: ocaml

  val cl_UNORM_INT8 : int

Constant ``UNORM_INT8 = 0x10D2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1077>`__



.. code-block:: ocaml

  val cl_UNORM_INT16 : int

Constant ``UNORM_INT16 = 0x10D3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1079>`__



.. code-block:: ocaml

  val cl_UNORM_SHORT_565 : int

Constant ``UNORM_SHORT_565 = 0x10D4``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1081>`__



.. code-block:: ocaml

  val cl_UNORM_SHORT_555 : int

Constant ``UNORM_SHORT_555 = 0x10D5``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1083>`__



.. code-block:: ocaml

  val cl_UNORM_INT_101010 : int

Constant ``UNORM_INT_101010 = 0x10D6``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1085>`__



.. code-block:: ocaml

  val cl_SIGNED_INT8 : int

Constant ``SIGNED_INT8 = 0x10D7``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1087>`__



.. code-block:: ocaml

  val cl_SIGNED_INT16 : int

Constant ``SIGNED_INT16 = 0x10D8``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1089>`__



.. code-block:: ocaml

  val cl_SIGNED_INT32 : int

Constant ``SIGNED_INT32 = 0x10D9``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1091>`__



.. code-block:: ocaml

  val cl_UNSIGNED_INT8 : int

Constant ``UNSIGNED_INT8 = 0x10DA``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1093>`__



.. code-block:: ocaml

  val cl_UNSIGNED_INT16 : int

Constant ``UNSIGNED_INT16 = 0x10DB``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1095>`__



.. code-block:: ocaml

  val cl_UNSIGNED_INT32 : int

Constant ``UNSIGNED_INT32 = 0x10DC``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1097>`__



.. code-block:: ocaml

  val cl_HALF_FLOAT : int

Constant ``HALF_FLOAT = 0x10DD``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1099>`__



.. code-block:: ocaml

  val cl_FLOAT : int

Constant ``FLOAT = 0x10DE``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1101>`__



.. code-block:: ocaml

  val cl_UNORM_INT24 : int

Constant ``UNORM_INT24 = 0x10DF``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1103>`__



.. code-block:: ocaml

  val cl_MEM_OBJECT_BUFFER : int

Constant ``MEM_OBJECT_BUFFER = 0x10F0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1105>`__



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE2D : int

Constant ``MEM_OBJECT_IMAGE2D = 0x10F1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1107>`__



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE3D : int

Constant ``MEM_OBJECT_IMAGE3D = 0x10F2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1109>`__



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE2D_ARRAY : int

Constant ``MEM_OBJECT_IMAGE2D_ARRAY = 0x10F3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1111>`__



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE1D : int

Constant ``MEM_OBJECT_IMAGE1D = 0x10F4``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1113>`__



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE1D_ARRAY : int

Constant ``MEM_OBJECT_IMAGE1D_ARRAY = 0x10F5``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1115>`__



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE1D_BUFFER : int

Constant ``MEM_OBJECT_IMAGE1D_BUFFER = 0x10F6``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1117>`__



.. code-block:: ocaml

  val cl_MEM_TYPE : int

Constant ``MEM_TYPE = 0x1100``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1119>`__



.. code-block:: ocaml

  val cl_MEM_FLAGS : int

Constant ``MEM_FLAGS = 0x1101``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1121>`__



.. code-block:: ocaml

  val cl_MEM_SIZE : int

Constant ``MEM_SIZE = 0x1102``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1123>`__



.. code-block:: ocaml

  val cl_MEM_HOST_PTR : int

Constant ``MEM_HOST_PTR = 0x1103``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1125>`__



.. code-block:: ocaml

  val cl_MEM_MAP_COUNT : int

Constant ``MEM_MAP_COUNT = 0x1104``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1127>`__



.. code-block:: ocaml

  val cl_MEM_REFERENCE_COUNT : int

Constant ``MEM_REFERENCE_COUNT = 0x1105``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1129>`__



.. code-block:: ocaml

  val cl_MEM_CONTEXT : int

Constant ``MEM_CONTEXT = 0x1106``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1131>`__



.. code-block:: ocaml

  val cl_MEM_ASSOCIATED_MEMOBJECT : int

Constant ``MEM_ASSOCIATED_MEMOBJECT = 0x1107``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1133>`__



.. code-block:: ocaml

  val cl_MEM_OFFSET : int

Constant ``MEM_OFFSET = 0x1108``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1135>`__



.. code-block:: ocaml

  val cl_IMAGE_FORMAT : int

Constant ``IMAGE_FORMAT = 0x1110``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1137>`__



.. code-block:: ocaml

  val cl_IMAGE_ELEMENT_SIZE : int

Constant ``IMAGE_ELEMENT_SIZE = 0x1111``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1139>`__



.. code-block:: ocaml

  val cl_IMAGE_ROW_PITCH : int

Constant ``IMAGE_ROW_PITCH = 0x1112``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1141>`__



.. code-block:: ocaml

  val cl_IMAGE_SLICE_PITCH : int

Constant ``IMAGE_SLICE_PITCH = 0x1113``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1143>`__



.. code-block:: ocaml

  val cl_IMAGE_WIDTH : int

Constant ``IMAGE_WIDTH = 0x1114``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1145>`__



.. code-block:: ocaml

  val cl_IMAGE_HEIGHT : int

Constant ``IMAGE_HEIGHT = 0x1115``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1147>`__



.. code-block:: ocaml

  val cl_IMAGE_DEPTH : int

Constant ``IMAGE_DEPTH = 0x1116``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1149>`__



.. code-block:: ocaml

  val cl_IMAGE_ARRAY_SIZE : int

Constant ``IMAGE_ARRAY_SIZE = 0x1117``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1151>`__



.. code-block:: ocaml

  val cl_IMAGE_BUFFER : int

Constant ``IMAGE_BUFFER = 0x1118``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1153>`__



.. code-block:: ocaml

  val cl_IMAGE_NUM_MIP_LEVELS : int

Constant ``IMAGE_NUM_MIP_LEVELS = 0x1119``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1155>`__



.. code-block:: ocaml

  val cl_IMAGE_NUM_SAMPLES : int

Constant ``IMAGE_NUM_SAMPLES = 0x111A``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1157>`__



.. code-block:: ocaml

  val cl_ADDRESS_NONE : int

Constant ``ADDRESS_NONE = 0x1130``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1159>`__



.. code-block:: ocaml

  val cl_ADDRESS_CLAMP_TO_EDGE : int

Constant ``ADDRESS_CLAMP_TO_EDGE = 0x1131``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1161>`__



.. code-block:: ocaml

  val cl_ADDRESS_CLAMP : int

Constant ``ADDRESS_CLAMP = 0x1132``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1163>`__



.. code-block:: ocaml

  val cl_ADDRESS_REPEAT : int

Constant ``ADDRESS_REPEAT = 0x1133``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1165>`__



.. code-block:: ocaml

  val cl_ADDRESS_MIRRORED_REPEAT : int

Constant ``ADDRESS_MIRRORED_REPEAT = 0x1134``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1167>`__



.. code-block:: ocaml

  val cl_FILTER_NEAREST : int

Constant ``FILTER_NEAREST = 0x1140``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1169>`__



.. code-block:: ocaml

  val cl_FILTER_LINEAR : int

Constant ``FILTER_LINEAR = 0x1141``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1171>`__



.. code-block:: ocaml

  val cl_SAMPLER_REFERENCE_COUNT : int

Constant ``SAMPLER_REFERENCE_COUNT = 0x1150``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1173>`__



.. code-block:: ocaml

  val cl_SAMPLER_CONTEXT : int

Constant ``SAMPLER_CONTEXT = 0x1151``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1175>`__



.. code-block:: ocaml

  val cl_SAMPLER_NORMALIZED_COORDS : int

Constant ``SAMPLER_NORMALIZED_COORDS = 0x1152``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1177>`__



.. code-block:: ocaml

  val cl_SAMPLER_ADDRESSING_MODE : int

Constant ``SAMPLER_ADDRESSING_MODE = 0x1153``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1179>`__



.. code-block:: ocaml

  val cl_SAMPLER_FILTER_MODE : int

Constant ``SAMPLER_FILTER_MODE = 0x1154``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1181>`__



.. code-block:: ocaml

  val cl_MAP_READ : int

Constant ``MAP_READ = (1 lsl 0)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1183>`__



.. code-block:: ocaml

  val cl_MAP_WRITE : int

Constant ``MAP_WRITE = (1 lsl 1)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1185>`__



.. code-block:: ocaml

  val cl_MAP_WRITE_INVALIDATE_REGION : int

Constant ``MAP_WRITE_INVALIDATE_REGION = (1 lsl 2)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1187>`__



.. code-block:: ocaml

  val cl_PROGRAM_REFERENCE_COUNT : int

Constant ``PROGRAM_REFERENCE_COUNT = 0x1160``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1189>`__



.. code-block:: ocaml

  val cl_PROGRAM_CONTEXT : int

Constant ``PROGRAM_CONTEXT = 0x1161``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1191>`__



.. code-block:: ocaml

  val cl_PROGRAM_NUM_DEVICES : int

Constant ``PROGRAM_NUM_DEVICES = 0x1162``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1193>`__



.. code-block:: ocaml

  val cl_PROGRAM_DEVICES : int

Constant ``PROGRAM_DEVICES = 0x1163``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1195>`__



.. code-block:: ocaml

  val cl_PROGRAM_SOURCE : int

Constant ``PROGRAM_SOURCE = 0x1164``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1197>`__



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_SIZES : int

Constant ``PROGRAM_BINARY_SIZES = 0x1165``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1199>`__



.. code-block:: ocaml

  val cl_PROGRAM_BINARIES : int

Constant ``PROGRAM_BINARIES = 0x1166``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1201>`__



.. code-block:: ocaml

  val cl_PROGRAM_NUM_KERNELS : int

Constant ``PROGRAM_NUM_KERNELS = 0x1167``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1203>`__



.. code-block:: ocaml

  val cl_PROGRAM_KERNEL_NAMES : int

Constant ``PROGRAM_KERNEL_NAMES = 0x1168``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1205>`__



.. code-block:: ocaml

  val cl_PROGRAM_BUILD_STATUS : int

Constant ``PROGRAM_BUILD_STATUS = 0x1181``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1207>`__



.. code-block:: ocaml

  val cl_PROGRAM_BUILD_OPTIONS : int

Constant ``PROGRAM_BUILD_OPTIONS = 0x1182``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1209>`__



.. code-block:: ocaml

  val cl_PROGRAM_BUILD_LOG : int

Constant ``PROGRAM_BUILD_LOG = 0x1183``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1211>`__



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE : int

Constant ``PROGRAM_BINARY_TYPE = 0x1184``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1213>`__



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_NONE : int

Constant ``PROGRAM_BINARY_TYPE_NONE = 0x0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1215>`__



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_COMPILED_OBJECT : int

Constant ``PROGRAM_BINARY_TYPE_COMPILED_OBJECT = 0x1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1217>`__



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_LIBRARY : int

Constant ``PROGRAM_BINARY_TYPE_LIBRARY = 0x2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1219>`__



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_EXECUTABLE : int

Constant ``PROGRAM_BINARY_TYPE_EXECUTABLE = 0x4``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1221>`__



.. code-block:: ocaml

  val cl_BUILD_SUCCESS : int

Constant ``BUILD_SUCCESS = 0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1223>`__



.. code-block:: ocaml

  val cl_BUILD_NONE : int

Constant ``BUILD_NONE = -1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1225>`__



.. code-block:: ocaml

  val cl_BUILD_ERROR : int

Constant ``BUILD_ERROR = -2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1227>`__



.. code-block:: ocaml

  val cl_BUILD_IN_PROGRESS : int

Constant ``BUILD_IN_PROGRESS = -3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1229>`__



.. code-block:: ocaml

  val cl_KERNEL_FUNCTION_NAME : int

Constant ``KERNEL_FUNCTION_NAME = 0x1190``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1231>`__



.. code-block:: ocaml

  val cl_KERNEL_NUM_ARGS : int

Constant ``KERNEL_NUM_ARGS = 0x1191``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1233>`__



.. code-block:: ocaml

  val cl_KERNEL_REFERENCE_COUNT : int

Constant ``KERNEL_REFERENCE_COUNT = 0x1192``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1235>`__



.. code-block:: ocaml

  val cl_KERNEL_CONTEXT : int

Constant ``KERNEL_CONTEXT = 0x1193``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1237>`__



.. code-block:: ocaml

  val cl_KERNEL_PROGRAM : int

Constant ``KERNEL_PROGRAM = 0x1194``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1239>`__



.. code-block:: ocaml

  val cl_KERNEL_ATTRIBUTES : int

Constant ``KERNEL_ATTRIBUTES = 0x1195``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1241>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_QUALIFIER : int

Constant ``KERNEL_ARG_ADDRESS_QUALIFIER = 0x1196``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1243>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_QUALIFIER : int

Constant ``KERNEL_ARG_ACCESS_QUALIFIER = 0x1197``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1245>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_NAME : int

Constant ``KERNEL_ARG_TYPE_NAME = 0x1198``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1247>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_QUALIFIER : int

Constant ``KERNEL_ARG_TYPE_QUALIFIER = 0x1199``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1249>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_NAME : int

Constant ``KERNEL_ARG_NAME = 0x119A``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1251>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_GLOBAL : int

Constant ``KERNEL_ARG_ADDRESS_GLOBAL = 0x119B``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1253>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_LOCAL : int

Constant ``KERNEL_ARG_ADDRESS_LOCAL = 0x119C``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1255>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_CONSTANT : int

Constant ``KERNEL_ARG_ADDRESS_CONSTANT = 0x119D``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1257>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_PRIVATE : int

Constant ``KERNEL_ARG_ADDRESS_PRIVATE = 0x119E``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1259>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_READ_ONLY : int

Constant ``KERNEL_ARG_ACCESS_READ_ONLY = 0x11A0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1261>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_WRITE_ONLY : int

Constant ``KERNEL_ARG_ACCESS_WRITE_ONLY = 0x11A1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1263>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_READ_WRITE : int

Constant ``KERNEL_ARG_ACCESS_READ_WRITE = 0x11A2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1265>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_NONE : int

Constant ``KERNEL_ARG_ACCESS_NONE = 0x11A3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1267>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_NONE : int

Constant ``KERNEL_ARG_TYPE_NONE = 0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1269>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_CONST : int

Constant ``KERNEL_ARG_TYPE_CONST = (1 lsl 0)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1271>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_RESTRICT : int

Constant ``KERNEL_ARG_TYPE_RESTRICT = (1 lsl 1)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1273>`__



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_VOLATILE : int

Constant ``KERNEL_ARG_TYPE_VOLATILE = (1 lsl 2)``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1275>`__



.. code-block:: ocaml

  val cl_KERNEL_WORK_GROUP_SIZE : int

Constant ``KERNEL_WORK_GROUP_SIZE = 0x11B0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1277>`__



.. code-block:: ocaml

  val cl_KERNEL_COMPILE_WORK_GROUP_SIZE : int

Constant ``KERNEL_COMPILE_WORK_GROUP_SIZE = 0x11B1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1279>`__



.. code-block:: ocaml

  val cl_KERNEL_LOCAL_MEM_SIZE : int

Constant ``KERNEL_LOCAL_MEM_SIZE = 0x11B2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1281>`__



.. code-block:: ocaml

  val cl_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE : int

Constant ``KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE = 0x11B3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1283>`__



.. code-block:: ocaml

  val cl_KERNEL_PRIVATE_MEM_SIZE : int

Constant ``KERNEL_PRIVATE_MEM_SIZE = 0x11B4``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1285>`__



.. code-block:: ocaml

  val cl_KERNEL_GLOBAL_WORK_SIZE : int

Constant ``KERNEL_GLOBAL_WORK_SIZE = 0x11B5``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1287>`__



.. code-block:: ocaml

  val cl_EVENT_COMMAND_QUEUE : int

Constant ``EVENT_COMMAND_QUEUE = 0x11D0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1289>`__



.. code-block:: ocaml

  val cl_EVENT_COMMAND_TYPE : int

Constant ``EVENT_COMMAND_TYPE = 0x11D1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1291>`__



.. code-block:: ocaml

  val cl_EVENT_REFERENCE_COUNT : int

Constant ``EVENT_REFERENCE_COUNT = 0x11D2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1293>`__



.. code-block:: ocaml

  val cl_EVENT_COMMAND_EXECUTION_STATUS : int

Constant ``EVENT_COMMAND_EXECUTION_STATUS = 0x11D3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1295>`__



.. code-block:: ocaml

  val cl_EVENT_CONTEXT : int

Constant ``EVENT_CONTEXT = 0x11D4``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1297>`__



.. code-block:: ocaml

  val cl_COMMAND_NDRANGE_KERNEL : int

Constant ``COMMAND_NDRANGE_KERNEL = 0x11F0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1299>`__



.. code-block:: ocaml

  val cl_COMMAND_TASK : int

Constant ``COMMAND_TASK = 0x11F1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1301>`__



.. code-block:: ocaml

  val cl_COMMAND_NATIVE_KERNEL : int

Constant ``COMMAND_NATIVE_KERNEL = 0x11F2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1303>`__



.. code-block:: ocaml

  val cl_COMMAND_READ_BUFFER : int

Constant ``COMMAND_READ_BUFFER = 0x11F3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1305>`__



.. code-block:: ocaml

  val cl_COMMAND_WRITE_BUFFER : int

Constant ``COMMAND_WRITE_BUFFER = 0x11F4``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1307>`__



.. code-block:: ocaml

  val cl_COMMAND_COPY_BUFFER : int

Constant ``COMMAND_COPY_BUFFER = 0x11F5``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1309>`__



.. code-block:: ocaml

  val cl_COMMAND_READ_IMAGE : int

Constant ``COMMAND_READ_IMAGE = 0x11F6``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1311>`__



.. code-block:: ocaml

  val cl_COMMAND_WRITE_IMAGE : int

Constant ``COMMAND_WRITE_IMAGE = 0x11F7``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1313>`__



.. code-block:: ocaml

  val cl_COMMAND_COPY_IMAGE : int

Constant ``COMMAND_COPY_IMAGE = 0x11F8``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1315>`__



.. code-block:: ocaml

  val cl_COMMAND_COPY_IMAGE_TO_BUFFER : int

Constant ``COMMAND_COPY_IMAGE_TO_BUFFER = 0x11F9``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1317>`__



.. code-block:: ocaml

  val cl_COMMAND_COPY_BUFFER_TO_IMAGE : int

Constant ``COMMAND_COPY_BUFFER_TO_IMAGE = 0x11FA``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1319>`__



.. code-block:: ocaml

  val cl_COMMAND_MAP_BUFFER : int

Constant ``COMMAND_MAP_BUFFER = 0x11FB``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1321>`__



.. code-block:: ocaml

  val cl_COMMAND_MAP_IMAGE : int

Constant ``COMMAND_MAP_IMAGE = 0x11FC``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1323>`__



.. code-block:: ocaml

  val cl_COMMAND_UNMAP_MEM_OBJECT : int

Constant ``COMMAND_UNMAP_MEM_OBJECT = 0x11FD``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1325>`__



.. code-block:: ocaml

  val cl_COMMAND_MARKER : int

Constant ``COMMAND_MARKER = 0x11FE``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1327>`__



.. code-block:: ocaml

  val cl_COMMAND_ACQUIRE_GL_OBJECTS : int

Constant ``COMMAND_ACQUIRE_GL_OBJECTS = 0x11FF``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1329>`__



.. code-block:: ocaml

  val cl_COMMAND_RELEASE_GL_OBJECTS : int

Constant ``COMMAND_RELEASE_GL_OBJECTS = 0x1200``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1331>`__



.. code-block:: ocaml

  val cl_COMMAND_READ_BUFFER_RECT : int

Constant ``COMMAND_READ_BUFFER_RECT = 0x1201``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1333>`__



.. code-block:: ocaml

  val cl_COMMAND_WRITE_BUFFER_RECT : int

Constant ``COMMAND_WRITE_BUFFER_RECT = 0x1202``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1335>`__



.. code-block:: ocaml

  val cl_COMMAND_COPY_BUFFER_RECT : int

Constant ``COMMAND_COPY_BUFFER_RECT = 0x1203``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1337>`__



.. code-block:: ocaml

  val cl_COMMAND_USER : int

Constant ``COMMAND_USER = 0x1204``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1339>`__



.. code-block:: ocaml

  val cl_COMMAND_BARRIER : int

Constant ``COMMAND_BARRIER = 0x1205``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1341>`__



.. code-block:: ocaml

  val cl_COMMAND_MIGRATE_MEM_OBJECTS : int

Constant ``COMMAND_MIGRATE_MEM_OBJECTS = 0x1206``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1343>`__



.. code-block:: ocaml

  val cl_COMMAND_FILL_BUFFER : int

Constant ``COMMAND_FILL_BUFFER = 0x1207``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1345>`__



.. code-block:: ocaml

  val cl_COMMAND_FILL_IMAGE : int

Constant ``COMMAND_FILL_IMAGE = 0x1208``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1347>`__



.. code-block:: ocaml

  val cl_COMPLETE : int

Constant ``COMPLETE = 0x0``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1349>`__



.. code-block:: ocaml

  val cl_RUNNING : int

Constant ``RUNNING = 0x1``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1351>`__



.. code-block:: ocaml

  val cl_SUBMITTED : int

Constant ``SUBMITTED = 0x2``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1353>`__



.. code-block:: ocaml

  val cl_QUEUED : int

Constant ``QUEUED = 0x3``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1355>`__



.. code-block:: ocaml

  val cl_BUFFER_CREATE_TYPE_REGION : int

Constant ``BUFFER_CREATE_TYPE_REGION = 0x1220``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1357>`__



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_QUEUED : int

Constant ``PROFILING_COMMAND_QUEUED = 0x1280``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1359>`__



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_SUBMIT : int

Constant ``PROFILING_COMMAND_SUBMIT = 0x1281``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1361>`__



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_START : int

Constant ``PROFILING_COMMAND_START = 0x1282``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1363>`__



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_END : int

Constant ``PROFILING_COMMAND_END = 0x1283``.

`[ source code ] <https://github.com/ryanrhymes/owl/blob/master/src/opencl/owl_opencl_generated.ml#L1365>`__



Exception definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  exception EXN_SUCCESS
    

Exception ``EXN_SUCCESS``.

.. code-block:: ocaml

  exception EXN_DEVICE_NOT_FOUND
    

Exception ``EXN_DEVICE_NOT_FOUND``.

.. code-block:: ocaml

  exception EXN_DEVICE_NOT_AVAILABLE
    

Exception ``EXN_DEVICE_NOT_AVAILABLE``.

.. code-block:: ocaml

  exception EXN_COMPILER_NOT_AVAILABLE
    

Exception ``EXN_COMPILER_NOT_AVAILABLE``.

.. code-block:: ocaml

  exception EXN_MEM_OBJECT_ALLOCATION_FAILURE
    

Exception ``EXN_MEM_OBJECT_ALLOCATION_FAILURE``.

.. code-block:: ocaml

  exception EXN_OUT_OF_RESOURCES
    

Exception ``EXN_OUT_OF_RESOURCES``.

.. code-block:: ocaml

  exception EXN_OUT_OF_HOST_MEMORY
    

Exception ``EXN_OUT_OF_HOST_MEMORY``.

.. code-block:: ocaml

  exception EXN_PROFILING_INFO_NOT_AVAILABLE
    

Exception ``EXN_PROFILING_INFO_NOT_AVAILABLE``.

.. code-block:: ocaml

  exception EXN_MEM_COPY_OVERLAP
    

Exception ``EXN_MEM_COPY_OVERLAP``.

.. code-block:: ocaml

  exception EXN_IMAGE_FORMAT_MISMATCH
    

Exception ``EXN_IMAGE_FORMAT_MISMATCH``.

.. code-block:: ocaml

  exception EXN_IMAGE_FORMAT_NOT_SUPPORTED
    

Exception ``EXN_IMAGE_FORMAT_NOT_SUPPORTED``.

.. code-block:: ocaml

  exception EXN_BUILD_PROGRAM_FAILURE
    

Exception ``EXN_BUILD_PROGRAM_FAILURE``.

.. code-block:: ocaml

  exception EXN_MAP_FAILURE
    

Exception ``EXN_MAP_FAILURE``.

.. code-block:: ocaml

  exception EXN_MISALIGNED_SUB_BUFFER_OFFSET
    

Exception ``EXN_MISALIGNED_SUB_BUFFER_OFFSET``.

.. code-block:: ocaml

  exception EXN_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST
    

Exception ``EXN_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST``.

.. code-block:: ocaml

  exception EXN_COMPILE_PROGRAM_FAILURE
    

Exception ``EXN_COMPILE_PROGRAM_FAILURE``.

.. code-block:: ocaml

  exception EXN_LINKER_NOT_AVAILABLE
    

Exception ``EXN_LINKER_NOT_AVAILABLE``.

.. code-block:: ocaml

  exception EXN_LINK_PROGRAM_FAILURE
    

Exception ``EXN_LINK_PROGRAM_FAILURE``.

.. code-block:: ocaml

  exception EXN_DEVICE_PARTITION_FAILED
    

Exception ``EXN_DEVICE_PARTITION_FAILED``.

.. code-block:: ocaml

  exception EXN_KERNEL_ARG_INFO_NOT_AVAILABLE
    

Exception ``EXN_KERNEL_ARG_INFO_NOT_AVAILABLE``.

.. code-block:: ocaml

  exception EXN_INVALID_VALUE
    

Exception ``EXN_INVALID_VALUE``.

.. code-block:: ocaml

  exception EXN_INVALID_DEVICE_TYPE
    

Exception ``EXN_INVALID_DEVICE_TYPE``.

.. code-block:: ocaml

  exception EXN_INVALID_PLATFORM
    

Exception ``EXN_INVALID_PLATFORM``.

.. code-block:: ocaml

  exception EXN_INVALID_DEVICE
    

Exception ``EXN_INVALID_DEVICE``.

.. code-block:: ocaml

  exception EXN_INVALID_CONTEXT
    

Exception ``EXN_INVALID_CONTEXT``.

.. code-block:: ocaml

  exception EXN_INVALID_QUEUE_PROPERTIES
    

Exception ``EXN_INVALID_QUEUE_PROPERTIES``.

.. code-block:: ocaml

  exception EXN_INVALID_COMMAND_QUEUE
    

Exception ``EXN_INVALID_COMMAND_QUEUE``.

.. code-block:: ocaml

  exception EXN_INVALID_HOST_PTR
    

Exception ``EXN_INVALID_HOST_PTR``.

.. code-block:: ocaml

  exception EXN_INVALID_MEM_OBJECT
    

Exception ``EXN_INVALID_MEM_OBJECT``.

.. code-block:: ocaml

  exception EXN_INVALID_IMAGE_FORMAT_DESCRIPTOR
    

Exception ``EXN_INVALID_IMAGE_FORMAT_DESCRIPTOR``.

.. code-block:: ocaml

  exception EXN_INVALID_IMAGE_SIZE
    

Exception ``EXN_INVALID_IMAGE_SIZE``.

.. code-block:: ocaml

  exception EXN_INVALID_SAMPLER
    

Exception ``EXN_INVALID_SAMPLER``.

.. code-block:: ocaml

  exception EXN_INVALID_BINARY
    

Exception ``EXN_INVALID_BINARY``.

.. code-block:: ocaml

  exception EXN_INVALID_BUILD_OPTIONS
    

Exception ``EXN_INVALID_BUILD_OPTIONS``.

.. code-block:: ocaml

  exception EXN_INVALID_PROGRAM
    

Exception ``EXN_INVALID_PROGRAM``.

.. code-block:: ocaml

  exception EXN_INVALID_PROGRAM_EXECUTABLE
    

Exception ``EXN_INVALID_PROGRAM_EXECUTABLE``.

.. code-block:: ocaml

  exception EXN_INVALID_KERNEL_NAME
    

Exception ``EXN_INVALID_KERNEL_NAME``.

.. code-block:: ocaml

  exception EXN_INVALID_KERNEL_DEFINITION
    

Exception ``EXN_INVALID_KERNEL_DEFINITION``.

.. code-block:: ocaml

  exception EXN_INVALID_KERNEL
    

Exception ``EXN_INVALID_KERNEL``.

.. code-block:: ocaml

  exception EXN_INVALID_ARG_INDEX
    

Exception ``EXN_INVALID_ARG_INDEX``.

.. code-block:: ocaml

  exception EXN_INVALID_ARG_VALUE
    

Exception ``EXN_INVALID_ARG_VALUE``.

.. code-block:: ocaml

  exception EXN_INVALID_ARG_SIZE
    

Exception ``EXN_INVALID_ARG_SIZE``.

.. code-block:: ocaml

  exception EXN_INVALID_KERNEL_ARGS
    

Exception ``EXN_INVALID_KERNEL_ARGS``.

.. code-block:: ocaml

  exception EXN_INVALID_WORK_DIMENSION
    

Exception ``EXN_INVALID_WORK_DIMENSION``.

.. code-block:: ocaml

  exception EXN_INVALID_WORK_GROUP_SIZE
    

Exception ``EXN_INVALID_WORK_GROUP_SIZE``.

.. code-block:: ocaml

  exception EXN_INVALID_WORK_ITEM_SIZE
    

Exception ``EXN_INVALID_WORK_ITEM_SIZE``.

.. code-block:: ocaml

  exception EXN_INVALID_GLOBAL_OFFSET
    

Exception ``EXN_INVALID_GLOBAL_OFFSET``.

.. code-block:: ocaml

  exception EXN_INVALID_EVENT_WAIT_LIST
    

Exception ``EXN_INVALID_EVENT_WAIT_LIST``.

.. code-block:: ocaml

  exception EXN_INVALID_EVENT
    

Exception ``EXN_INVALID_EVENT``.

.. code-block:: ocaml

  exception EXN_INVALID_OPERATION
    

Exception ``EXN_INVALID_OPERATION``.

.. code-block:: ocaml

  exception EXN_INVALID_GL_OBJECT
    

Exception ``EXN_INVALID_GL_OBJECT``.

.. code-block:: ocaml

  exception EXN_INVALID_BUFFER_SIZE
    

Exception ``EXN_INVALID_BUFFER_SIZE``.

.. code-block:: ocaml

  exception EXN_INVALID_MIP_LEVEL
    

Exception ``EXN_INVALID_MIP_LEVEL``.

.. code-block:: ocaml

  exception EXN_INVALID_GLOBAL_WORK_SIZE
    

Exception ``EXN_INVALID_GLOBAL_WORK_SIZE``.

.. code-block:: ocaml

  exception EXN_INVALID_PROPERTY
    

Exception ``EXN_INVALID_PROPERTY``.

.. code-block:: ocaml

  exception EXN_INVALID_IMAGE_DESCRIPTOR
    

Exception ``EXN_INVALID_IMAGE_DESCRIPTOR``.

.. code-block:: ocaml

  exception EXN_INVALID_COMPILER_OPTIONS
    

Exception ``EXN_INVALID_COMPILER_OPTIONS``.

.. code-block:: ocaml

  exception EXN_INVALID_LINKER_OPTIONS
    

Exception ``EXN_INVALID_LINKER_OPTIONS``.

.. code-block:: ocaml

  exception EXN_INVALID_DEVICE_PARTITION_COUNT
    

Exception ``EXN_INVALID_DEVICE_PARTITION_COUNT``.

