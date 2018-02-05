Low-level OpenCL API
===============================================================================

This document is auto-generated for Owl's APIs.
#483 entries have been extracted.
timestamp:1517848328

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

Constant ``SUCCESS``.



.. code-block:: ocaml

  val cl_DEVICE_NOT_FOUND : int

Constant ``DEVICE_NOT_FOUND``.



.. code-block:: ocaml

  val cl_DEVICE_NOT_AVAILABLE : int

Constant ``DEVICE_NOT_AVAILABLE``.



.. code-block:: ocaml

  val cl_COMPILER_NOT_AVAILABLE : int

Constant ``COMPILER_NOT_AVAILABLE``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_ALLOCATION_FAILURE : int

Constant ``MEM_OBJECT_ALLOCATION_FAILURE``.



.. code-block:: ocaml

  val cl_OUT_OF_RESOURCES : int

Constant ``OUT_OF_RESOURCES``.



.. code-block:: ocaml

  val cl_OUT_OF_HOST_MEMORY : int

Constant ``OUT_OF_HOST_MEMORY``.



.. code-block:: ocaml

  val cl_PROFILING_INFO_NOT_AVAILABLE : int

Constant ``PROFILING_INFO_NOT_AVAILABLE``.



.. code-block:: ocaml

  val cl_MEM_COPY_OVERLAP : int

Constant ``MEM_COPY_OVERLAP``.



.. code-block:: ocaml

  val cl_IMAGE_FORMAT_MISMATCH : int

Constant ``IMAGE_FORMAT_MISMATCH``.



.. code-block:: ocaml

  val cl_IMAGE_FORMAT_NOT_SUPPORTED : int

Constant ``IMAGE_FORMAT_NOT_SUPPORTED``.



.. code-block:: ocaml

  val cl_BUILD_PROGRAM_FAILURE : int

Constant ``BUILD_PROGRAM_FAILURE``.



.. code-block:: ocaml

  val cl_MAP_FAILURE : int

Constant ``MAP_FAILURE``.



.. code-block:: ocaml

  val cl_MISALIGNED_SUB_BUFFER_OFFSET : int

Constant ``MISALIGNED_SUB_BUFFER_OFFSET``.



.. code-block:: ocaml

  val cl_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST : int

Constant ``EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST``.



.. code-block:: ocaml

  val cl_COMPILE_PROGRAM_FAILURE : int

Constant ``COMPILE_PROGRAM_FAILURE``.



.. code-block:: ocaml

  val cl_LINKER_NOT_AVAILABLE : int

Constant ``LINKER_NOT_AVAILABLE``.



.. code-block:: ocaml

  val cl_LINK_PROGRAM_FAILURE : int

Constant ``LINK_PROGRAM_FAILURE``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_FAILED : int

Constant ``DEVICE_PARTITION_FAILED``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_INFO_NOT_AVAILABLE : int

Constant ``KERNEL_ARG_INFO_NOT_AVAILABLE``.



.. code-block:: ocaml

  val cl_INVALID_VALUE : int

Constant ``INVALID_VALUE``.



.. code-block:: ocaml

  val cl_INVALID_DEVICE_TYPE : int

Constant ``INVALID_DEVICE_TYPE``.



.. code-block:: ocaml

  val cl_INVALID_PLATFORM : int

Constant ``INVALID_PLATFORM``.



.. code-block:: ocaml

  val cl_INVALID_DEVICE : int

Constant ``INVALID_DEVICE``.



.. code-block:: ocaml

  val cl_INVALID_CONTEXT : int

Constant ``INVALID_CONTEXT``.



.. code-block:: ocaml

  val cl_INVALID_QUEUE_PROPERTIES : int

Constant ``INVALID_QUEUE_PROPERTIES``.



.. code-block:: ocaml

  val cl_INVALID_COMMAND_QUEUE : int

Constant ``INVALID_COMMAND_QUEUE``.



.. code-block:: ocaml

  val cl_INVALID_HOST_PTR : int

Constant ``INVALID_HOST_PTR``.



.. code-block:: ocaml

  val cl_INVALID_MEM_OBJECT : int

Constant ``INVALID_MEM_OBJECT``.



.. code-block:: ocaml

  val cl_INVALID_IMAGE_FORMAT_DESCRIPTOR : int

Constant ``INVALID_IMAGE_FORMAT_DESCRIPTOR``.



.. code-block:: ocaml

  val cl_INVALID_IMAGE_SIZE : int

Constant ``INVALID_IMAGE_SIZE``.



.. code-block:: ocaml

  val cl_INVALID_SAMPLER : int

Constant ``INVALID_SAMPLER``.



.. code-block:: ocaml

  val cl_INVALID_BINARY : int

Constant ``INVALID_BINARY``.



.. code-block:: ocaml

  val cl_INVALID_BUILD_OPTIONS : int

Constant ``INVALID_BUILD_OPTIONS``.



.. code-block:: ocaml

  val cl_INVALID_PROGRAM : int

Constant ``INVALID_PROGRAM``.



.. code-block:: ocaml

  val cl_INVALID_PROGRAM_EXECUTABLE : int

Constant ``INVALID_PROGRAM_EXECUTABLE``.



.. code-block:: ocaml

  val cl_INVALID_KERNEL_NAME : int

Constant ``INVALID_KERNEL_NAME``.



.. code-block:: ocaml

  val cl_INVALID_KERNEL_DEFINITION : int

Constant ``INVALID_KERNEL_DEFINITION``.



.. code-block:: ocaml

  val cl_INVALID_KERNEL : int

Constant ``INVALID_KERNEL``.



.. code-block:: ocaml

  val cl_INVALID_ARG_INDEX : int

Constant ``INVALID_ARG_INDEX``.



.. code-block:: ocaml

  val cl_INVALID_ARG_VALUE : int

Constant ``INVALID_ARG_VALUE``.



.. code-block:: ocaml

  val cl_INVALID_ARG_SIZE : int

Constant ``INVALID_ARG_SIZE``.



.. code-block:: ocaml

  val cl_INVALID_KERNEL_ARGS : int

Constant ``INVALID_KERNEL_ARGS``.



.. code-block:: ocaml

  val cl_INVALID_WORK_DIMENSION : int

Constant ``INVALID_WORK_DIMENSION``.



.. code-block:: ocaml

  val cl_INVALID_WORK_GROUP_SIZE : int

Constant ``INVALID_WORK_GROUP_SIZE``.



.. code-block:: ocaml

  val cl_INVALID_WORK_ITEM_SIZE : int

Constant ``INVALID_WORK_ITEM_SIZE``.



.. code-block:: ocaml

  val cl_INVALID_GLOBAL_OFFSET : int

Constant ``INVALID_GLOBAL_OFFSET``.



.. code-block:: ocaml

  val cl_INVALID_EVENT_WAIT_LIST : int

Constant ``INVALID_EVENT_WAIT_LIST``.



.. code-block:: ocaml

  val cl_INVALID_EVENT : int

Constant ``INVALID_EVENT``.



.. code-block:: ocaml

  val cl_INVALID_OPERATION : int

Constant ``INVALID_OPERATION``.



.. code-block:: ocaml

  val cl_INVALID_GL_OBJECT : int

Constant ``INVALID_GL_OBJECT``.



.. code-block:: ocaml

  val cl_INVALID_BUFFER_SIZE : int

Constant ``INVALID_BUFFER_SIZE``.



.. code-block:: ocaml

  val cl_INVALID_MIP_LEVEL : int

Constant ``INVALID_MIP_LEVEL``.



.. code-block:: ocaml

  val cl_INVALID_GLOBAL_WORK_SIZE : int

Constant ``INVALID_GLOBAL_WORK_SIZE``.



.. code-block:: ocaml

  val cl_INVALID_PROPERTY : int

Constant ``INVALID_PROPERTY``.



.. code-block:: ocaml

  val cl_INVALID_IMAGE_DESCRIPTOR : int

Constant ``INVALID_IMAGE_DESCRIPTOR``.



.. code-block:: ocaml

  val cl_INVALID_COMPILER_OPTIONS : int

Constant ``INVALID_COMPILER_OPTIONS``.



.. code-block:: ocaml

  val cl_INVALID_LINKER_OPTIONS : int

Constant ``INVALID_LINKER_OPTIONS``.



.. code-block:: ocaml

  val cl_INVALID_DEVICE_PARTITION_COUNT : int

Constant ``INVALID_DEVICE_PARTITION_COUNT``.



.. code-block:: ocaml

  val cl_VERSION_1_0 : int

Constant ``VERSION_1_0``.



.. code-block:: ocaml

  val cl_VERSION_1_1 : int

Constant ``VERSION_1_1``.



.. code-block:: ocaml

  val cl_VERSION_1_2 : int

Constant ``VERSION_1_2``.



.. code-block:: ocaml

  val cl_FALSE : int

Constant ``FALSE``.



.. code-block:: ocaml

  val cl_TRUE : int

Constant ``TRUE``.



.. code-block:: ocaml

  val cl_BLOCKING : int

Constant ``BLOCKING``.



.. code-block:: ocaml

  val cl_NON_BLOCKING : int

Constant ``NON_BLOCKING``.



.. code-block:: ocaml

  val cl_PLATFORM_PROFILE : int

Constant ``PLATFORM_PROFILE``.



.. code-block:: ocaml

  val cl_PLATFORM_VERSION : int

Constant ``PLATFORM_VERSION``.



.. code-block:: ocaml

  val cl_PLATFORM_NAME : int

Constant ``PLATFORM_NAME``.



.. code-block:: ocaml

  val cl_PLATFORM_VENDOR : int

Constant ``PLATFORM_VENDOR``.



.. code-block:: ocaml

  val cl_PLATFORM_EXTENSIONS : int

Constant ``PLATFORM_EXTENSIONS``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_DEFAULT : int

Constant ``DEVICE_TYPE_DEFAULT``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_CPU : int

Constant ``DEVICE_TYPE_CPU``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_GPU : int

Constant ``DEVICE_TYPE_GPU``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_ACCELERATOR : int

Constant ``DEVICE_TYPE_ACCELERATOR``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_CUSTOM : int

Constant ``DEVICE_TYPE_CUSTOM``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE_ALL : int

Constant ``DEVICE_TYPE_ALL``.



.. code-block:: ocaml

  val cl_DEVICE_TYPE : int

Constant ``DEVICE_TYPE``.



.. code-block:: ocaml

  val cl_DEVICE_VENDOR_ID : int

Constant ``DEVICE_VENDOR_ID``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_COMPUTE_UNITS : int

Constant ``DEVICE_MAX_COMPUTE_UNITS``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_WORK_ITEM_DIMENSIONS : int

Constant ``DEVICE_MAX_WORK_ITEM_DIMENSIONS``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_WORK_GROUP_SIZE : int

Constant ``DEVICE_MAX_WORK_GROUP_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_WORK_ITEM_SIZES : int

Constant ``DEVICE_MAX_WORK_ITEM_SIZES``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_CHAR``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_SHORT``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_INT : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_INT``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_LONG : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_LONG``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_CLOCK_FREQUENCY : int

Constant ``DEVICE_MAX_CLOCK_FREQUENCY``.



.. code-block:: ocaml

  val cl_DEVICE_ADDRESS_BITS : int

Constant ``DEVICE_ADDRESS_BITS``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_READ_IMAGE_ARGS : int

Constant ``DEVICE_MAX_READ_IMAGE_ARGS``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_WRITE_IMAGE_ARGS : int

Constant ``DEVICE_MAX_WRITE_IMAGE_ARGS``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_MEM_ALLOC_SIZE : int

Constant ``DEVICE_MAX_MEM_ALLOC_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE2D_MAX_WIDTH : int

Constant ``DEVICE_IMAGE2D_MAX_WIDTH``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE2D_MAX_HEIGHT : int

Constant ``DEVICE_IMAGE2D_MAX_HEIGHT``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE3D_MAX_WIDTH : int

Constant ``DEVICE_IMAGE3D_MAX_WIDTH``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE3D_MAX_HEIGHT : int

Constant ``DEVICE_IMAGE3D_MAX_HEIGHT``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE3D_MAX_DEPTH : int

Constant ``DEVICE_IMAGE3D_MAX_DEPTH``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_SUPPORT : int

Constant ``DEVICE_IMAGE_SUPPORT``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_PARAMETER_SIZE : int

Constant ``DEVICE_MAX_PARAMETER_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_SAMPLERS : int

Constant ``DEVICE_MAX_SAMPLERS``.



.. code-block:: ocaml

  val cl_DEVICE_MEM_BASE_ADDR_ALIGN : int

Constant ``DEVICE_MEM_BASE_ADDR_ALIGN``.



.. code-block:: ocaml

  val cl_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE : int

Constant ``DEVICE_MIN_DATA_TYPE_ALIGN_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_SINGLE_FP_CONFIG : int

Constant ``DEVICE_SINGLE_FP_CONFIG``.



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_CACHE_TYPE : int

Constant ``DEVICE_GLOBAL_MEM_CACHE_TYPE``.



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_CACHELINE_SIZE : int

Constant ``DEVICE_GLOBAL_MEM_CACHELINE_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_CACHE_SIZE : int

Constant ``DEVICE_GLOBAL_MEM_CACHE_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_GLOBAL_MEM_SIZE : int

Constant ``DEVICE_GLOBAL_MEM_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_CONSTANT_BUFFER_SIZE : int

Constant ``DEVICE_MAX_CONSTANT_BUFFER_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_MAX_CONSTANT_ARGS : int

Constant ``DEVICE_MAX_CONSTANT_ARGS``.



.. code-block:: ocaml

  val cl_DEVICE_LOCAL_MEM_TYPE : int

Constant ``DEVICE_LOCAL_MEM_TYPE``.



.. code-block:: ocaml

  val cl_DEVICE_LOCAL_MEM_SIZE : int

Constant ``DEVICE_LOCAL_MEM_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_ERROR_CORRECTION_SUPPORT : int

Constant ``DEVICE_ERROR_CORRECTION_SUPPORT``.



.. code-block:: ocaml

  val cl_DEVICE_PROFILING_TIMER_RESOLUTION : int

Constant ``DEVICE_PROFILING_TIMER_RESOLUTION``.



.. code-block:: ocaml

  val cl_DEVICE_ENDIAN_LITTLE : int

Constant ``DEVICE_ENDIAN_LITTLE``.



.. code-block:: ocaml

  val cl_DEVICE_AVAILABLE : int

Constant ``DEVICE_AVAILABLE``.



.. code-block:: ocaml

  val cl_DEVICE_COMPILER_AVAILABLE : int

Constant ``DEVICE_COMPILER_AVAILABLE``.



.. code-block:: ocaml

  val cl_DEVICE_EXECUTION_CAPABILITIES : int

Constant ``DEVICE_EXECUTION_CAPABILITIES``.



.. code-block:: ocaml

  val cl_DEVICE_QUEUE_PROPERTIES : int

Constant ``DEVICE_QUEUE_PROPERTIES``.



.. code-block:: ocaml

  val cl_DEVICE_NAME : int

Constant ``DEVICE_NAME``.



.. code-block:: ocaml

  val cl_DEVICE_VENDOR : int

Constant ``DEVICE_VENDOR``.



.. code-block:: ocaml

  val cl_DRIVER_VERSION : int

Constant ``DRIVER_VERSION``.



.. code-block:: ocaml

  val cl_DEVICE_PROFILE : int

Constant ``DEVICE_PROFILE``.



.. code-block:: ocaml

  val cl_DEVICE_VERSION : int

Constant ``DEVICE_VERSION``.



.. code-block:: ocaml

  val cl_DEVICE_EXTENSIONS : int

Constant ``DEVICE_EXTENSIONS``.



.. code-block:: ocaml

  val cl_DEVICE_PLATFORM : int

Constant ``DEVICE_PLATFORM``.



.. code-block:: ocaml

  val cl_DEVICE_DOUBLE_FP_CONFIG : int

Constant ``DEVICE_DOUBLE_FP_CONFIG``.



.. code-block:: ocaml

  val cl_DEVICE_HALF_FP_CONFIG : int

Constant ``DEVICE_HALF_FP_CONFIG``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_VECTOR_WIDTH_HALF : int

Constant ``DEVICE_PREFERRED_VECTOR_WIDTH_HALF``.



.. code-block:: ocaml

  val cl_DEVICE_HOST_UNIFIED_MEMORY : int

Constant ``DEVICE_HOST_UNIFIED_MEMORY``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_CHAR : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_CHAR``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_SHORT : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_SHORT``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_INT : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_INT``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_LONG : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_LONG``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_FLOAT``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE``.



.. code-block:: ocaml

  val cl_DEVICE_NATIVE_VECTOR_WIDTH_HALF : int

Constant ``DEVICE_NATIVE_VECTOR_WIDTH_HALF``.



.. code-block:: ocaml

  val cl_DEVICE_OPENCL_C_VERSION : int

Constant ``DEVICE_OPENCL_C_VERSION``.



.. code-block:: ocaml

  val cl_DEVICE_LINKER_AVAILABLE : int

Constant ``DEVICE_LINKER_AVAILABLE``.



.. code-block:: ocaml

  val cl_DEVICE_BUILT_IN_KERNELS : int

Constant ``DEVICE_BUILT_IN_KERNELS``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_MAX_BUFFER_SIZE : int

Constant ``DEVICE_IMAGE_MAX_BUFFER_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_MAX_ARRAY_SIZE : int

Constant ``DEVICE_IMAGE_MAX_ARRAY_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_PARENT_DEVICE : int

Constant ``DEVICE_PARENT_DEVICE``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_MAX_SUB_DEVICES : int

Constant ``DEVICE_PARTITION_MAX_SUB_DEVICES``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_PROPERTIES : int

Constant ``DEVICE_PARTITION_PROPERTIES``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_AFFINITY_DOMAIN : int

Constant ``DEVICE_PARTITION_AFFINITY_DOMAIN``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_TYPE : int

Constant ``DEVICE_PARTITION_TYPE``.



.. code-block:: ocaml

  val cl_DEVICE_REFERENCE_COUNT : int

Constant ``DEVICE_REFERENCE_COUNT``.



.. code-block:: ocaml

  val cl_DEVICE_PREFERRED_INTEROP_USER_SYNC : int

Constant ``DEVICE_PREFERRED_INTEROP_USER_SYNC``.



.. code-block:: ocaml

  val cl_DEVICE_PRINTF_BUFFER_SIZE : int

Constant ``DEVICE_PRINTF_BUFFER_SIZE``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_PITCH_ALIGNMENT : int

Constant ``DEVICE_IMAGE_PITCH_ALIGNMENT``.



.. code-block:: ocaml

  val cl_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT : int

Constant ``DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT``.



.. code-block:: ocaml

  val cl_FP_DENORM : int

Constant ``FP_DENORM``.



.. code-block:: ocaml

  val cl_FP_INF_NAN : int

Constant ``FP_INF_NAN``.



.. code-block:: ocaml

  val cl_FP_ROUND_TO_NEAREST : int

Constant ``FP_ROUND_TO_NEAREST``.



.. code-block:: ocaml

  val cl_FP_ROUND_TO_ZERO : int

Constant ``FP_ROUND_TO_ZERO``.



.. code-block:: ocaml

  val cl_FP_ROUND_TO_INF : int

Constant ``FP_ROUND_TO_INF``.



.. code-block:: ocaml

  val cl_FP_FMA : int

Constant ``FP_FMA``.



.. code-block:: ocaml

  val cl_FP_SOFT_FLOAT : int

Constant ``FP_SOFT_FLOAT``.



.. code-block:: ocaml

  val cl_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT : int

Constant ``FP_CORRECTLY_ROUNDED_DIVIDE_SQRT``.



.. code-block:: ocaml

  val cl_NONE : int

Constant ``NONE``.



.. code-block:: ocaml

  val cl_READ_ONLY_CACHE : int

Constant ``READ_ONLY_CACHE``.



.. code-block:: ocaml

  val cl_READ_WRITE_CACHE : int

Constant ``READ_WRITE_CACHE``.



.. code-block:: ocaml

  val cl_LOCAL : int

Constant ``LOCAL``.



.. code-block:: ocaml

  val cl_GLOBAL : int

Constant ``GLOBAL``.



.. code-block:: ocaml

  val cl_EXEC_KERNEL : int

Constant ``EXEC_KERNEL``.



.. code-block:: ocaml

  val cl_EXEC_NATIVE_KERNEL : int

Constant ``EXEC_NATIVE_KERNEL``.



.. code-block:: ocaml

  val cl_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE : int

Constant ``QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE``.



.. code-block:: ocaml

  val cl_QUEUE_PROFILING_ENABLE : int

Constant ``QUEUE_PROFILING_ENABLE``.



.. code-block:: ocaml

  val cl_CONTEXT_REFERENCE_COUNT : int

Constant ``CONTEXT_REFERENCE_COUNT``.



.. code-block:: ocaml

  val cl_CONTEXT_DEVICES : int

Constant ``CONTEXT_DEVICES``.



.. code-block:: ocaml

  val cl_CONTEXT_PROPERTIES : int

Constant ``CONTEXT_PROPERTIES``.



.. code-block:: ocaml

  val cl_CONTEXT_NUM_DEVICES : int

Constant ``CONTEXT_NUM_DEVICES``.



.. code-block:: ocaml

  val cl_CONTEXT_PLATFORM : int

Constant ``CONTEXT_PLATFORM``.



.. code-block:: ocaml

  val cl_CONTEXT_INTEROP_USER_SYNC : int

Constant ``CONTEXT_INTEROP_USER_SYNC``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_EQUALLY : int

Constant ``DEVICE_PARTITION_EQUALLY``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_BY_COUNTS : int

Constant ``DEVICE_PARTITION_BY_COUNTS``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_BY_COUNTS_LIST_END : int

Constant ``DEVICE_PARTITION_BY_COUNTS_LIST_END``.



.. code-block:: ocaml

  val cl_DEVICE_PARTITION_BY_AFFINITY_DOMAIN : int

Constant ``DEVICE_PARTITION_BY_AFFINITY_DOMAIN``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_NUMA : int

Constant ``DEVICE_AFFINITY_DOMAIN_NUMA``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L4_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L4_CACHE``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L3_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L3_CACHE``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L2_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L2_CACHE``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_L1_CACHE : int

Constant ``DEVICE_AFFINITY_DOMAIN_L1_CACHE``.



.. code-block:: ocaml

  val cl_DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE : int

Constant ``DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE``.



.. code-block:: ocaml

  val cl_QUEUE_CONTEXT : int

Constant ``QUEUE_CONTEXT``.



.. code-block:: ocaml

  val cl_QUEUE_DEVICE : int

Constant ``QUEUE_DEVICE``.



.. code-block:: ocaml

  val cl_QUEUE_REFERENCE_COUNT : int

Constant ``QUEUE_REFERENCE_COUNT``.



.. code-block:: ocaml

  val cl_QUEUE_PROPERTIES : int

Constant ``QUEUE_PROPERTIES``.



.. code-block:: ocaml

  val cl_MEM_READ_WRITE : int

Constant ``MEM_READ_WRITE``.



.. code-block:: ocaml

  val cl_MEM_WRITE_ONLY : int

Constant ``MEM_WRITE_ONLY``.



.. code-block:: ocaml

  val cl_MEM_READ_ONLY : int

Constant ``MEM_READ_ONLY``.



.. code-block:: ocaml

  val cl_MEM_USE_HOST_PTR : int

Constant ``MEM_USE_HOST_PTR``.



.. code-block:: ocaml

  val cl_MEM_ALLOC_HOST_PTR : int

Constant ``MEM_ALLOC_HOST_PTR``.



.. code-block:: ocaml

  val cl_MEM_COPY_HOST_PTR : int

Constant ``MEM_COPY_HOST_PTR``.



.. code-block:: ocaml

  val cl_MEM_HOST_WRITE_ONLY : int

Constant ``MEM_HOST_WRITE_ONLY``.



.. code-block:: ocaml

  val cl_MEM_HOST_READ_ONLY : int

Constant ``MEM_HOST_READ_ONLY``.



.. code-block:: ocaml

  val cl_MEM_HOST_NO_ACCESS : int

Constant ``MEM_HOST_NO_ACCESS``.



.. code-block:: ocaml

  val cl_MIGRATE_MEM_OBJECT_HOST : int

Constant ``MIGRATE_MEM_OBJECT_HOST``.



.. code-block:: ocaml

  val cl_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED : int

Constant ``MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED``.



.. code-block:: ocaml

  val cl_R : int

Constant ``R``.



.. code-block:: ocaml

  val cl_A : int

Constant ``A``.



.. code-block:: ocaml

  val cl_RG : int

Constant ``RG``.



.. code-block:: ocaml

  val cl_RA : int

Constant ``RA``.



.. code-block:: ocaml

  val cl_RGB : int

Constant ``RGB``.



.. code-block:: ocaml

  val cl_RGBA : int

Constant ``RGBA``.



.. code-block:: ocaml

  val cl_BGRA : int

Constant ``BGRA``.



.. code-block:: ocaml

  val cl_ARGB : int

Constant ``ARGB``.



.. code-block:: ocaml

  val cl_INTENSITY : int

Constant ``INTENSITY``.



.. code-block:: ocaml

  val cl_LUMINANCE : int

Constant ``LUMINANCE``.



.. code-block:: ocaml

  val cl_Rx : int

Constant ``Rx``.



.. code-block:: ocaml

  val cl_RGx : int

Constant ``RGx``.



.. code-block:: ocaml

  val cl_RGBx : int

Constant ``RGBx``.



.. code-block:: ocaml

  val cl_DEPTH : int

Constant ``DEPTH``.



.. code-block:: ocaml

  val cl_DEPTH_STENCIL : int

Constant ``DEPTH_STENCIL``.



.. code-block:: ocaml

  val cl_SNORM_INT8 : int

Constant ``SNORM_INT8``.



.. code-block:: ocaml

  val cl_SNORM_INT16 : int

Constant ``SNORM_INT16``.



.. code-block:: ocaml

  val cl_UNORM_INT8 : int

Constant ``UNORM_INT8``.



.. code-block:: ocaml

  val cl_UNORM_INT16 : int

Constant ``UNORM_INT16``.



.. code-block:: ocaml

  val cl_UNORM_SHORT_565 : int

Constant ``UNORM_SHORT_565``.



.. code-block:: ocaml

  val cl_UNORM_SHORT_555 : int

Constant ``UNORM_SHORT_555``.



.. code-block:: ocaml

  val cl_UNORM_INT_101010 : int

Constant ``UNORM_INT_101010``.



.. code-block:: ocaml

  val cl_SIGNED_INT8 : int

Constant ``SIGNED_INT8``.



.. code-block:: ocaml

  val cl_SIGNED_INT16 : int

Constant ``SIGNED_INT16``.



.. code-block:: ocaml

  val cl_SIGNED_INT32 : int

Constant ``SIGNED_INT32``.



.. code-block:: ocaml

  val cl_UNSIGNED_INT8 : int

Constant ``UNSIGNED_INT8``.



.. code-block:: ocaml

  val cl_UNSIGNED_INT16 : int

Constant ``UNSIGNED_INT16``.



.. code-block:: ocaml

  val cl_UNSIGNED_INT32 : int

Constant ``UNSIGNED_INT32``.



.. code-block:: ocaml

  val cl_HALF_FLOAT : int

Constant ``HALF_FLOAT``.



.. code-block:: ocaml

  val cl_FLOAT : int

Constant ``FLOAT``.



.. code-block:: ocaml

  val cl_UNORM_INT24 : int

Constant ``UNORM_INT24``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_BUFFER : int

Constant ``MEM_OBJECT_BUFFER``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE2D : int

Constant ``MEM_OBJECT_IMAGE2D``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE3D : int

Constant ``MEM_OBJECT_IMAGE3D``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE2D_ARRAY : int

Constant ``MEM_OBJECT_IMAGE2D_ARRAY``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE1D : int

Constant ``MEM_OBJECT_IMAGE1D``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE1D_ARRAY : int

Constant ``MEM_OBJECT_IMAGE1D_ARRAY``.



.. code-block:: ocaml

  val cl_MEM_OBJECT_IMAGE1D_BUFFER : int

Constant ``MEM_OBJECT_IMAGE1D_BUFFER``.



.. code-block:: ocaml

  val cl_MEM_TYPE : int

Constant ``MEM_TYPE``.



.. code-block:: ocaml

  val cl_MEM_FLAGS : int

Constant ``MEM_FLAGS``.



.. code-block:: ocaml

  val cl_MEM_SIZE : int

Constant ``MEM_SIZE``.



.. code-block:: ocaml

  val cl_MEM_HOST_PTR : int

Constant ``MEM_HOST_PTR``.



.. code-block:: ocaml

  val cl_MEM_MAP_COUNT : int

Constant ``MEM_MAP_COUNT``.



.. code-block:: ocaml

  val cl_MEM_REFERENCE_COUNT : int

Constant ``MEM_REFERENCE_COUNT``.



.. code-block:: ocaml

  val cl_MEM_CONTEXT : int

Constant ``MEM_CONTEXT``.



.. code-block:: ocaml

  val cl_MEM_ASSOCIATED_MEMOBJECT : int

Constant ``MEM_ASSOCIATED_MEMOBJECT``.



.. code-block:: ocaml

  val cl_MEM_OFFSET : int

Constant ``MEM_OFFSET``.



.. code-block:: ocaml

  val cl_IMAGE_FORMAT : int

Constant ``IMAGE_FORMAT``.



.. code-block:: ocaml

  val cl_IMAGE_ELEMENT_SIZE : int

Constant ``IMAGE_ELEMENT_SIZE``.



.. code-block:: ocaml

  val cl_IMAGE_ROW_PITCH : int

Constant ``IMAGE_ROW_PITCH``.



.. code-block:: ocaml

  val cl_IMAGE_SLICE_PITCH : int

Constant ``IMAGE_SLICE_PITCH``.



.. code-block:: ocaml

  val cl_IMAGE_WIDTH : int

Constant ``IMAGE_WIDTH``.



.. code-block:: ocaml

  val cl_IMAGE_HEIGHT : int

Constant ``IMAGE_HEIGHT``.



.. code-block:: ocaml

  val cl_IMAGE_DEPTH : int

Constant ``IMAGE_DEPTH``.



.. code-block:: ocaml

  val cl_IMAGE_ARRAY_SIZE : int

Constant ``IMAGE_ARRAY_SIZE``.



.. code-block:: ocaml

  val cl_IMAGE_BUFFER : int

Constant ``IMAGE_BUFFER``.



.. code-block:: ocaml

  val cl_IMAGE_NUM_MIP_LEVELS : int

Constant ``IMAGE_NUM_MIP_LEVELS``.



.. code-block:: ocaml

  val cl_IMAGE_NUM_SAMPLES : int

Constant ``IMAGE_NUM_SAMPLES``.



.. code-block:: ocaml

  val cl_ADDRESS_NONE : int

Constant ``ADDRESS_NONE``.



.. code-block:: ocaml

  val cl_ADDRESS_CLAMP_TO_EDGE : int

Constant ``ADDRESS_CLAMP_TO_EDGE``.



.. code-block:: ocaml

  val cl_ADDRESS_CLAMP : int

Constant ``ADDRESS_CLAMP``.



.. code-block:: ocaml

  val cl_ADDRESS_REPEAT : int

Constant ``ADDRESS_REPEAT``.



.. code-block:: ocaml

  val cl_ADDRESS_MIRRORED_REPEAT : int

Constant ``ADDRESS_MIRRORED_REPEAT``.



.. code-block:: ocaml

  val cl_FILTER_NEAREST : int

Constant ``FILTER_NEAREST``.



.. code-block:: ocaml

  val cl_FILTER_LINEAR : int

Constant ``FILTER_LINEAR``.



.. code-block:: ocaml

  val cl_SAMPLER_REFERENCE_COUNT : int

Constant ``SAMPLER_REFERENCE_COUNT``.



.. code-block:: ocaml

  val cl_SAMPLER_CONTEXT : int

Constant ``SAMPLER_CONTEXT``.



.. code-block:: ocaml

  val cl_SAMPLER_NORMALIZED_COORDS : int

Constant ``SAMPLER_NORMALIZED_COORDS``.



.. code-block:: ocaml

  val cl_SAMPLER_ADDRESSING_MODE : int

Constant ``SAMPLER_ADDRESSING_MODE``.



.. code-block:: ocaml

  val cl_SAMPLER_FILTER_MODE : int

Constant ``SAMPLER_FILTER_MODE``.



.. code-block:: ocaml

  val cl_MAP_READ : int

Constant ``MAP_READ``.



.. code-block:: ocaml

  val cl_MAP_WRITE : int

Constant ``MAP_WRITE``.



.. code-block:: ocaml

  val cl_MAP_WRITE_INVALIDATE_REGION : int

Constant ``MAP_WRITE_INVALIDATE_REGION``.



.. code-block:: ocaml

  val cl_PROGRAM_REFERENCE_COUNT : int

Constant ``PROGRAM_REFERENCE_COUNT``.



.. code-block:: ocaml

  val cl_PROGRAM_CONTEXT : int

Constant ``PROGRAM_CONTEXT``.



.. code-block:: ocaml

  val cl_PROGRAM_NUM_DEVICES : int

Constant ``PROGRAM_NUM_DEVICES``.



.. code-block:: ocaml

  val cl_PROGRAM_DEVICES : int

Constant ``PROGRAM_DEVICES``.



.. code-block:: ocaml

  val cl_PROGRAM_SOURCE : int

Constant ``PROGRAM_SOURCE``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_SIZES : int

Constant ``PROGRAM_BINARY_SIZES``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARIES : int

Constant ``PROGRAM_BINARIES``.



.. code-block:: ocaml

  val cl_PROGRAM_NUM_KERNELS : int

Constant ``PROGRAM_NUM_KERNELS``.



.. code-block:: ocaml

  val cl_PROGRAM_KERNEL_NAMES : int

Constant ``PROGRAM_KERNEL_NAMES``.



.. code-block:: ocaml

  val cl_PROGRAM_BUILD_STATUS : int

Constant ``PROGRAM_BUILD_STATUS``.



.. code-block:: ocaml

  val cl_PROGRAM_BUILD_OPTIONS : int

Constant ``PROGRAM_BUILD_OPTIONS``.



.. code-block:: ocaml

  val cl_PROGRAM_BUILD_LOG : int

Constant ``PROGRAM_BUILD_LOG``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE : int

Constant ``PROGRAM_BINARY_TYPE``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_NONE : int

Constant ``PROGRAM_BINARY_TYPE_NONE``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_COMPILED_OBJECT : int

Constant ``PROGRAM_BINARY_TYPE_COMPILED_OBJECT``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_LIBRARY : int

Constant ``PROGRAM_BINARY_TYPE_LIBRARY``.



.. code-block:: ocaml

  val cl_PROGRAM_BINARY_TYPE_EXECUTABLE : int

Constant ``PROGRAM_BINARY_TYPE_EXECUTABLE``.



.. code-block:: ocaml

  val cl_BUILD_SUCCESS : int

Constant ``BUILD_SUCCESS``.



.. code-block:: ocaml

  val cl_BUILD_NONE : int

Constant ``BUILD_NONE``.



.. code-block:: ocaml

  val cl_BUILD_ERROR : int

Constant ``BUILD_ERROR``.



.. code-block:: ocaml

  val cl_BUILD_IN_PROGRESS : int

Constant ``BUILD_IN_PROGRESS``.



.. code-block:: ocaml

  val cl_KERNEL_FUNCTION_NAME : int

Constant ``KERNEL_FUNCTION_NAME``.



.. code-block:: ocaml

  val cl_KERNEL_NUM_ARGS : int

Constant ``KERNEL_NUM_ARGS``.



.. code-block:: ocaml

  val cl_KERNEL_REFERENCE_COUNT : int

Constant ``KERNEL_REFERENCE_COUNT``.



.. code-block:: ocaml

  val cl_KERNEL_CONTEXT : int

Constant ``KERNEL_CONTEXT``.



.. code-block:: ocaml

  val cl_KERNEL_PROGRAM : int

Constant ``KERNEL_PROGRAM``.



.. code-block:: ocaml

  val cl_KERNEL_ATTRIBUTES : int

Constant ``KERNEL_ATTRIBUTES``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_QUALIFIER : int

Constant ``KERNEL_ARG_ADDRESS_QUALIFIER``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_QUALIFIER : int

Constant ``KERNEL_ARG_ACCESS_QUALIFIER``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_NAME : int

Constant ``KERNEL_ARG_TYPE_NAME``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_QUALIFIER : int

Constant ``KERNEL_ARG_TYPE_QUALIFIER``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_NAME : int

Constant ``KERNEL_ARG_NAME``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_GLOBAL : int

Constant ``KERNEL_ARG_ADDRESS_GLOBAL``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_LOCAL : int

Constant ``KERNEL_ARG_ADDRESS_LOCAL``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_CONSTANT : int

Constant ``KERNEL_ARG_ADDRESS_CONSTANT``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ADDRESS_PRIVATE : int

Constant ``KERNEL_ARG_ADDRESS_PRIVATE``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_READ_ONLY : int

Constant ``KERNEL_ARG_ACCESS_READ_ONLY``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_WRITE_ONLY : int

Constant ``KERNEL_ARG_ACCESS_WRITE_ONLY``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_READ_WRITE : int

Constant ``KERNEL_ARG_ACCESS_READ_WRITE``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_ACCESS_NONE : int

Constant ``KERNEL_ARG_ACCESS_NONE``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_NONE : int

Constant ``KERNEL_ARG_TYPE_NONE``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_CONST : int

Constant ``KERNEL_ARG_TYPE_CONST``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_RESTRICT : int

Constant ``KERNEL_ARG_TYPE_RESTRICT``.



.. code-block:: ocaml

  val cl_KERNEL_ARG_TYPE_VOLATILE : int

Constant ``KERNEL_ARG_TYPE_VOLATILE``.



.. code-block:: ocaml

  val cl_KERNEL_WORK_GROUP_SIZE : int

Constant ``KERNEL_WORK_GROUP_SIZE``.



.. code-block:: ocaml

  val cl_KERNEL_COMPILE_WORK_GROUP_SIZE : int

Constant ``KERNEL_COMPILE_WORK_GROUP_SIZE``.



.. code-block:: ocaml

  val cl_KERNEL_LOCAL_MEM_SIZE : int

Constant ``KERNEL_LOCAL_MEM_SIZE``.



.. code-block:: ocaml

  val cl_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE : int

Constant ``KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE``.



.. code-block:: ocaml

  val cl_KERNEL_PRIVATE_MEM_SIZE : int

Constant ``KERNEL_PRIVATE_MEM_SIZE``.



.. code-block:: ocaml

  val cl_KERNEL_GLOBAL_WORK_SIZE : int

Constant ``KERNEL_GLOBAL_WORK_SIZE``.



.. code-block:: ocaml

  val cl_EVENT_COMMAND_QUEUE : int

Constant ``EVENT_COMMAND_QUEUE``.



.. code-block:: ocaml

  val cl_EVENT_COMMAND_TYPE : int

Constant ``EVENT_COMMAND_TYPE``.



.. code-block:: ocaml

  val cl_EVENT_REFERENCE_COUNT : int

Constant ``EVENT_REFERENCE_COUNT``.



.. code-block:: ocaml

  val cl_EVENT_COMMAND_EXECUTION_STATUS : int

Constant ``EVENT_COMMAND_EXECUTION_STATUS``.



.. code-block:: ocaml

  val cl_EVENT_CONTEXT : int

Constant ``EVENT_CONTEXT``.



.. code-block:: ocaml

  val cl_COMMAND_NDRANGE_KERNEL : int

Constant ``COMMAND_NDRANGE_KERNEL``.



.. code-block:: ocaml

  val cl_COMMAND_TASK : int

Constant ``COMMAND_TASK``.



.. code-block:: ocaml

  val cl_COMMAND_NATIVE_KERNEL : int

Constant ``COMMAND_NATIVE_KERNEL``.



.. code-block:: ocaml

  val cl_COMMAND_READ_BUFFER : int

Constant ``COMMAND_READ_BUFFER``.



.. code-block:: ocaml

  val cl_COMMAND_WRITE_BUFFER : int

Constant ``COMMAND_WRITE_BUFFER``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_BUFFER : int

Constant ``COMMAND_COPY_BUFFER``.



.. code-block:: ocaml

  val cl_COMMAND_READ_IMAGE : int

Constant ``COMMAND_READ_IMAGE``.



.. code-block:: ocaml

  val cl_COMMAND_WRITE_IMAGE : int

Constant ``COMMAND_WRITE_IMAGE``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_IMAGE : int

Constant ``COMMAND_COPY_IMAGE``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_IMAGE_TO_BUFFER : int

Constant ``COMMAND_COPY_IMAGE_TO_BUFFER``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_BUFFER_TO_IMAGE : int

Constant ``COMMAND_COPY_BUFFER_TO_IMAGE``.



.. code-block:: ocaml

  val cl_COMMAND_MAP_BUFFER : int

Constant ``COMMAND_MAP_BUFFER``.



.. code-block:: ocaml

  val cl_COMMAND_MAP_IMAGE : int

Constant ``COMMAND_MAP_IMAGE``.



.. code-block:: ocaml

  val cl_COMMAND_UNMAP_MEM_OBJECT : int

Constant ``COMMAND_UNMAP_MEM_OBJECT``.



.. code-block:: ocaml

  val cl_COMMAND_MARKER : int

Constant ``COMMAND_MARKER``.



.. code-block:: ocaml

  val cl_COMMAND_ACQUIRE_GL_OBJECTS : int

Constant ``COMMAND_ACQUIRE_GL_OBJECTS``.



.. code-block:: ocaml

  val cl_COMMAND_RELEASE_GL_OBJECTS : int

Constant ``COMMAND_RELEASE_GL_OBJECTS``.



.. code-block:: ocaml

  val cl_COMMAND_READ_BUFFER_RECT : int

Constant ``COMMAND_READ_BUFFER_RECT``.



.. code-block:: ocaml

  val cl_COMMAND_WRITE_BUFFER_RECT : int

Constant ``COMMAND_WRITE_BUFFER_RECT``.



.. code-block:: ocaml

  val cl_COMMAND_COPY_BUFFER_RECT : int

Constant ``COMMAND_COPY_BUFFER_RECT``.



.. code-block:: ocaml

  val cl_COMMAND_USER : int

Constant ``COMMAND_USER``.



.. code-block:: ocaml

  val cl_COMMAND_BARRIER : int

Constant ``COMMAND_BARRIER``.



.. code-block:: ocaml

  val cl_COMMAND_MIGRATE_MEM_OBJECTS : int

Constant ``COMMAND_MIGRATE_MEM_OBJECTS``.



.. code-block:: ocaml

  val cl_COMMAND_FILL_BUFFER : int

Constant ``COMMAND_FILL_BUFFER``.



.. code-block:: ocaml

  val cl_COMMAND_FILL_IMAGE : int

Constant ``COMMAND_FILL_IMAGE``.



.. code-block:: ocaml

  val cl_COMPLETE : int

Constant ``COMPLETE``.



.. code-block:: ocaml

  val cl_RUNNING : int

Constant ``RUNNING``.



.. code-block:: ocaml

  val cl_SUBMITTED : int

Constant ``SUBMITTED``.



.. code-block:: ocaml

  val cl_QUEUED : int

Constant ``QUEUED``.



.. code-block:: ocaml

  val cl_BUFFER_CREATE_TYPE_REGION : int

Constant ``BUFFER_CREATE_TYPE_REGION``.



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_QUEUED : int

Constant ``PROFILING_COMMAND_QUEUED``.



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_SUBMIT : int

Constant ``PROFILING_COMMAND_SUBMIT``.



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_START : int

Constant ``PROFILING_COMMAND_START``.



.. code-block:: ocaml

  val cl_PROFILING_COMMAND_END : int

Constant ``PROFILING_COMMAND_END``.



Exception definition
-------------------------------------------------------------------------------



