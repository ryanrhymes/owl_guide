Low-level OpenCL API
===============================================================================

This document is auto-generated for Owl's APIs.
#542 entries have been extracted.
timestamp:1517969972

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



.. code-block:: ocaml

  val cl_platform_id_null : cl_platform_id

Null value of cl_platform_id



.. code-block:: ocaml

  val cl_platform_id_ptr_null : cl_platform_id Ctypes.ptr

Null pointer of cl_platform_id



.. code-block:: ocaml

  val cl_device_id : cl_device_id Ctypes.typ

Value of cl_device_id



.. code-block:: ocaml

  val cl_device_id_null : cl_device_id

Null value of cl_device_id



.. code-block:: ocaml

  val cl_device_id_ptr_null : cl_device_id Ctypes.ptr

Null pointer of cl_device_id



.. code-block:: ocaml

  val cl_context : cl_context Ctypes.typ

Value of cl_context



.. code-block:: ocaml

  val cl_context_null : cl_context

Null value of cl_context



.. code-block:: ocaml

  val cl_context_ptr_null : cl_context Ctypes.ptr

Null pointer of cl_context



.. code-block:: ocaml

  val cl_command_queue : cl_command_queue Ctypes.typ

Value of cl_command_queue



.. code-block:: ocaml

  val cl_command_queue_null : cl_command_queue

Null value of cl_command_queue



.. code-block:: ocaml

  val cl_command_queue_ptr_null : cl_command_queue Ctypes.ptr

Null pointer of cl_command_queue



.. code-block:: ocaml

  val cl_mem : cl_mem Ctypes.typ

Value of cl_mem



.. code-block:: ocaml

  val cl_mem_null : cl_mem

Null value of cl_mem



.. code-block:: ocaml

  val cl_mem_ptr_null : cl_mem Ctypes.ptr

Null pointer of cl_mem



.. code-block:: ocaml

  val cl_program : cl_program Ctypes.typ

Value of cl_program



.. code-block:: ocaml

  val cl_program_null : cl_program

Null value of cl_program



.. code-block:: ocaml

  val cl_program_ptr_null : cl_program Ctypes.ptr

Null pointer of cl_program



.. code-block:: ocaml

  val cl_kernel : cl_kernel Ctypes.typ

Value of cl_kernel



.. code-block:: ocaml

  val cl_kernel_null : cl_kernel

Null value of cl_kernel



.. code-block:: ocaml

  val cl_kernel_ptr_null : cl_kernel Ctypes.ptr

Null pointer of cl_kernel



.. code-block:: ocaml

  val cl_event : cl_event Ctypes.typ

Value of cl_event



.. code-block:: ocaml

  val cl_event_null : cl_event

Null value of cl_event



.. code-block:: ocaml

  val cl_event_ptr_null : cl_event Ctypes.ptr

Null pointer of cl_event



.. code-block:: ocaml

  val cl_sampler : cl_sampler Ctypes.typ

Value of cl_sampler



.. code-block:: ocaml

  val cl_sampler_null : cl_sampler

Null value of cl_sampler



.. code-block:: ocaml

  val cl_sampler_ptr_null : cl_sampler Ctypes.ptr

Null pointer of cl_sampler



Function definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val cl_check_err : int32 -> unit

``cl_check_err`` checks error code of return value.



.. code-block:: ocaml

  val clGetPlatformIDs : Unsigned.uint32 -> cl_platform_id ptr -> Unsigned.uint32 ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetPlatformInfo : cl_platform_id -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetDeviceIDs : cl_platform_id -> Unsigned.ULong.t -> Unsigned.uint32 -> cl_device_id ptr -> Unsigned.uint32 ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetDeviceInfo : cl_device_id -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateSubDevices : cl_device_id -> Intptr.t ptr -> Unsigned.uint32 -> cl_device_id ptr -> Unsigned.uint32 ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clRetainDevice : cl_device_id -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clReleaseDevice : cl_device_id -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateContext : Intptr.t ptr -> Unsigned.uint32 -> cl_device_id ptr -> unit ptr -> unit ptr -> int32 ptr -> cl_context

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateContextFromType : Intptr.t ptr -> Unsigned.ULong.t -> unit ptr -> unit ptr -> int32 ptr -> cl_context

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clRetainContext : cl_context -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clReleaseContext : cl_context -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetContextInfo : cl_context -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateCommandQueue : cl_context -> cl_device_id -> Unsigned.ULong.t -> int32 ptr -> cl_command_queue

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clRetainCommandQueue : cl_command_queue -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clReleaseCommandQueue : cl_command_queue -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetCommandQueueInfo : cl_command_queue -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateBuffer : cl_context -> Unsigned.ULong.t -> Unsigned.size_t -> unit ptr -> int32 ptr -> cl_mem

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateSubBuffer : cl_mem -> Unsigned.ULong.t -> Unsigned.uint32 -> unit ptr -> int32 ptr -> cl_mem

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clRetainMemObject : cl_mem -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clReleaseMemObject : cl_mem -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetMemObjectInfo : cl_mem -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetImageInfo : cl_mem -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clSetMemObjectDestructorCallback : cl_mem -> unit ptr -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateSampler : cl_context -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.uint32 -> int32 ptr -> cl_sampler

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clRetainSampler : cl_sampler -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clReleaseSampler : cl_sampler -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetSamplerInfo : cl_sampler -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateProgramWithSource : cl_context -> Unsigned.uint32 -> char ptr ptr -> Unsigned.size_t ptr -> int32 ptr -> cl_program

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateProgramWithBinary : cl_context -> Unsigned.uint32 -> cl_device_id ptr -> Unsigned.size_t ptr -> Unsigned.UChar.t ptr ptr -> int32 ptr -> int32 ptr -> cl_program

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateProgramWithBuiltInKernels : cl_context -> Unsigned.uint32 -> cl_device_id ptr -> char ptr -> int32 ptr -> cl_program

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clRetainProgram : cl_program -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clReleaseProgram : cl_program -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clBuildProgram : cl_program -> Unsigned.uint32 -> cl_device_id ptr -> char ptr -> unit ptr -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCompileProgram : cl_program -> Unsigned.uint32 -> cl_device_id ptr -> char ptr -> Unsigned.uint32 -> cl_program ptr -> char ptr ptr -> unit ptr -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clLinkProgram : cl_context -> Unsigned.uint32 -> cl_device_id ptr -> char ptr -> Unsigned.uint32 -> cl_program ptr -> unit ptr -> unit ptr -> int32 ptr -> cl_program

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clUnloadPlatformCompiler : cl_platform_id -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetProgramInfo : cl_program -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetProgramBuildInfo : cl_program -> cl_device_id -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateKernel : cl_program -> char ptr -> int32 ptr -> cl_kernel

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateKernelsInProgram : cl_program -> Unsigned.uint32 -> cl_kernel ptr -> Unsigned.uint32 ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clRetainKernel : cl_kernel -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clReleaseKernel : cl_kernel -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clSetKernelArg : cl_kernel -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetKernelInfo : cl_kernel -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetKernelArgInfo : cl_kernel -> Unsigned.uint32 -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetKernelWorkGroupInfo : cl_kernel -> cl_device_id -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clWaitForEvents : Unsigned.uint32 -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetEventInfo : cl_event -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clCreateUserEvent : cl_context -> int32 ptr -> cl_event

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clRetainEvent : cl_event -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clReleaseEvent : cl_event -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clSetUserEventStatus : cl_event -> int32 -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clSetEventCallback : cl_event -> int32 -> unit ptr -> unit ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetEventProfilingInfo : cl_event -> Unsigned.uint32 -> Unsigned.size_t -> unit ptr -> Unsigned.size_t ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clFlush : cl_command_queue -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clFinish : cl_command_queue -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueReadBuffer : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueReadBufferRect : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueWriteBuffer : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueWriteBufferRect : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueFillBuffer : cl_command_queue -> cl_mem -> unit ptr -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueCopyBuffer : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueCopyBufferRect : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueReadImage : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueWriteImage : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.size_t -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueFillImage : cl_command_queue -> cl_mem -> unit ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueCopyImage : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueCopyImageToBuffer : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueCopyBufferToImage : cl_command_queue -> cl_mem -> cl_mem -> Unsigned.size_t -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueMapBuffer : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.ULong.t -> Unsigned.size_t -> Unsigned.size_t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32 ptr -> unit ptr

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueMapImage : cl_command_queue -> cl_mem -> Unsigned.uint32 -> Unsigned.ULong.t -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32 ptr -> unit ptr

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueUnmapMemObject : cl_command_queue -> cl_mem -> unit ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueMigrateMemObjects : cl_command_queue -> Unsigned.uint32 -> cl_mem ptr -> Unsigned.ULong.t -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueNDRangeKernel : cl_command_queue -> cl_kernel -> Unsigned.uint32 -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.size_t ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueTask : cl_command_queue -> cl_kernel -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueNativeKernel : cl_command_queue -> unit ptr -> unit ptr -> Unsigned.size_t -> Unsigned.uint32 -> cl_mem ptr -> unit ptr ptr -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueMarkerWithWaitList : cl_command_queue -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clEnqueueBarrierWithWaitList : cl_command_queue -> Unsigned.uint32 -> cl_event ptr -> cl_event ptr -> int32

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



.. code-block:: ocaml

  val clGetExtensionFunctionAddressForPlatform : cl_platform_id -> char ptr -> unit ptr

Refer to `OpenCL <https://www.khronos.org/opencl/>`_



Constant definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val cl_SUCCESS : int

Constant ``SUCCESS = 0``.



.. code-block:: ocaml

  val cl_DEVICE_NOT_FOUND : int

Constant ``DEVICE_NOT_FOUND = -1``.



.. code-block:: ocaml

  val cl_DEVICE_NOT_AVAILABLE : int

Constant ``DEVICE_NOT_AVAILABLE = -2``.



.. code-block:: ocaml

  val cl_COMPILER_NOT_AVAILABLE : int

Constant ``COMPILER_NOT_AVAILABLE = -3``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_ALLOCATION_FAILURE : int

Constant ``MEM_OBJECT_ALLOCATION_FAILURE = -4``.



.. code-block:: ocaml

  val cl_OUT_OF_RESOURCES : int

Constant ``OUT_OF_RESOURCES = -5``.



.. code-block:: ocaml

  val cl_OUT_OF_HOST_MEMORY : int

Constant ``OUT_OF_HOST_MEMORY = -6``.



.. code-block:: ocaml

  val cl_PROFILING_INFO_NOT_AVAILABLE : int

Constant ``PROFILING_INFO_NOT_AVAILABLE = -7``.



.. code-block:: ocaml

  val cl_MEM_COPY_OVERLAP : int

Constant ``MEM_COPY_OVERLAP = -8``.



.. code-block:: ocaml

  val cl_IMAGE_FORMAT_MISMATCH : int

Constant ``IMAGE_FORMAT_MISMATCH = -9``.



.. code-block:: ocaml

  val cl_IMAGE_FORMAT_NOT_SUPPORTED : int

Constant ``IMAGE_FORMAT_NOT_SUPPORTED = -10``.



.. code-block:: ocaml

  val cl_BUILD_PROGRAM_FAILURE : int

Constant ``BUILD_PROGRAM_FAILURE = -11``.



.. code-block:: ocaml

  val cl_MAP_FAILURE : int

Constant ``MAP_FAILURE = -12``.



.. code-block:: ocaml

  val cl_MISALIGNED_SUB_BUFFER_OFFSET : int

Constant ``MISALIGNED_SUB_BUFFER_OFFSET = -13``.



.. code-block:: ocaml

  val cl_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST : int

Constant ``EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST = -14``.



.. code-block:: ocaml

  val cl_COMPILE_PROGRAM_FAILURE : int

Constant ``COMPILE_PROGRAM_FAILURE = -15``.



.. code-block:: ocaml

  val cl_LINKER_NOT_AVAILABLE : int

Constant ``LINKER_NOT_AVAILABLE = -16``.



.. code-block:: ocaml

  val cl_LINK_PROGRAM_FAILURE : int

Constant ``LINK_PROGRAM_FAILURE = -17``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_FAILED : int

Constant ``DEVICE_PARTITION_FAILED = -18``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_INFO_NOT_AVAILABLE : int

Constant ``KERNEL_ARG_INFO_NOT_AVAILABLE = -19``.



.. code-block:: ocaml

  val cl_INVALID_VALUE : int

Constant ``INVALID_VALUE = -30``.



.. code-block:: ocaml

  val cl_INVALID_DEVICE_TYPE : int

Constant ``INVALID_DEVICE_TYPE = -31``.



.. code-block:: ocaml

  val cl_INVALID_PLATFORM : int

Constant ``INVALID_PLATFORM = -32``.



.. code-block:: ocaml

  val cl_INVALID_DEVICE : int

Constant ``INVALID_DEVICE = -33``.



.. code-block:: ocaml

  val cl_INVALID_CONTEXT : int

Constant ``INVALID_CONTEXT = -34``.



.. code-block:: ocaml

  val cl_INVALID_QUEUE_PROPERTIES : int

Constant ``INVALID_QUEUE_PROPERTIES = -35``.



.. code-block:: ocaml

  val cl_INVALID_COMMAND_QUEUE : int

Constant ``INVALID_COMMAND_QUEUE = -36``.



.. code-block:: ocaml

  val cl_INVALID_HOST_PTR : int

Constant ``INVALID_HOST_PTR = -37``.



.. code-block:: ocaml

  val cl_INVALID_MEM_OBJECT : int

Constant ``INVALID_MEM_OBJECT = -38``.



.. code-block:: ocaml

  val cl_INVALID_IMAGE_FORMAT_DESCRIPTOR : int

Constant ``INVALID_IMAGE_FORMAT_DESCRIPTOR = -39``.



.. code-block:: ocaml

  val cl_INVALID_IMAGE_SIZE : int

Constant ``INVALID_IMAGE_SIZE = -40``.



.. code-block:: ocaml

  val cl_INVALID_SAMPLER : int

Constant ``INVALID_SAMPLER = -41``.



.. code-block:: ocaml

  val cl_INVALID_BINARY : int

Constant ``INVALID_BINARY = -42``.



.. code-block:: ocaml

  val cl_INVALID_BUILD_OPTIONS : int

Constant ``INVALID_BUILD_OPTIONS = -43``.



.. code-block:: ocaml

  val cl_INVALID_PROGRAM : int

Constant ``INVALID_PROGRAM = -44``.



.. code-block:: ocaml

  val cl_INVALID_PROGRAM_EXECUTABLE : int

Constant ``INVALID_PROGRAM_EXECUTABLE = -45``.



.. code-block:: ocaml

  val cl_INVALID_KERNEL_NAME : int

Constant ``INVALID_KERNEL_NAME = -46``.



.. code-block:: ocaml

  val cl_INVALID_KERNEL_DEFINITION : int

Constant ``INVALID_KERNEL_DEFINITION = -47``.



.. code-block:: ocaml

  val cl_INVALID_KERNEL : int

Constant ``INVALID_KERNEL = -48``.



.. code-block:: ocaml

  val cl_INVALID_ARG_INDEX : int

Constant ``INVALID_ARG_INDEX = -49``.



.. code-block:: ocaml

  val cl_INVALID_ARG_VALUE : int

Constant ``INVALID_ARG_VALUE = -50``.



.. code-block:: ocaml

  val cl_INVALID_ARG_SIZE : int

Constant ``INVALID_ARG_SIZE = -51``.



.. code-block:: ocaml

  val cl_INVALID_KERNEL_ARGS : int

Constant ``INVALID_KERNEL_ARGS = -52``.



.. code-block:: ocaml

  val cl_INVALID_WORK_DIMENSION : int

Constant ``INVALID_WORK_DIMENSION = -53``.



.. code-block:: ocaml

  val cl_INVALID_WORK_GROUP_SIZE : int

Constant ``INVALID_WORK_GROUP_SIZE = -54``.



.. code-block:: ocaml

  val cl_INVALID_WORK_ITEM_SIZE : int

Constant ``INVALID_WORK_ITEM_SIZE = -55``.



.. code-block:: ocaml

  val cl_INVALID_GLOBAL_OFFSET : int

Constant ``INVALID_GLOBAL_OFFSET = -56``.



.. code-block:: ocaml

  val cl_INVALID_EVENT_WAIT_LIST : int

Constant ``INVALID_EVENT_WAIT_LIST = -57``.



.. code-block:: ocaml

  val cl_INVALID_EVENT : int

Constant ``INVALID_EVENT = -58``.



.. code-block:: ocaml

  val cl_INVALID_OPERATION : int

Constant ``INVALID_OPERATION = -59``.



.. code-block:: ocaml

  val cl_INVALID_GL_OBJECT : int

Constant ``INVALID_GL_OBJECT = -60``.



.. code-block:: ocaml

  val cl_INVALID_BUFFER_SIZE : int

Constant ``INVALID_BUFFER_SIZE = -61``.



.. code-block:: ocaml

  val cl_INVALID_MIP_LEVEL : int

Constant ``INVALID_MIP_LEVEL = -62``.



.. code-block:: ocaml

  val cl_INVALID_GLOBAL_WORK_SIZE : int

Constant ``INVALID_GLOBAL_WORK_SIZE = -63``.



.. code-block:: ocaml

  val cl_INVALID_PROPERTY : int

Constant ``INVALID_PROPERTY = -64``.



.. code-block:: ocaml

  val cl_INVALID_IMAGE_DESCRIPTOR : int

Constant ``INVALID_IMAGE_DESCRIPTOR = -65``.



.. code-block:: ocaml

  val cl_INVALID_COMPILER_OPTIONS : int

Constant ``INVALID_COMPILER_OPTIONS = -66``.



.. code-block:: ocaml

  val cl_INVALID_LINKER_OPTIONS : int

Constant ``INVALID_LINKER_OPTIONS = -67``.



.. code-block:: ocaml

  val cl_INVALID_DEVICE_PARTITION_COUNT : int

Constant ``INVALID_DEVICE_PARTITION_COUNT = -68``.



.. code-block:: ocaml

  val cl_VERSION_1_0 : int

Constant ``VERSION_1_0 = 1``.



.. code-block:: ocaml

  val cl_VERSION_1_1 : int

Constant ``VERSION_1_1 = 1``.



.. code-block:: ocaml

  val cl_VERSION_1_2 : int

Constant ``VERSION_1_2 = 1``.



.. code-block:: ocaml

  val cl_FALSE : int

Constant ``FALSE = 0``.



.. code-block:: ocaml

  val cl_TRUE : int

Constant ``TRUE = 1``.



.. code-block:: ocaml

  val cl_BLOCKING : int

Constant ``BLOCKING = 1``.



.. code-block:: ocaml

  val cl_NON_BLOCKING : int

Constant ``NON_BLOCKING = 0``.



.. code-block:: ocaml

  val cl_PLATFORM_PROFILE : int

Constant ``PLATFORM_PROFILE = 0x0900``.



.. code-block:: ocaml

  val cl_PLATFORM_VERSION : int

Constant ``PLATFORM_VERSION = 0x0901``.



.. code-block:: ocaml

  val cl_PLATFORM_NAME : int

Constant ``PLATFORM_NAME = 0x0902``.



.. code-block:: ocaml

  val cl_PLATFORM_VENDOR : int

Constant ``PLATFORM_VENDOR = 0x0903``.



.. code-block:: ocaml

  val cl_PLATFORM_EXTENSIONS : int

Constant ``PLATFORM_EXTENSIONS = 0x0904``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_DEFAULT : int

Constant ``DEVICE_TYPE_DEFAULT = (1 lsl 0)``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_CPU : int

Constant ``DEVICE_TYPE_CPU = (1 lsl 1)``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_GPU : int

Constant ``DEVICE_TYPE_GPU = (1 lsl 2)``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_ACCELERATOR : int

Constant ``DEVICE_TYPE_ACCELERATOR = (1 lsl 3)``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_CUSTOM : int

Constant ``DEVICE_TYPE_CUSTOM = (1 lsl 4)``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_ALL : int

Constant ``DEVICE_TYPE_ALL = 0xFFFFFFFF``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE : int

Constant ``DEVICE_TYPE = 0x1000``.



.. code-block:: ocaml

  val cl_DEVICE_VENDOR_ID : int

Constant ``DEVICE_VENDOR_ID = 0x1001``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_COMPUTE_UNITS : int

Constant ``DEVICE_MAX_COMPUTE_UNITS = 0x1002``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_WORK_ITEM_DIMENSIONS : int

Constant ``DEVICE_MAX_WORK_ITEM_DIMENSIONS = 0x1003``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_WORK_GROUP_SIZE : int

Constant ``DEVICE_MAX_WORK_GROUP_SIZE = 0x1004``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_WORK_ITEM_SIZES : int

Constant ``DEVICE_MAX_WORK_ITEM_SIZES = 0x1005``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_CHAR = 0x1006``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_SHORT = 0x1007``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_INT : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_INT = 0x1008``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_LONG : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_LONG = 0x1009``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT = 0x100A``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE = 0x100B``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_CLOCK_FREQUENCY : int

Constant ``DEVICE_MAX_CLOCK_FREQUENCY = 0x100C``.



.. code-block:: ocaml

  val cl_DEVICE_ADDRESS_BITS : int

Constant ``DEVICE_ADDRESS_BITS = 0x100D``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_READ_IMAGE_ARGS : int

Constant ``DEVICE_MAX_READ_IMAGE_ARGS = 0x100E``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_WRITE_IMAGE_ARGS : int

Constant ``DEVICE_MAX_WRITE_IMAGE_ARGS = 0x100F``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_MEM_ALLOC_SIZE : int

Constant ``DEVICE_MAX_MEM_ALLOC_SIZE = 0x1010``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE2D_MAX_WIDTH : int

Constant ``DEVICE_IMAGE2D_MAX_WIDTH = 0x1011``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE2D_MAX_HEIGHT : int

Constant ``DEVICE_IMAGE2D_MAX_HEIGHT = 0x1012``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE3D_MAX_WIDTH : int

Constant ``DEVICE_IMAGE3D_MAX_WIDTH = 0x1013``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE3D_MAX_HEIGHT : int

Constant ``DEVICE_IMAGE3D_MAX_HEIGHT = 0x1014``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE3D_MAX_DEPTH : int

Constant ``DEVICE_IMAGE3D_MAX_DEPTH = 0x1015``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_SUPPORT : int

Constant ``DEVICE_IMAGE_SUPPORT = 0x1016``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_PARAMETER_SIZE : int

Constant ``DEVICE_MAX_PARAMETER_SIZE = 0x1017``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_SAMPLERS : int

Constant ``DEVICE_MAX_SAMPLERS = 0x1018``.



.. code-block:: ocaml

  val cl_DEVICE_MEM_BASE_ADDR_ALIGN : int

Constant ``DEVICE_MEM_BASE_ADDR_ALIGN = 0x1019``.



.. code-block:: ocaml

  val cl_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE : int

Constant ``DEVICE_MIN_DATA_TYPE_ALIGN_SIZE = 0x101A``.



.. code-block:: ocaml

  val cl_DEVICE_SINGLE_FP_CONFIG : int

Constant ``DEVICE_SINGLE_FP_CONFIG = 0x101B``.



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_CACHE_TYPE : int

Constant ``DEVICE_GLOBAL_MEM_CACHE_TYPE = 0x101C``.



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_CACHELINE_SIZE : int

Constant ``DEVICE_GLOBAL_MEM_CACHELINE_SIZE = 0x101D``.



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_CACHE_SIZE : int

Constant ``DEVICE_GLOBAL_MEM_CACHE_SIZE = 0x101E``.



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_SIZE : int

Constant ``DEVICE_GLOBAL_MEM_SIZE = 0x101F``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_CONSTANT_BUFFER_SIZE : int

Constant ``DEVICE_MAX_CONSTANT_BUFFER_SIZE = 0x1020``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_CONSTANT_ARGS : int

Constant ``DEVICE_MAX_CONSTANT_ARGS = 0x1021``.



.. code-block:: ocaml

  val cl_DEVICE_LOCAL_MEM_TYPE : int

Constant ``DEVICE_LOCAL_MEM_TYPE = 0x1022``.



.. code-block:: ocaml

  val cl_DEVICE_LOCAL_MEM_SIZE : int

Constant ``DEVICE_LOCAL_MEM_SIZE = 0x1023``.



.. code-block:: ocaml

  val cl_DEVICE_ERROR_CORRECTION_SUPPORT : int

Constant ``DEVICE_ERROR_CORRECTION_SUPPORT = 0x1024``.



.. code-block:: ocaml

  val cl_DEVICE_PROFILING_TIMER_RESOLUTION : int

Constant ``DEVICE_PROFILING_TIMER_RESOLUTION = 0x1025``.



.. code-block:: ocaml

  val cl_DEVICE_ENDIAN_LITTLE : int

Constant ``DEVICE_ENDIAN_LITTLE = 0x1026``.



.. code-block:: ocaml

  val cl_DEVICE_AVAILABLE : int

Constant ``DEVICE_AVAILABLE = 0x1027``.



.. code-block:: ocaml

  val cl_DEVICE_COMPILER_AVAILABLE : int

Constant ``DEVICE_COMPILER_AVAILABLE = 0x1028``.



.. code-block:: ocaml

  val cl_DEVICE_EXECUTION_CAPABILITIES : int

Constant ``DEVICE_EXECUTION_CAPABILITIES = 0x1029``.



.. code-block:: ocaml

  val cl_DEVICE_QUEUE_PROPERTIES : int

Constant ``DEVICE_QUEUE_PROPERTIES = 0x102A``.



.. code-block:: ocaml

  val cl_DEVICE_NAME : int

Constant ``DEVICE_NAME = 0x102B``.



.. code-block:: ocaml

  val cl_DEVICE_VENDOR : int

Constant ``DEVICE_VENDOR = 0x102C``.



.. code-block:: ocaml

  val cl_DRIVER_VERSION : int

Constant ``DRIVER_VERSION = 0x102D``.



.. code-block:: ocaml

  val cl_DEVICE_PROFILE : int

Constant ``DEVICE_PROFILE = 0x102E``.



.. code-block:: ocaml

  val cl_DEVICE_VERSION : int

Constant ``DEVICE_VERSION = 0x102F``.



.. code-block:: ocaml

  val cl_DEVICE_EXTENSIONS : int

Constant ``DEVICE_EXTENSIONS = 0x1030``.



.. code-block:: ocaml

  val cl_DEVICE_PLATFORM : int

Constant ``DEVICE_PLATFORM = 0x1031``.



.. code-block:: ocaml

  val cl_DEVICE_DOUBLE_FP_CONFIG : int

Constant ``DEVICE_DOUBLE_FP_CONFIG = 0x1032``.



.. code-block:: ocaml

  val cl_DEVICE_HALF_FP_CONFIG : int

Constant ``DEVICE_HALF_FP_CONFIG = 0x1033``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_HALF : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_HALF = 0x1034``.



.. code-block:: ocaml

  val cl_DEVICE_HOST_UNIFIED_MEMORY : int

Constant ``DEVICE_HOST_UNIFIED_MEMORY = 0x1035``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_CHAR : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_CHAR = 0x1036``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_SHORT : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_SHORT = 0x1037``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_INT : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_INT = 0x1038``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_LONG : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_LONG = 0x1039``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_FLOAT = 0x103A``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE = 0x103B``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_HALF : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_HALF = 0x103C``.



.. code-block:: ocaml

  val cl_DEVICE_OPENCL_C_VERSION : int

Constant ``DEVICE_OPENCL_C_VERSION = 0x103D``.



.. code-block:: ocaml

  val cl_DEVICE_LINKER_AVAILABLE : int

Constant ``DEVICE_LINKER_AVAILABLE = 0x103E``.



.. code-block:: ocaml

  val cl_DEVICE_BUILT_IN_KERNELS : int

Constant ``DEVICE_BUILT_IN_KERNELS = 0x103F``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_MAX_BUFFER_SIZE : int

Constant ``DEVICE_IMAGE_MAX_BUFFER_SIZE = 0x1040``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_MAX_ARRAY_SIZE : int

Constant ``DEVICE_IMAGE_MAX_ARRAY_SIZE = 0x1041``.



.. code-block:: ocaml

  val cl_DEVICE_PARENT_DEVICE : int

Constant ``DEVICE_PARENT_DEVICE = 0x1042``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_MAX_SUB_DEVICES : int

Constant ``DEVICE_PARTITION_MAX_SUB_DEVICES = 0x1043``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_PROPERTIES : int

Constant ``DEVICE_PARTITION_PROPERTIES = 0x1044``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_AFFINITY_DOMAIN : int

Constant ``DEVICE_PARTITION_AFFINITY_DOMAIN = 0x1045``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_TYPE : int

Constant ``DEVICE_PARTITION_TYPE = 0x1046``.



.. code-block:: ocaml

  val cl_DEVICE_REFERENCE_COUNT : int

Constant ``DEVICE_REFERENCE_COUNT = 0x1047``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_INTEROP_USER_SYNC : int

Constant ``DEVICE_PREFERRED_INTEROP_USER_SYNC = 0x1048``.



.. code-block:: ocaml

  val cl_DEVICE_PRINTF_BUFFER_SIZE : int

Constant ``DEVICE_PRINTF_BUFFER_SIZE = 0x1049``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_PITCH_ALIGNMENT : int

Constant ``DEVICE_IMAGE_PITCH_ALIGNMENT = 0x104A``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT : int

Constant ``DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT = 0x104B``.



.. code-block:: ocaml

  val cl_FP_DENORM : int

Constant ``FP_DENORM = (1 lsl 0)``.



.. code-block:: ocaml

  val cl_FP_INF_NAN : int

Constant ``FP_INF_NAN = (1 lsl 1)``.



.. code-block:: ocaml

  val cl_FP_ROUND_TO_NEAREST : int

Constant ``FP_ROUND_TO_NEAREST = (1 lsl 2)``.



.. code-block:: ocaml

  val cl_FP_ROUND_TO_ZERO : int

Constant ``FP_ROUND_TO_ZERO = (1 lsl 3)``.



.. code-block:: ocaml

  val cl_FP_ROUND_TO_INF : int

Constant ``FP_ROUND_TO_INF = (1 lsl 4)``.



.. code-block:: ocaml

  val cl_FP_FMA : int

Constant ``FP_FMA = (1 lsl 5)``.



.. code-block:: ocaml

  val cl_FP_SOFT_FLOAT : int

Constant ``FP_SOFT_FLOAT = (1 lsl 6)``.



.. code-block:: ocaml

  val cl_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT : int

Constant ``FP_CORRECTLY_ROUNDED_DIVIDE_SQRT = (1 lsl 7)``.



.. code-block:: ocaml

  val cl_NONE : int

Constant ``NONE = 0x0``.



.. code-block:: ocaml

  val cl_READ_ONLY_CACHE : int

Constant ``READ_ONLY_CACHE = 0x1``.



.. code-block:: ocaml

  val cl_READ_WRITE_CACHE : int

Constant ``READ_WRITE_CACHE = 0x2``.



.. code-block:: ocaml

  val cl_LOCAL : int

Constant ``LOCAL = 0x1``.



.. code-block:: ocaml

  val cl_GLOBAL : int

Constant ``GLOBAL = 0x2``.



.. code-block:: ocaml

  val cl_EXEC_KERNEL : int

Constant ``EXEC_KERNEL = (1 lsl 0)``.



.. code-block:: ocaml

  val cl_EXEC_NATIVE_KERNEL : int

Constant ``EXEC_NATIVE_KERNEL = (1 lsl 1)``.



.. code-block:: ocaml

  val cl_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE : int

Constant ``QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE = (1 lsl 0)``.



.. code-block:: ocaml

  val cl_QUEUE_PROFILING_ENABLE : int

Constant ``QUEUE_PROFILING_ENABLE = (1 lsl 1)``.



.. code-block:: ocaml

  val cl_CONTEXT_REFERENCE_COUNT : int

Constant ``CONTEXT_REFERENCE_COUNT = 0x1080``.



.. code-block:: ocaml

  val cl_CONTEXT_DEVICES : int

Constant ``CONTEXT_DEVICES = 0x1081``.



.. code-block:: ocaml

  val cl_CONTEXT_PROPERTIES : int

Constant ``CONTEXT_PROPERTIES = 0x1082``.



.. code-block:: ocaml

  val cl_CONTEXT_NUM_DEVICES : int

Constant ``CONTEXT_NUM_DEVICES = 0x1083``.



.. code-block:: ocaml

  val cl_CONTEXT_PLATFORM : int

Constant ``CONTEXT_PLATFORM = 0x1084``.



.. code-block:: ocaml

  val cl_CONTEXT_INTEROP_USER_SYNC : int

Constant ``CONTEXT_INTEROP_USER_SYNC = 0x1085``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_EQUALLY : int

Constant ``DEVICE_PARTITION_EQUALLY = 0x1086``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_BY_COUNTS : int

Constant ``DEVICE_PARTITION_BY_COUNTS = 0x1087``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_BY_COUNTS_LIST_END : int

Constant ``DEVICE_PARTITION_BY_COUNTS_LIST_END = 0x0``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_BY_AFFINITY_DOMAIN : int

Constant ``DEVICE_PARTITION_BY_AFFINITY_DOMAIN = 0x1088``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_NUMA : int

Constant ``DEVICE_AFFINITY_DOMAIN_NUMA = (1 lsl 0)``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L4_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L4_CACHE = (1 lsl 1)``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L3_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L3_CACHE = (1 lsl 2)``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L2_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L2_CACHE = (1 lsl 3)``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L1_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L1_CACHE = (1 lsl 4)``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE : int

Constant ``DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE = (1 lsl 5)``.



.. code-block:: ocaml

  val cl_QUEUE_CONTEXT : int

Constant ``QUEUE_CONTEXT = 0x1090``.



.. code-block:: ocaml

  val cl_QUEUE_DEVICE : int

Constant ``QUEUE_DEVICE = 0x1091``.



.. code-block:: ocaml

  val cl_QUEUE_REFERENCE_COUNT : int

Constant ``QUEUE_REFERENCE_COUNT = 0x1092``.



.. code-block:: ocaml

  val cl_QUEUE_PROPERTIES : int

Constant ``QUEUE_PROPERTIES = 0x1093``.



.. code-block:: ocaml

  val cl_MEM_READ_WRITE : int

Constant ``MEM_READ_WRITE = (1 lsl 0)``.



.. code-block:: ocaml

  val cl_MEM_WRITE_ONLY : int

Constant ``MEM_WRITE_ONLY = (1 lsl 1)``.



.. code-block:: ocaml

  val cl_MEM_READ_ONLY : int

Constant ``MEM_READ_ONLY = (1 lsl 2)``.



.. code-block:: ocaml

  val cl_MEM_USE_HOST_PTR : int

Constant ``MEM_USE_HOST_PTR = (1 lsl 3)``.



.. code-block:: ocaml

  val cl_MEM_ALLOC_HOST_PTR : int

Constant ``MEM_ALLOC_HOST_PTR = (1 lsl 4)``.



.. code-block:: ocaml

  val cl_MEM_COPY_HOST_PTR : int

Constant ``MEM_COPY_HOST_PTR = (1 lsl 5)``.



.. code-block:: ocaml

  val cl_MEM_HOST_WRITE_ONLY : int

Constant ``MEM_HOST_WRITE_ONLY = (1 lsl 7)``.



.. code-block:: ocaml

  val cl_MEM_HOST_READ_ONLY : int

Constant ``MEM_HOST_READ_ONLY = (1 lsl 8)``.



.. code-block:: ocaml

  val cl_MEM_HOST_NO_ACCESS : int

Constant ``MEM_HOST_NO_ACCESS = (1 lsl 9)``.



.. code-block:: ocaml

  val cl_MIGRATE_MEM_OBJECT_HOST : int

Constant ``MIGRATE_MEM_OBJECT_HOST = (1 lsl 0)``.



.. code-block:: ocaml

  val cl_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED : int

Constant ``MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED = (1 lsl 1)``.



.. code-block:: ocaml

  val cl_R : int

Constant ``R = 0x10B0``.



.. code-block:: ocaml

  val cl_A : int

Constant ``A = 0x10B1``.



.. code-block:: ocaml

  val cl_RG : int

Constant ``RG = 0x10B2``.



.. code-block:: ocaml

  val cl_RA : int

Constant ``RA = 0x10B3``.



.. code-block:: ocaml

  val cl_RGB : int

Constant ``RGB = 0x10B4``.



.. code-block:: ocaml

  val cl_RGBA : int

Constant ``RGBA = 0x10B5``.



.. code-block:: ocaml

  val cl_BGRA : int

Constant ``BGRA = 0x10B6``.



.. code-block:: ocaml

  val cl_ARGB : int

Constant ``ARGB = 0x10B7``.



.. code-block:: ocaml

  val cl_INTENSITY : int

Constant ``INTENSITY = 0x10B8``.



.. code-block:: ocaml

  val cl_LUMINANCE : int

Constant ``LUMINANCE = 0x10B9``.



.. code-block:: ocaml

  val cl_Rx : int

Constant ``Rx = 0x10BA``.



.. code-block:: ocaml

  val cl_RGx : int

Constant ``RGx = 0x10BB``.



.. code-block:: ocaml

  val cl_RGBx : int

Constant ``RGBx = 0x10BC``.



.. code-block:: ocaml

  val cl_DEPTH : int

Constant ``DEPTH = 0x10BD``.



.. code-block:: ocaml

  val cl_DEPTH_STENCIL : int

Constant ``DEPTH_STENCIL = 0x10BE``.



.. code-block:: ocaml

  val cl_SNORM_INT8 : int

Constant ``SNORM_INT8 = 0x10D0``.



.. code-block:: ocaml

  val cl_SNORM_INT16 : int

Constant ``SNORM_INT16 = 0x10D1``.



.. code-block:: ocaml

  val cl_UNORM_INT8 : int

Constant ``UNORM_INT8 = 0x10D2``.



.. code-block:: ocaml

  val cl_UNORM_INT16 : int

Constant ``UNORM_INT16 = 0x10D3``.



.. code-block:: ocaml

  val cl_UNORM_SHORT_565 : int

Constant ``UNORM_SHORT_565 = 0x10D4``.



.. code-block:: ocaml

  val cl_UNORM_SHORT_555 : int

Constant ``UNORM_SHORT_555 = 0x10D5``.



.. code-block:: ocaml

  val cl_UNORM_INT_101010 : int

Constant ``UNORM_INT_101010 = 0x10D6``.



.. code-block:: ocaml

  val cl_SIGNED_INT8 : int

Constant ``SIGNED_INT8 = 0x10D7``.



.. code-block:: ocaml

  val cl_SIGNED_INT16 : int

Constant ``SIGNED_INT16 = 0x10D8``.



.. code-block:: ocaml

  val cl_SIGNED_INT32 : int

Constant ``SIGNED_INT32 = 0x10D9``.



.. code-block:: ocaml

  val cl_UNSIGNED_INT8 : int

Constant ``UNSIGNED_INT8 = 0x10DA``.



.. code-block:: ocaml

  val cl_UNSIGNED_INT16 : int

Constant ``UNSIGNED_INT16 = 0x10DB``.



.. code-block:: ocaml

  val cl_UNSIGNED_INT32 : int

Constant ``UNSIGNED_INT32 = 0x10DC``.



.. code-block:: ocaml

  val cl_HALF_FLOAT : int

Constant ``HALF_FLOAT = 0x10DD``.



.. code-block:: ocaml

  val cl_FLOAT : int

Constant ``FLOAT = 0x10DE``.



.. code-block:: ocaml

  val cl_UNORM_INT24 : int

Constant ``UNORM_INT24 = 0x10DF``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_BUFFER : int

Constant ``MEM_OBJECT_BUFFER = 0x10F0``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE2D : int

Constant ``MEM_OBJECT_IMAGE2D = 0x10F1``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE3D : int

Constant ``MEM_OBJECT_IMAGE3D = 0x10F2``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE2D_ARRAY : int

Constant ``MEM_OBJECT_IMAGE2D_ARRAY = 0x10F3``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE1D : int

Constant ``MEM_OBJECT_IMAGE1D = 0x10F4``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE1D_ARRAY : int

Constant ``MEM_OBJECT_IMAGE1D_ARRAY = 0x10F5``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE1D_BUFFER : int

Constant ``MEM_OBJECT_IMAGE1D_BUFFER = 0x10F6``.



.. code-block:: ocaml

  val cl_MEM_TYPE : int

Constant ``MEM_TYPE = 0x1100``.



.. code-block:: ocaml

  val cl_MEM_FLAGS : int

Constant ``MEM_FLAGS = 0x1101``.



.. code-block:: ocaml

  val cl_MEM_SIZE : int

Constant ``MEM_SIZE = 0x1102``.



.. code-block:: ocaml

  val cl_MEM_HOST_PTR : int

Constant ``MEM_HOST_PTR = 0x1103``.



.. code-block:: ocaml

  val cl_MEM_MAP_COUNT : int

Constant ``MEM_MAP_COUNT = 0x1104``.



.. code-block:: ocaml

  val cl_MEM_REFERENCE_COUNT : int

Constant ``MEM_REFERENCE_COUNT = 0x1105``.



.. code-block:: ocaml

  val cl_MEM_CONTEXT : int

Constant ``MEM_CONTEXT = 0x1106``.



.. code-block:: ocaml

  val cl_MEM_ASSOCIATED_MEMOBJECT : int

Constant ``MEM_ASSOCIATED_MEMOBJECT = 0x1107``.



.. code-block:: ocaml

  val cl_MEM_OFFSET : int

Constant ``MEM_OFFSET = 0x1108``.



.. code-block:: ocaml

  val cl_IMAGE_FORMAT : int

Constant ``IMAGE_FORMAT = 0x1110``.



.. code-block:: ocaml

  val cl_IMAGE_ELEMENT_SIZE : int

Constant ``IMAGE_ELEMENT_SIZE = 0x1111``.



.. code-block:: ocaml

  val cl_IMAGE_ROW_PITCH : int

Constant ``IMAGE_ROW_PITCH = 0x1112``.



.. code-block:: ocaml

  val cl_IMAGE_SLICE_PITCH : int

Constant ``IMAGE_SLICE_PITCH = 0x1113``.



.. code-block:: ocaml

  val cl_IMAGE_WIDTH : int

Constant ``IMAGE_WIDTH = 0x1114``.



.. code-block:: ocaml

  val cl_IMAGE_HEIGHT : int

Constant ``IMAGE_HEIGHT = 0x1115``.



.. code-block:: ocaml

  val cl_IMAGE_DEPTH : int

Constant ``IMAGE_DEPTH = 0x1116``.



.. code-block:: ocaml

  val cl_IMAGE_ARRAY_SIZE : int

Constant ``IMAGE_ARRAY_SIZE = 0x1117``.



.. code-block:: ocaml

  val cl_IMAGE_BUFFER : int

Constant ``IMAGE_BUFFER = 0x1118``.



.. code-block:: ocaml

  val cl_IMAGE_NUM_MIP_LEVELS : int

Constant ``IMAGE_NUM_MIP_LEVELS = 0x1119``.



.. code-block:: ocaml

  val cl_IMAGE_NUM_SAMPLES : int

Constant ``IMAGE_NUM_SAMPLES = 0x111A``.



.. code-block:: ocaml

  val cl_ADDRESS_NONE : int

Constant ``ADDRESS_NONE = 0x1130``.



.. code-block:: ocaml

  val cl_ADDRESS_CLAMP_TO_EDGE : int

Constant ``ADDRESS_CLAMP_TO_EDGE = 0x1131``.



.. code-block:: ocaml

  val cl_ADDRESS_CLAMP : int

Constant ``ADDRESS_CLAMP = 0x1132``.



.. code-block:: ocaml

  val cl_ADDRESS_REPEAT : int

Constant ``ADDRESS_REPEAT = 0x1133``.



.. code-block:: ocaml

  val cl_ADDRESS_MIRRORED_REPEAT : int

Constant ``ADDRESS_MIRRORED_REPEAT = 0x1134``.



.. code-block:: ocaml

  val cl_FILTER_NEAREST : int

Constant ``FILTER_NEAREST = 0x1140``.



.. code-block:: ocaml

  val cl_FILTER_LINEAR : int

Constant ``FILTER_LINEAR = 0x1141``.



.. code-block:: ocaml

  val cl_SAMPLER_REFERENCE_COUNT : int

Constant ``SAMPLER_REFERENCE_COUNT = 0x1150``.



.. code-block:: ocaml

  val cl_SAMPLER_CONTEXT : int

Constant ``SAMPLER_CONTEXT = 0x1151``.



.. code-block:: ocaml

  val cl_SAMPLER_NORMALIZED_COORDS : int

Constant ``SAMPLER_NORMALIZED_COORDS = 0x1152``.



.. code-block:: ocaml

  val cl_SAMPLER_ADDRESSING_MODE : int

Constant ``SAMPLER_ADDRESSING_MODE = 0x1153``.



.. code-block:: ocaml

  val cl_SAMPLER_FILTER_MODE : int

Constant ``SAMPLER_FILTER_MODE = 0x1154``.



.. code-block:: ocaml

  val cl_MAP_READ : int

Constant ``MAP_READ = (1 lsl 0)``.



.. code-block:: ocaml

  val cl_MAP_WRITE : int

Constant ``MAP_WRITE = (1 lsl 1)``.



.. code-block:: ocaml

  val cl_MAP_WRITE_INVALIDATE_REGION : int

Constant ``MAP_WRITE_INVALIDATE_REGION = (1 lsl 2)``.



.. code-block:: ocaml

  val cl_PROGRAM_REFERENCE_COUNT : int

Constant ``PROGRAM_REFERENCE_COUNT = 0x1160``.



.. code-block:: ocaml

  val cl_PROGRAM_CONTEXT : int

Constant ``PROGRAM_CONTEXT = 0x1161``.



.. code-block:: ocaml

  val cl_PROGRAM_NUM_DEVICES : int

Constant ``PROGRAM_NUM_DEVICES = 0x1162``.



.. code-block:: ocaml

  val cl_PROGRAM_DEVICES : int

Constant ``PROGRAM_DEVICES = 0x1163``.



.. code-block:: ocaml

  val cl_PROGRAM_SOURCE : int

Constant ``PROGRAM_SOURCE = 0x1164``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_SIZES : int

Constant ``PROGRAM_BINARY_SIZES = 0x1165``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARIES : int

Constant ``PROGRAM_BINARIES = 0x1166``.



.. code-block:: ocaml

  val cl_PROGRAM_NUM_KERNELS : int

Constant ``PROGRAM_NUM_KERNELS = 0x1167``.



.. code-block:: ocaml

  val cl_PROGRAM_KERNEL_NAMES : int

Constant ``PROGRAM_KERNEL_NAMES = 0x1168``.



.. code-block:: ocaml

  val cl_PROGRAM_BUILD_STATUS : int

Constant ``PROGRAM_BUILD_STATUS = 0x1181``.



.. code-block:: ocaml

  val cl_PROGRAM_BUILD_OPTIONS : int

Constant ``PROGRAM_BUILD_OPTIONS = 0x1182``.



.. code-block:: ocaml

  val cl_PROGRAM_BUILD_LOG : int

Constant ``PROGRAM_BUILD_LOG = 0x1183``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE : int

Constant ``PROGRAM_BINARY_TYPE = 0x1184``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_NONE : int

Constant ``PROGRAM_BINARY_TYPE_NONE = 0x0``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_COMPILED_OBJECT : int

Constant ``PROGRAM_BINARY_TYPE_COMPILED_OBJECT = 0x1``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_LIBRARY : int

Constant ``PROGRAM_BINARY_TYPE_LIBRARY = 0x2``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_EXECUTABLE : int

Constant ``PROGRAM_BINARY_TYPE_EXECUTABLE = 0x4``.



.. code-block:: ocaml

  val cl_BUILD_SUCCESS : int

Constant ``BUILD_SUCCESS = 0``.



.. code-block:: ocaml

  val cl_BUILD_NONE : int

Constant ``BUILD_NONE = -1``.



.. code-block:: ocaml

  val cl_BUILD_ERROR : int

Constant ``BUILD_ERROR = -2``.



.. code-block:: ocaml

  val cl_BUILD_IN_PROGRESS : int

Constant ``BUILD_IN_PROGRESS = -3``.



.. code-block:: ocaml

  val cl_KERNEL_FUNCTION_NAME : int

Constant ``KERNEL_FUNCTION_NAME = 0x1190``.



.. code-block:: ocaml

  val cl_KERNEL_NUM_ARGS : int

Constant ``KERNEL_NUM_ARGS = 0x1191``.



.. code-block:: ocaml

  val cl_KERNEL_REFERENCE_COUNT : int

Constant ``KERNEL_REFERENCE_COUNT = 0x1192``.



.. code-block:: ocaml

  val cl_KERNEL_CONTEXT : int

Constant ``KERNEL_CONTEXT = 0x1193``.



.. code-block:: ocaml

  val cl_KERNEL_PROGRAM : int

Constant ``KERNEL_PROGRAM = 0x1194``.



.. code-block:: ocaml

  val cl_KERNEL_ATTRIBUTES : int

Constant ``KERNEL_ATTRIBUTES = 0x1195``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_QUALIFIER : int

Constant ``KERNEL_ARG_ADDRESS_QUALIFIER = 0x1196``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_QUALIFIER : int

Constant ``KERNEL_ARG_ACCESS_QUALIFIER = 0x1197``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_NAME : int

Constant ``KERNEL_ARG_TYPE_NAME = 0x1198``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_QUALIFIER : int

Constant ``KERNEL_ARG_TYPE_QUALIFIER = 0x1199``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_NAME : int

Constant ``KERNEL_ARG_NAME = 0x119A``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_GLOBAL : int

Constant ``KERNEL_ARG_ADDRESS_GLOBAL = 0x119B``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_LOCAL : int

Constant ``KERNEL_ARG_ADDRESS_LOCAL = 0x119C``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_CONSTANT : int

Constant ``KERNEL_ARG_ADDRESS_CONSTANT = 0x119D``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_PRIVATE : int

Constant ``KERNEL_ARG_ADDRESS_PRIVATE = 0x119E``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_READ_ONLY : int

Constant ``KERNEL_ARG_ACCESS_READ_ONLY = 0x11A0``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_WRITE_ONLY : int

Constant ``KERNEL_ARG_ACCESS_WRITE_ONLY = 0x11A1``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_READ_WRITE : int

Constant ``KERNEL_ARG_ACCESS_READ_WRITE = 0x11A2``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_NONE : int

Constant ``KERNEL_ARG_ACCESS_NONE = 0x11A3``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_NONE : int

Constant ``KERNEL_ARG_TYPE_NONE = 0``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_CONST : int

Constant ``KERNEL_ARG_TYPE_CONST = (1 lsl 0)``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_RESTRICT : int

Constant ``KERNEL_ARG_TYPE_RESTRICT = (1 lsl 1)``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_VOLATILE : int

Constant ``KERNEL_ARG_TYPE_VOLATILE = (1 lsl 2)``.



.. code-block:: ocaml

  val cl_KERNEL_WORK_GROUP_SIZE : int

Constant ``KERNEL_WORK_GROUP_SIZE = 0x11B0``.



.. code-block:: ocaml

  val cl_KERNEL_COMPILE_WORK_GROUP_SIZE : int

Constant ``KERNEL_COMPILE_WORK_GROUP_SIZE = 0x11B1``.



.. code-block:: ocaml

  val cl_KERNEL_LOCAL_MEM_SIZE : int

Constant ``KERNEL_LOCAL_MEM_SIZE = 0x11B2``.



.. code-block:: ocaml

  val cl_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE : int

Constant ``KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE = 0x11B3``.



.. code-block:: ocaml

  val cl_KERNEL_PRIVATE_MEM_SIZE : int

Constant ``KERNEL_PRIVATE_MEM_SIZE = 0x11B4``.



.. code-block:: ocaml

  val cl_KERNEL_GLOBAL_WORK_SIZE : int

Constant ``KERNEL_GLOBAL_WORK_SIZE = 0x11B5``.



.. code-block:: ocaml

  val cl_EVENT_COMMAND_QUEUE : int

Constant ``EVENT_COMMAND_QUEUE = 0x11D0``.



.. code-block:: ocaml

  val cl_EVENT_COMMAND_TYPE : int

Constant ``EVENT_COMMAND_TYPE = 0x11D1``.



.. code-block:: ocaml

  val cl_EVENT_REFERENCE_COUNT : int

Constant ``EVENT_REFERENCE_COUNT = 0x11D2``.



.. code-block:: ocaml

  val cl_EVENT_COMMAND_EXECUTION_STATUS : int

Constant ``EVENT_COMMAND_EXECUTION_STATUS = 0x11D3``.



.. code-block:: ocaml

  val cl_EVENT_CONTEXT : int

Constant ``EVENT_CONTEXT = 0x11D4``.



.. code-block:: ocaml

  val cl_COMMAND_NDRANGE_KERNEL : int

Constant ``COMMAND_NDRANGE_KERNEL = 0x11F0``.



.. code-block:: ocaml

  val cl_COMMAND_TASK : int

Constant ``COMMAND_TASK = 0x11F1``.



.. code-block:: ocaml

  val cl_COMMAND_NATIVE_KERNEL : int

Constant ``COMMAND_NATIVE_KERNEL = 0x11F2``.



.. code-block:: ocaml

  val cl_COMMAND_READ_BUFFER : int

Constant ``COMMAND_READ_BUFFER = 0x11F3``.



.. code-block:: ocaml

  val cl_COMMAND_WRITE_BUFFER : int

Constant ``COMMAND_WRITE_BUFFER = 0x11F4``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_BUFFER : int

Constant ``COMMAND_COPY_BUFFER = 0x11F5``.



.. code-block:: ocaml

  val cl_COMMAND_READ_IMAGE : int

Constant ``COMMAND_READ_IMAGE = 0x11F6``.



.. code-block:: ocaml

  val cl_COMMAND_WRITE_IMAGE : int

Constant ``COMMAND_WRITE_IMAGE = 0x11F7``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_IMAGE : int

Constant ``COMMAND_COPY_IMAGE = 0x11F8``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_IMAGE_TO_BUFFER : int

Constant ``COMMAND_COPY_IMAGE_TO_BUFFER = 0x11F9``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_BUFFER_TO_IMAGE : int

Constant ``COMMAND_COPY_BUFFER_TO_IMAGE = 0x11FA``.



.. code-block:: ocaml

  val cl_COMMAND_MAP_BUFFER : int

Constant ``COMMAND_MAP_BUFFER = 0x11FB``.



.. code-block:: ocaml

  val cl_COMMAND_MAP_IMAGE : int

Constant ``COMMAND_MAP_IMAGE = 0x11FC``.



.. code-block:: ocaml

  val cl_COMMAND_UNMAP_MEM_OBJECT : int

Constant ``COMMAND_UNMAP_MEM_OBJECT = 0x11FD``.



.. code-block:: ocaml

  val cl_COMMAND_MARKER : int

Constant ``COMMAND_MARKER = 0x11FE``.



.. code-block:: ocaml

  val cl_COMMAND_ACQUIRE_GL_OBJECTS : int

Constant ``COMMAND_ACQUIRE_GL_OBJECTS = 0x11FF``.



.. code-block:: ocaml

  val cl_COMMAND_RELEASE_GL_OBJECTS : int

Constant ``COMMAND_RELEASE_GL_OBJECTS = 0x1200``.



.. code-block:: ocaml

  val cl_COMMAND_READ_BUFFER_RECT : int

Constant ``COMMAND_READ_BUFFER_RECT = 0x1201``.



.. code-block:: ocaml

  val cl_COMMAND_WRITE_BUFFER_RECT : int

Constant ``COMMAND_WRITE_BUFFER_RECT = 0x1202``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_BUFFER_RECT : int

Constant ``COMMAND_COPY_BUFFER_RECT = 0x1203``.



.. code-block:: ocaml

  val cl_COMMAND_USER : int

Constant ``COMMAND_USER = 0x1204``.



.. code-block:: ocaml

  val cl_COMMAND_BARRIER : int

Constant ``COMMAND_BARRIER = 0x1205``.



.. code-block:: ocaml

  val cl_COMMAND_MIGRATE_MEM_OBJECTS : int

Constant ``COMMAND_MIGRATE_MEM_OBJECTS = 0x1206``.



.. code-block:: ocaml

  val cl_COMMAND_FILL_BUFFER : int

Constant ``COMMAND_FILL_BUFFER = 0x1207``.



.. code-block:: ocaml

  val cl_COMMAND_FILL_IMAGE : int

Constant ``COMMAND_FILL_IMAGE = 0x1208``.



.. code-block:: ocaml

  val cl_COMPLETE : int

Constant ``COMPLETE = 0x0``.



.. code-block:: ocaml

  val cl_RUNNING : int

Constant ``RUNNING = 0x1``.



.. code-block:: ocaml

  val cl_SUBMITTED : int

Constant ``SUBMITTED = 0x2``.



.. code-block:: ocaml

  val cl_QUEUED : int

Constant ``QUEUED = 0x3``.



.. code-block:: ocaml

  val cl_BUFFER_CREATE_TYPE_REGION : int

Constant ``BUFFER_CREATE_TYPE_REGION = 0x1220``.



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_QUEUED : int

Constant ``PROFILING_COMMAND_QUEUED = 0x1280``.



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_SUBMIT : int

Constant ``PROFILING_COMMAND_SUBMIT = 0x1281``.



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_START : int

Constant ``PROFILING_COMMAND_START = 0x1282``.



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_END : int

Constant ``PROFILING_COMMAND_END = 0x1283``.



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



