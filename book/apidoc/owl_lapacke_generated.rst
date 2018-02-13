Low-level LAPACKE API
===============================================================================

This document is auto-generated for Owl's APIs.
#1034 entries have been extracted.
timestamp: 2018-02-13 22:16:19

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/lapacke/owl_lapacke_generated.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/lapacke/owl_lapacke_generated.ml>`_



.. code-block:: ocaml

  val sbdsdc : layout:int -> uplo:char -> compq:char -> n:int -> d:(float ptr) -> e:(float ptr) -> u:(float ptr) -> ldu:int -> vt:(float ptr) -> ldvt:int -> q:(float ptr) -> iq:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4148>`__



.. code-block:: ocaml

  val dbdsdc : layout:int -> uplo:char -> compq:char -> n:int -> d:(float ptr) -> e:(float ptr) -> u:(float ptr) -> ldu:int -> vt:(float ptr) -> ldvt:int -> q:(float ptr) -> iq:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4151>`__



.. code-block:: ocaml

  val sbdsqr : layout:int -> uplo:char -> n:int -> ncvt:int -> nru:int -> ncc:int -> d:(float ptr) -> e:(float ptr) -> vt:(float ptr) -> ldvt:int -> u:(float ptr) -> ldu:int -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4154>`__



.. code-block:: ocaml

  val dbdsqr : layout:int -> uplo:char -> n:int -> ncvt:int -> nru:int -> ncc:int -> d:(float ptr) -> e:(float ptr) -> vt:(float ptr) -> ldvt:int -> u:(float ptr) -> ldu:int -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4157>`__



.. code-block:: ocaml

  val cbdsqr : layout:int -> uplo:char -> n:int -> ncvt:int -> nru:int -> ncc:int -> d:(float ptr) -> e:(float ptr) -> vt:(Complex.t ptr) -> ldvt:int -> u:(Complex.t ptr) -> ldu:int -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4160>`__



.. code-block:: ocaml

  val zbdsqr : layout:int -> uplo:char -> n:int -> ncvt:int -> nru:int -> ncc:int -> d:(float ptr) -> e:(float ptr) -> vt:(Complex.t ptr) -> ldvt:int -> u:(Complex.t ptr) -> ldu:int -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4163>`__



.. code-block:: ocaml

  val sbdsvdx : layout:int -> uplo:char -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> ns:(int32 ptr) -> s:(float ptr) -> z:(float ptr) -> ldz:int -> superb:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4166>`__



.. code-block:: ocaml

  val dbdsvdx : layout:int -> uplo:char -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> ns:(int32 ptr) -> s:(float ptr) -> z:(float ptr) -> ldz:int -> superb:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4169>`__



.. code-block:: ocaml

  val sdisna : job:char -> m:int -> n:int -> d:(float ptr) -> sep:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4172>`__



.. code-block:: ocaml

  val ddisna : job:char -> m:int -> n:int -> d:(float ptr) -> sep:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4175>`__



.. code-block:: ocaml

  val sgbbrd : layout:int -> vect:char -> m:int -> n:int -> ncc:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> d:(float ptr) -> e:(float ptr) -> q:(float ptr) -> ldq:int -> pt:(float ptr) -> ldpt:int -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4178>`__



.. code-block:: ocaml

  val dgbbrd : layout:int -> vect:char -> m:int -> n:int -> ncc:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> d:(float ptr) -> e:(float ptr) -> q:(float ptr) -> ldq:int -> pt:(float ptr) -> ldpt:int -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4181>`__



.. code-block:: ocaml

  val cgbbrd : layout:int -> vect:char -> m:int -> n:int -> ncc:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> d:(float ptr) -> e:(float ptr) -> q:(Complex.t ptr) -> ldq:int -> pt:(Complex.t ptr) -> ldpt:int -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4184>`__



.. code-block:: ocaml

  val zgbbrd : layout:int -> vect:char -> m:int -> n:int -> ncc:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> d:(float ptr) -> e:(float ptr) -> q:(Complex.t ptr) -> ldq:int -> pt:(Complex.t ptr) -> ldpt:int -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4187>`__



.. code-block:: ocaml

  val sgbcon : layout:int -> norm:char -> n:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4190>`__



.. code-block:: ocaml

  val dgbcon : layout:int -> norm:char -> n:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4193>`__



.. code-block:: ocaml

  val cgbcon : layout:int -> norm:char -> n:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4196>`__



.. code-block:: ocaml

  val zgbcon : layout:int -> norm:char -> n:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4199>`__



.. code-block:: ocaml

  val sgbequ : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4202>`__



.. code-block:: ocaml

  val dgbequ : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4205>`__



.. code-block:: ocaml

  val cgbequ : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4208>`__



.. code-block:: ocaml

  val zgbequ : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4211>`__



.. code-block:: ocaml

  val sgbequb : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4214>`__



.. code-block:: ocaml

  val dgbequb : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4217>`__



.. code-block:: ocaml

  val cgbequb : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4220>`__



.. code-block:: ocaml

  val zgbequb : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4223>`__



.. code-block:: ocaml

  val sgbrfs : layout:int -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> afb:(float ptr) -> ldafb:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4226>`__



.. code-block:: ocaml

  val dgbrfs : layout:int -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> afb:(float ptr) -> ldafb:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4229>`__



.. code-block:: ocaml

  val cgbrfs : layout:int -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> afb:(Complex.t ptr) -> ldafb:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4232>`__



.. code-block:: ocaml

  val zgbrfs : layout:int -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> afb:(Complex.t ptr) -> ldafb:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4235>`__



.. code-block:: ocaml

  val sgbsv : layout:int -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4238>`__



.. code-block:: ocaml

  val dgbsv : layout:int -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4241>`__



.. code-block:: ocaml

  val cgbsv : layout:int -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4244>`__



.. code-block:: ocaml

  val zgbsv : layout:int -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4247>`__



.. code-block:: ocaml

  val sgbsvx : layout:int -> fact:char -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> afb:(float ptr) -> ldafb:int -> ipiv:(int32 ptr) -> equed:(char ptr) -> r:(float ptr) -> c:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> rpivot:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4250>`__



.. code-block:: ocaml

  val dgbsvx : layout:int -> fact:char -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> afb:(float ptr) -> ldafb:int -> ipiv:(int32 ptr) -> equed:(char ptr) -> r:(float ptr) -> c:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> rpivot:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4253>`__



.. code-block:: ocaml

  val cgbsvx : layout:int -> fact:char -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> afb:(Complex.t ptr) -> ldafb:int -> ipiv:(int32 ptr) -> equed:(char ptr) -> r:(float ptr) -> c:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> rpivot:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4256>`__



.. code-block:: ocaml

  val zgbsvx : layout:int -> fact:char -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> afb:(Complex.t ptr) -> ldafb:int -> ipiv:(int32 ptr) -> equed:(char ptr) -> r:(float ptr) -> c:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> rpivot:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4259>`__



.. code-block:: ocaml

  val sgbtrf : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4262>`__



.. code-block:: ocaml

  val dgbtrf : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(float ptr) -> ldab:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4265>`__



.. code-block:: ocaml

  val cgbtrf : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4268>`__



.. code-block:: ocaml

  val zgbtrf : layout:int -> m:int -> n:int -> kl:int -> ku:int -> ab:(Complex.t ptr) -> ldab:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4271>`__



.. code-block:: ocaml

  val sgbtrs : layout:int -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4274>`__



.. code-block:: ocaml

  val dgbtrs : layout:int -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4277>`__



.. code-block:: ocaml

  val cgbtrs : layout:int -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4280>`__



.. code-block:: ocaml

  val zgbtrs : layout:int -> trans:char -> n:int -> kl:int -> ku:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4283>`__



.. code-block:: ocaml

  val sgebak : layout:int -> job:char -> side:char -> n:int -> ilo:int -> ihi:int -> scale:(float ptr) -> m:int -> v:(float ptr) -> ldv:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4286>`__



.. code-block:: ocaml

  val dgebak : layout:int -> job:char -> side:char -> n:int -> ilo:int -> ihi:int -> scale:(float ptr) -> m:int -> v:(float ptr) -> ldv:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4289>`__



.. code-block:: ocaml

  val cgebak : layout:int -> job:char -> side:char -> n:int -> ilo:int -> ihi:int -> scale:(float ptr) -> m:int -> v:(Complex.t ptr) -> ldv:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4292>`__



.. code-block:: ocaml

  val zgebak : layout:int -> job:char -> side:char -> n:int -> ilo:int -> ihi:int -> scale:(float ptr) -> m:int -> v:(Complex.t ptr) -> ldv:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4295>`__



.. code-block:: ocaml

  val sgebal : layout:int -> job:char -> n:int -> a:(float ptr) -> lda:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> scale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4298>`__



.. code-block:: ocaml

  val dgebal : layout:int -> job:char -> n:int -> a:(float ptr) -> lda:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> scale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4301>`__



.. code-block:: ocaml

  val cgebal : layout:int -> job:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> scale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4304>`__



.. code-block:: ocaml

  val zgebal : layout:int -> job:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> scale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4307>`__



.. code-block:: ocaml

  val sgebrd : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> d:(float ptr) -> e:(float ptr) -> tauq:(float ptr) -> taup:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4310>`__



.. code-block:: ocaml

  val dgebrd : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> d:(float ptr) -> e:(float ptr) -> tauq:(float ptr) -> taup:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4313>`__



.. code-block:: ocaml

  val cgebrd : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> d:(float ptr) -> e:(float ptr) -> tauq:(Complex.t ptr) -> taup:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4316>`__



.. code-block:: ocaml

  val zgebrd : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> d:(float ptr) -> e:(float ptr) -> tauq:(Complex.t ptr) -> taup:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4319>`__



.. code-block:: ocaml

  val sgecon : layout:int -> norm:char -> n:int -> a:(float ptr) -> lda:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4322>`__



.. code-block:: ocaml

  val dgecon : layout:int -> norm:char -> n:int -> a:(float ptr) -> lda:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4325>`__



.. code-block:: ocaml

  val cgecon : layout:int -> norm:char -> n:int -> a:(Complex.t ptr) -> lda:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4328>`__



.. code-block:: ocaml

  val zgecon : layout:int -> norm:char -> n:int -> a:(Complex.t ptr) -> lda:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4331>`__



.. code-block:: ocaml

  val sgeequ : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4334>`__



.. code-block:: ocaml

  val dgeequ : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4337>`__



.. code-block:: ocaml

  val cgeequ : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4340>`__



.. code-block:: ocaml

  val zgeequ : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4343>`__



.. code-block:: ocaml

  val sgeequb : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4346>`__



.. code-block:: ocaml

  val dgeequb : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4349>`__



.. code-block:: ocaml

  val cgeequb : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4352>`__



.. code-block:: ocaml

  val zgeequb : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> r:(float ptr) -> c:(float ptr) -> rowcnd:(float ptr) -> colcnd:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4355>`__



.. code-block:: ocaml

  val sgees : layout:int -> jobvs:char -> sort:char -> select:(unit ptr) -> n:int -> a:(float ptr) -> lda:int -> sdim:(int32 ptr) -> wr:(float ptr) -> wi:(float ptr) -> vs:(float ptr) -> ldvs:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4358>`__



.. code-block:: ocaml

  val dgees : layout:int -> jobvs:char -> sort:char -> select:(unit ptr) -> n:int -> a:(float ptr) -> lda:int -> sdim:(int32 ptr) -> wr:(float ptr) -> wi:(float ptr) -> vs:(float ptr) -> ldvs:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4361>`__



.. code-block:: ocaml

  val cgees : layout:int -> jobvs:char -> sort:char -> select:(unit ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> sdim:(int32 ptr) -> w:(Complex.t ptr) -> vs:(Complex.t ptr) -> ldvs:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4364>`__



.. code-block:: ocaml

  val zgees : layout:int -> jobvs:char -> sort:char -> select:(unit ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> sdim:(int32 ptr) -> w:(Complex.t ptr) -> vs:(Complex.t ptr) -> ldvs:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4367>`__



.. code-block:: ocaml

  val sgeesx : layout:int -> jobvs:char -> sort:char -> select:(unit ptr) -> sense:char -> n:int -> a:(float ptr) -> lda:int -> sdim:(int32 ptr) -> wr:(float ptr) -> wi:(float ptr) -> vs:(float ptr) -> ldvs:int -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4370>`__



.. code-block:: ocaml

  val dgeesx : layout:int -> jobvs:char -> sort:char -> select:(unit ptr) -> sense:char -> n:int -> a:(float ptr) -> lda:int -> sdim:(int32 ptr) -> wr:(float ptr) -> wi:(float ptr) -> vs:(float ptr) -> ldvs:int -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4373>`__



.. code-block:: ocaml

  val cgeesx : layout:int -> jobvs:char -> sort:char -> select:(unit ptr) -> sense:char -> n:int -> a:(Complex.t ptr) -> lda:int -> sdim:(int32 ptr) -> w:(Complex.t ptr) -> vs:(Complex.t ptr) -> ldvs:int -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4376>`__



.. code-block:: ocaml

  val zgeesx : layout:int -> jobvs:char -> sort:char -> select:(unit ptr) -> sense:char -> n:int -> a:(Complex.t ptr) -> lda:int -> sdim:(int32 ptr) -> w:(Complex.t ptr) -> vs:(Complex.t ptr) -> ldvs:int -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4379>`__



.. code-block:: ocaml

  val sgeev : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(float ptr) -> lda:int -> wr:(float ptr) -> wi:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4382>`__



.. code-block:: ocaml

  val dgeev : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(float ptr) -> lda:int -> wr:(float ptr) -> wi:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4385>`__



.. code-block:: ocaml

  val cgeev : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(Complex.t ptr) -> lda:int -> w:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4388>`__



.. code-block:: ocaml

  val zgeev : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(Complex.t ptr) -> lda:int -> w:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4391>`__



.. code-block:: ocaml

  val sgeevx : layout:int -> balanc:char -> jobvl:char -> jobvr:char -> sense:char -> n:int -> a:(float ptr) -> lda:int -> wr:(float ptr) -> wi:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> scale:(float ptr) -> abnrm:(float ptr) -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4394>`__



.. code-block:: ocaml

  val dgeevx : layout:int -> balanc:char -> jobvl:char -> jobvr:char -> sense:char -> n:int -> a:(float ptr) -> lda:int -> wr:(float ptr) -> wi:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> scale:(float ptr) -> abnrm:(float ptr) -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4397>`__



.. code-block:: ocaml

  val cgeevx : layout:int -> balanc:char -> jobvl:char -> jobvr:char -> sense:char -> n:int -> a:(Complex.t ptr) -> lda:int -> w:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> scale:(float ptr) -> abnrm:(float ptr) -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4400>`__



.. code-block:: ocaml

  val zgeevx : layout:int -> balanc:char -> jobvl:char -> jobvr:char -> sense:char -> n:int -> a:(Complex.t ptr) -> lda:int -> w:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> scale:(float ptr) -> abnrm:(float ptr) -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4403>`__



.. code-block:: ocaml

  val sgehrd : layout:int -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4406>`__



.. code-block:: ocaml

  val dgehrd : layout:int -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4409>`__



.. code-block:: ocaml

  val cgehrd : layout:int -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4412>`__



.. code-block:: ocaml

  val zgehrd : layout:int -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4415>`__



.. code-block:: ocaml

  val sgejsv : layout:int -> joba:char -> jobu:char -> jobv:char -> jobr:char -> jobt:char -> jobp:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> sva:(float ptr) -> u:(float ptr) -> ldu:int -> v:(float ptr) -> ldv:int -> stat:(float ptr) -> istat:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4418>`__



.. code-block:: ocaml

  val dgejsv : layout:int -> joba:char -> jobu:char -> jobv:char -> jobr:char -> jobt:char -> jobp:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> sva:(float ptr) -> u:(float ptr) -> ldu:int -> v:(float ptr) -> ldv:int -> stat:(float ptr) -> istat:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4421>`__



.. code-block:: ocaml

  val cgejsv : layout:int -> joba:char -> jobu:char -> jobv:char -> jobr:char -> jobt:char -> jobp:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> sva:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> v:(Complex.t ptr) -> ldv:int -> stat:(float ptr) -> istat:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4424>`__



.. code-block:: ocaml

  val zgejsv : layout:int -> joba:char -> jobu:char -> jobv:char -> jobr:char -> jobt:char -> jobp:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> sva:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> v:(Complex.t ptr) -> ldv:int -> stat:(float ptr) -> istat:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4427>`__



.. code-block:: ocaml

  val sgelq2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4430>`__



.. code-block:: ocaml

  val dgelq2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4433>`__



.. code-block:: ocaml

  val cgelq2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4436>`__



.. code-block:: ocaml

  val zgelq2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4439>`__



.. code-block:: ocaml

  val sgelqf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4442>`__



.. code-block:: ocaml

  val dgelqf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4445>`__



.. code-block:: ocaml

  val cgelqf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4448>`__



.. code-block:: ocaml

  val zgelqf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4451>`__



.. code-block:: ocaml

  val sgels : layout:int -> trans:char -> m:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4454>`__



.. code-block:: ocaml

  val dgels : layout:int -> trans:char -> m:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4457>`__



.. code-block:: ocaml

  val cgels : layout:int -> trans:char -> m:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4460>`__



.. code-block:: ocaml

  val zgels : layout:int -> trans:char -> m:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4463>`__



.. code-block:: ocaml

  val sgelsd : layout:int -> m:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> s:(float ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4466>`__



.. code-block:: ocaml

  val dgelsd : layout:int -> m:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> s:(float ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4469>`__



.. code-block:: ocaml

  val cgelsd : layout:int -> m:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> s:(float ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4472>`__



.. code-block:: ocaml

  val zgelsd : layout:int -> m:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> s:(float ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4475>`__



.. code-block:: ocaml

  val sgelss : layout:int -> m:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> s:(float ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4478>`__



.. code-block:: ocaml

  val dgelss : layout:int -> m:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> s:(float ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4481>`__



.. code-block:: ocaml

  val cgelss : layout:int -> m:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> s:(float ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4484>`__



.. code-block:: ocaml

  val zgelss : layout:int -> m:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> s:(float ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4487>`__



.. code-block:: ocaml

  val sgelsy : layout:int -> m:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> jpvt:(int32 ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4490>`__



.. code-block:: ocaml

  val dgelsy : layout:int -> m:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> jpvt:(int32 ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4493>`__



.. code-block:: ocaml

  val cgelsy : layout:int -> m:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> jpvt:(int32 ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4496>`__



.. code-block:: ocaml

  val zgelsy : layout:int -> m:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> jpvt:(int32 ptr) -> rcond:float -> rank:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4499>`__



.. code-block:: ocaml

  val sgeqlf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4502>`__



.. code-block:: ocaml

  val dgeqlf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4505>`__



.. code-block:: ocaml

  val cgeqlf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4508>`__



.. code-block:: ocaml

  val zgeqlf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4511>`__



.. code-block:: ocaml

  val sgeqp3 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> jpvt:(int32 ptr) -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4514>`__



.. code-block:: ocaml

  val dgeqp3 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> jpvt:(int32 ptr) -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4517>`__



.. code-block:: ocaml

  val cgeqp3 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> jpvt:(int32 ptr) -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4520>`__



.. code-block:: ocaml

  val zgeqp3 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> jpvt:(int32 ptr) -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4523>`__



.. code-block:: ocaml

  val sgeqr2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4526>`__



.. code-block:: ocaml

  val dgeqr2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4529>`__



.. code-block:: ocaml

  val cgeqr2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4532>`__



.. code-block:: ocaml

  val zgeqr2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4535>`__



.. code-block:: ocaml

  val sgeqrf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4538>`__



.. code-block:: ocaml

  val dgeqrf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4541>`__



.. code-block:: ocaml

  val cgeqrf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4544>`__



.. code-block:: ocaml

  val zgeqrf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4547>`__



.. code-block:: ocaml

  val sgeqrfp : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4550>`__



.. code-block:: ocaml

  val dgeqrfp : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4553>`__



.. code-block:: ocaml

  val cgeqrfp : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4556>`__



.. code-block:: ocaml

  val zgeqrfp : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4559>`__



.. code-block:: ocaml

  val sgerfs : layout:int -> trans:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4562>`__



.. code-block:: ocaml

  val dgerfs : layout:int -> trans:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4565>`__



.. code-block:: ocaml

  val cgerfs : layout:int -> trans:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4568>`__



.. code-block:: ocaml

  val zgerfs : layout:int -> trans:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4571>`__



.. code-block:: ocaml

  val sgerqf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4574>`__



.. code-block:: ocaml

  val dgerqf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4577>`__



.. code-block:: ocaml

  val cgerqf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4580>`__



.. code-block:: ocaml

  val zgerqf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4583>`__



.. code-block:: ocaml

  val sgesdd : layout:int -> jobz:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> u:(float ptr) -> ldu:int -> vt:(float ptr) -> ldvt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4586>`__



.. code-block:: ocaml

  val dgesdd : layout:int -> jobz:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> u:(float ptr) -> ldu:int -> vt:(float ptr) -> ldvt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4589>`__



.. code-block:: ocaml

  val cgesdd : layout:int -> jobz:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> vt:(Complex.t ptr) -> ldvt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4592>`__



.. code-block:: ocaml

  val zgesdd : layout:int -> jobz:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> vt:(Complex.t ptr) -> ldvt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4595>`__



.. code-block:: ocaml

  val sgesv : layout:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4598>`__



.. code-block:: ocaml

  val dgesv : layout:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4601>`__



.. code-block:: ocaml

  val cgesv : layout:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4604>`__



.. code-block:: ocaml

  val zgesv : layout:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4607>`__



.. code-block:: ocaml

  val dsgesv : layout:int -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> iter:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4610>`__



.. code-block:: ocaml

  val zcgesv : layout:int -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> iter:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4613>`__



.. code-block:: ocaml

  val sgesvd : layout:int -> jobu:char -> jobvt:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> u:(float ptr) -> ldu:int -> vt:(float ptr) -> ldvt:int -> superb:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4616>`__



.. code-block:: ocaml

  val dgesvd : layout:int -> jobu:char -> jobvt:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> u:(float ptr) -> ldu:int -> vt:(float ptr) -> ldvt:int -> superb:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4619>`__



.. code-block:: ocaml

  val cgesvd : layout:int -> jobu:char -> jobvt:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> vt:(Complex.t ptr) -> ldvt:int -> superb:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4622>`__



.. code-block:: ocaml

  val zgesvd : layout:int -> jobu:char -> jobvt:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> vt:(Complex.t ptr) -> ldvt:int -> superb:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4625>`__



.. code-block:: ocaml

  val sgesvdx : layout:int -> jobu:char -> jobvt:char -> range:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> ns:(int32 ptr) -> s:(float ptr) -> u:(float ptr) -> ldu:int -> vt:(float ptr) -> ldvt:int -> superb:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4628>`__



.. code-block:: ocaml

  val dgesvdx : layout:int -> jobu:char -> jobvt:char -> range:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> ns:(int32 ptr) -> s:(float ptr) -> u:(float ptr) -> ldu:int -> vt:(float ptr) -> ldvt:int -> superb:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4631>`__



.. code-block:: ocaml

  val cgesvdx : layout:int -> jobu:char -> jobvt:char -> range:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> ns:(int32 ptr) -> s:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> vt:(Complex.t ptr) -> ldvt:int -> superb:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4634>`__



.. code-block:: ocaml

  val zgesvdx : layout:int -> jobu:char -> jobvt:char -> range:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> ns:(int32 ptr) -> s:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> vt:(Complex.t ptr) -> ldvt:int -> superb:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4637>`__



.. code-block:: ocaml

  val sgesvj : layout:int -> joba:char -> jobu:char -> jobv:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> sva:(float ptr) -> mv:int -> v:(float ptr) -> ldv:int -> stat:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4640>`__



.. code-block:: ocaml

  val dgesvj : layout:int -> joba:char -> jobu:char -> jobv:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> sva:(float ptr) -> mv:int -> v:(float ptr) -> ldv:int -> stat:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4643>`__



.. code-block:: ocaml

  val cgesvj : layout:int -> joba:char -> jobu:char -> jobv:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> sva:(float ptr) -> mv:int -> v:(Complex.t ptr) -> ldv:int -> stat:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4646>`__



.. code-block:: ocaml

  val zgesvj : layout:int -> joba:char -> jobu:char -> jobv:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> sva:(float ptr) -> mv:int -> v:(Complex.t ptr) -> ldv:int -> stat:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4649>`__



.. code-block:: ocaml

  val sgesvx : layout:int -> fact:char -> trans:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> ipiv:(int32 ptr) -> equed:(char ptr) -> r:(float ptr) -> c:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> rpivot:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4652>`__



.. code-block:: ocaml

  val dgesvx : layout:int -> fact:char -> trans:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> ipiv:(int32 ptr) -> equed:(char ptr) -> r:(float ptr) -> c:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> rpivot:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4655>`__



.. code-block:: ocaml

  val cgesvx : layout:int -> fact:char -> trans:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> equed:(char ptr) -> r:(float ptr) -> c:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> rpivot:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4658>`__



.. code-block:: ocaml

  val zgesvx : layout:int -> fact:char -> trans:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> equed:(char ptr) -> r:(float ptr) -> c:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> rpivot:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4661>`__



.. code-block:: ocaml

  val sgetf2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4664>`__



.. code-block:: ocaml

  val dgetf2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4667>`__



.. code-block:: ocaml

  val cgetf2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4670>`__



.. code-block:: ocaml

  val zgetf2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4673>`__



.. code-block:: ocaml

  val sgetrf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4676>`__



.. code-block:: ocaml

  val dgetrf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4679>`__



.. code-block:: ocaml

  val cgetrf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4682>`__



.. code-block:: ocaml

  val zgetrf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4685>`__



.. code-block:: ocaml

  val sgetrf2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4688>`__



.. code-block:: ocaml

  val dgetrf2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4691>`__



.. code-block:: ocaml

  val cgetrf2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4694>`__



.. code-block:: ocaml

  val zgetrf2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4697>`__



.. code-block:: ocaml

  val sgetri : layout:int -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4700>`__



.. code-block:: ocaml

  val dgetri : layout:int -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4703>`__



.. code-block:: ocaml

  val cgetri : layout:int -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4706>`__



.. code-block:: ocaml

  val zgetri : layout:int -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4709>`__



.. code-block:: ocaml

  val sgetrs : layout:int -> trans:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4712>`__



.. code-block:: ocaml

  val dgetrs : layout:int -> trans:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4715>`__



.. code-block:: ocaml

  val cgetrs : layout:int -> trans:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4718>`__



.. code-block:: ocaml

  val zgetrs : layout:int -> trans:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4721>`__



.. code-block:: ocaml

  val sggbak : layout:int -> job:char -> side:char -> n:int -> ilo:int -> ihi:int -> lscale:(float ptr) -> rscale:(float ptr) -> m:int -> v:(float ptr) -> ldv:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4724>`__



.. code-block:: ocaml

  val dggbak : layout:int -> job:char -> side:char -> n:int -> ilo:int -> ihi:int -> lscale:(float ptr) -> rscale:(float ptr) -> m:int -> v:(float ptr) -> ldv:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4727>`__



.. code-block:: ocaml

  val cggbak : layout:int -> job:char -> side:char -> n:int -> ilo:int -> ihi:int -> lscale:(float ptr) -> rscale:(float ptr) -> m:int -> v:(Complex.t ptr) -> ldv:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4730>`__



.. code-block:: ocaml

  val zggbak : layout:int -> job:char -> side:char -> n:int -> ilo:int -> ihi:int -> lscale:(float ptr) -> rscale:(float ptr) -> m:int -> v:(Complex.t ptr) -> ldv:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4733>`__



.. code-block:: ocaml

  val sggbal : layout:int -> job:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> lscale:(float ptr) -> rscale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4736>`__



.. code-block:: ocaml

  val dggbal : layout:int -> job:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> lscale:(float ptr) -> rscale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4739>`__



.. code-block:: ocaml

  val cggbal : layout:int -> job:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> lscale:(float ptr) -> rscale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4742>`__



.. code-block:: ocaml

  val zggbal : layout:int -> job:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> lscale:(float ptr) -> rscale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4745>`__



.. code-block:: ocaml

  val sgges : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> sdim:(int32 ptr) -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vsl:(float ptr) -> ldvsl:int -> vsr:(float ptr) -> ldvsr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4748>`__



.. code-block:: ocaml

  val dgges : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> sdim:(int32 ptr) -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vsl:(float ptr) -> ldvsl:int -> vsr:(float ptr) -> ldvsr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4751>`__



.. code-block:: ocaml

  val cgges : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> sdim:(int32 ptr) -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vsl:(Complex.t ptr) -> ldvsl:int -> vsr:(Complex.t ptr) -> ldvsr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4754>`__



.. code-block:: ocaml

  val zgges : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> sdim:(int32 ptr) -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vsl:(Complex.t ptr) -> ldvsl:int -> vsr:(Complex.t ptr) -> ldvsr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4757>`__



.. code-block:: ocaml

  val sgges3 : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> sdim:(int32 ptr) -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vsl:(float ptr) -> ldvsl:int -> vsr:(float ptr) -> ldvsr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4760>`__



.. code-block:: ocaml

  val dgges3 : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> sdim:(int32 ptr) -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vsl:(float ptr) -> ldvsl:int -> vsr:(float ptr) -> ldvsr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4763>`__



.. code-block:: ocaml

  val cgges3 : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> sdim:(int32 ptr) -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vsl:(Complex.t ptr) -> ldvsl:int -> vsr:(Complex.t ptr) -> ldvsr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4766>`__



.. code-block:: ocaml

  val zgges3 : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> sdim:(int32 ptr) -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vsl:(Complex.t ptr) -> ldvsl:int -> vsr:(Complex.t ptr) -> ldvsr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4769>`__



.. code-block:: ocaml

  val sggesx : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> sense:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> sdim:(int32 ptr) -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vsl:(float ptr) -> ldvsl:int -> vsr:(float ptr) -> ldvsr:int -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4772>`__



.. code-block:: ocaml

  val dggesx : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> sense:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> sdim:(int32 ptr) -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vsl:(float ptr) -> ldvsl:int -> vsr:(float ptr) -> ldvsr:int -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4775>`__



.. code-block:: ocaml

  val cggesx : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> sense:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> sdim:(int32 ptr) -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vsl:(Complex.t ptr) -> ldvsl:int -> vsr:(Complex.t ptr) -> ldvsr:int -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4778>`__



.. code-block:: ocaml

  val zggesx : layout:int -> jobvsl:char -> jobvsr:char -> sort:char -> selctg:(unit ptr) -> sense:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> sdim:(int32 ptr) -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vsl:(Complex.t ptr) -> ldvsl:int -> vsr:(Complex.t ptr) -> ldvsr:int -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4781>`__



.. code-block:: ocaml

  val sggev : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4784>`__



.. code-block:: ocaml

  val dggev : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4787>`__



.. code-block:: ocaml

  val cggev : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4790>`__



.. code-block:: ocaml

  val zggev : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4793>`__



.. code-block:: ocaml

  val sggev3 : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4796>`__



.. code-block:: ocaml

  val dggev3 : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4799>`__



.. code-block:: ocaml

  val cggev3 : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4802>`__



.. code-block:: ocaml

  val zggev3 : layout:int -> jobvl:char -> jobvr:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4805>`__



.. code-block:: ocaml

  val sggevx : layout:int -> balanc:char -> jobvl:char -> jobvr:char -> sense:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> lscale:(float ptr) -> rscale:(float ptr) -> abnrm:(float ptr) -> bbnrm:(float ptr) -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4808>`__



.. code-block:: ocaml

  val dggevx : layout:int -> balanc:char -> jobvl:char -> jobvr:char -> sense:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> lscale:(float ptr) -> rscale:(float ptr) -> abnrm:(float ptr) -> bbnrm:(float ptr) -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4811>`__



.. code-block:: ocaml

  val cggevx : layout:int -> balanc:char -> jobvl:char -> jobvr:char -> sense:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> lscale:(float ptr) -> rscale:(float ptr) -> abnrm:(float ptr) -> bbnrm:(float ptr) -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4814>`__



.. code-block:: ocaml

  val zggevx : layout:int -> balanc:char -> jobvl:char -> jobvr:char -> sense:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> ilo:(int32 ptr) -> ihi:(int32 ptr) -> lscale:(float ptr) -> rscale:(float ptr) -> abnrm:(float ptr) -> bbnrm:(float ptr) -> rconde:(float ptr) -> rcondv:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4817>`__



.. code-block:: ocaml

  val sggglm : layout:int -> n:int -> m:int -> p:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> d:(float ptr) -> x:(float ptr) -> y:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4820>`__



.. code-block:: ocaml

  val dggglm : layout:int -> n:int -> m:int -> p:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> d:(float ptr) -> x:(float ptr) -> y:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4823>`__



.. code-block:: ocaml

  val cggglm : layout:int -> n:int -> m:int -> p:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> d:(Complex.t ptr) -> x:(Complex.t ptr) -> y:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4826>`__



.. code-block:: ocaml

  val zggglm : layout:int -> n:int -> m:int -> p:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> d:(Complex.t ptr) -> x:(Complex.t ptr) -> y:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4829>`__



.. code-block:: ocaml

  val sgghrd : layout:int -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4832>`__



.. code-block:: ocaml

  val dgghrd : layout:int -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4835>`__



.. code-block:: ocaml

  val cgghrd : layout:int -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4838>`__



.. code-block:: ocaml

  val zgghrd : layout:int -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4841>`__



.. code-block:: ocaml

  val sgghd3 : layout:int -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4844>`__



.. code-block:: ocaml

  val dgghd3 : layout:int -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4847>`__



.. code-block:: ocaml

  val cgghd3 : layout:int -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4850>`__



.. code-block:: ocaml

  val zgghd3 : layout:int -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4853>`__



.. code-block:: ocaml

  val sgglse : layout:int -> m:int -> n:int -> p:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> c:(float ptr) -> d:(float ptr) -> x:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4856>`__



.. code-block:: ocaml

  val dgglse : layout:int -> m:int -> n:int -> p:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> c:(float ptr) -> d:(float ptr) -> x:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4859>`__



.. code-block:: ocaml

  val cgglse : layout:int -> m:int -> n:int -> p:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> c:(Complex.t ptr) -> d:(Complex.t ptr) -> x:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4862>`__



.. code-block:: ocaml

  val zgglse : layout:int -> m:int -> n:int -> p:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> c:(Complex.t ptr) -> d:(Complex.t ptr) -> x:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4865>`__



.. code-block:: ocaml

  val sggqrf : layout:int -> n:int -> m:int -> p:int -> a:(float ptr) -> lda:int -> taua:(float ptr) -> b:(float ptr) -> ldb:int -> taub:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4868>`__



.. code-block:: ocaml

  val dggqrf : layout:int -> n:int -> m:int -> p:int -> a:(float ptr) -> lda:int -> taua:(float ptr) -> b:(float ptr) -> ldb:int -> taub:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4871>`__



.. code-block:: ocaml

  val cggqrf : layout:int -> n:int -> m:int -> p:int -> a:(Complex.t ptr) -> lda:int -> taua:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> taub:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4874>`__



.. code-block:: ocaml

  val zggqrf : layout:int -> n:int -> m:int -> p:int -> a:(Complex.t ptr) -> lda:int -> taua:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> taub:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4877>`__



.. code-block:: ocaml

  val sggrqf : layout:int -> m:int -> p:int -> n:int -> a:(float ptr) -> lda:int -> taua:(float ptr) -> b:(float ptr) -> ldb:int -> taub:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4880>`__



.. code-block:: ocaml

  val dggrqf : layout:int -> m:int -> p:int -> n:int -> a:(float ptr) -> lda:int -> taua:(float ptr) -> b:(float ptr) -> ldb:int -> taub:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4883>`__



.. code-block:: ocaml

  val cggrqf : layout:int -> m:int -> p:int -> n:int -> a:(Complex.t ptr) -> lda:int -> taua:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> taub:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4886>`__



.. code-block:: ocaml

  val zggrqf : layout:int -> m:int -> p:int -> n:int -> a:(Complex.t ptr) -> lda:int -> taua:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> taub:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4889>`__



.. code-block:: ocaml

  val sggsvd3 : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> n:int -> p:int -> k:(int32 ptr) -> l:(int32 ptr) -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alpha:(float ptr) -> beta:(float ptr) -> u:(float ptr) -> ldu:int -> v:(float ptr) -> ldv:int -> q:(float ptr) -> ldq:int -> iwork:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4892>`__



.. code-block:: ocaml

  val dggsvd3 : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> n:int -> p:int -> k:(int32 ptr) -> l:(int32 ptr) -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alpha:(float ptr) -> beta:(float ptr) -> u:(float ptr) -> ldu:int -> v:(float ptr) -> ldv:int -> q:(float ptr) -> ldq:int -> iwork:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4895>`__



.. code-block:: ocaml

  val cggsvd3 : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> n:int -> p:int -> k:(int32 ptr) -> l:(int32 ptr) -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(float ptr) -> beta:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> v:(Complex.t ptr) -> ldv:int -> q:(Complex.t ptr) -> ldq:int -> iwork:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4898>`__



.. code-block:: ocaml

  val zggsvd3 : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> n:int -> p:int -> k:(int32 ptr) -> l:(int32 ptr) -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(float ptr) -> beta:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> v:(Complex.t ptr) -> ldv:int -> q:(Complex.t ptr) -> ldq:int -> iwork:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4901>`__



.. code-block:: ocaml

  val sggsvp3 : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> p:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> tola:float -> tolb:float -> k:(int32 ptr) -> l:(int32 ptr) -> u:(float ptr) -> ldu:int -> v:(float ptr) -> ldv:int -> q:(float ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4904>`__



.. code-block:: ocaml

  val dggsvp3 : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> p:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> tola:float -> tolb:float -> k:(int32 ptr) -> l:(int32 ptr) -> u:(float ptr) -> ldu:int -> v:(float ptr) -> ldv:int -> q:(float ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4907>`__



.. code-block:: ocaml

  val cggsvp3 : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> p:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> tola:float -> tolb:float -> k:(int32 ptr) -> l:(int32 ptr) -> u:(Complex.t ptr) -> ldu:int -> v:(Complex.t ptr) -> ldv:int -> q:(Complex.t ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4910>`__



.. code-block:: ocaml

  val zggsvp3 : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> p:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> tola:float -> tolb:float -> k:(int32 ptr) -> l:(int32 ptr) -> u:(Complex.t ptr) -> ldu:int -> v:(Complex.t ptr) -> ldv:int -> q:(Complex.t ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4913>`__



.. code-block:: ocaml

  val sgtcon : norm:char -> n:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4916>`__



.. code-block:: ocaml

  val dgtcon : norm:char -> n:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4919>`__



.. code-block:: ocaml

  val cgtcon : norm:char -> n:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4922>`__



.. code-block:: ocaml

  val zgtcon : norm:char -> n:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4925>`__



.. code-block:: ocaml

  val sgtrfs : layout:int -> trans:char -> n:int -> nrhs:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> dlf:(float ptr) -> df:(float ptr) -> duf:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4928>`__



.. code-block:: ocaml

  val dgtrfs : layout:int -> trans:char -> n:int -> nrhs:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> dlf:(float ptr) -> df:(float ptr) -> duf:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4931>`__



.. code-block:: ocaml

  val cgtrfs : layout:int -> trans:char -> n:int -> nrhs:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> dlf:(Complex.t ptr) -> df:(Complex.t ptr) -> duf:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4934>`__



.. code-block:: ocaml

  val zgtrfs : layout:int -> trans:char -> n:int -> nrhs:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> dlf:(Complex.t ptr) -> df:(Complex.t ptr) -> duf:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4937>`__



.. code-block:: ocaml

  val sgtsv : layout:int -> n:int -> nrhs:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4940>`__



.. code-block:: ocaml

  val dgtsv : layout:int -> n:int -> nrhs:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4943>`__



.. code-block:: ocaml

  val cgtsv : layout:int -> n:int -> nrhs:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4946>`__



.. code-block:: ocaml

  val zgtsv : layout:int -> n:int -> nrhs:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4949>`__



.. code-block:: ocaml

  val sgtsvx : layout:int -> fact:char -> trans:char -> n:int -> nrhs:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> dlf:(float ptr) -> df:(float ptr) -> duf:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4952>`__



.. code-block:: ocaml

  val dgtsvx : layout:int -> fact:char -> trans:char -> n:int -> nrhs:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> dlf:(float ptr) -> df:(float ptr) -> duf:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4955>`__



.. code-block:: ocaml

  val cgtsvx : layout:int -> fact:char -> trans:char -> n:int -> nrhs:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> dlf:(Complex.t ptr) -> df:(Complex.t ptr) -> duf:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4958>`__



.. code-block:: ocaml

  val zgtsvx : layout:int -> fact:char -> trans:char -> n:int -> nrhs:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> dlf:(Complex.t ptr) -> df:(Complex.t ptr) -> duf:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4961>`__



.. code-block:: ocaml

  val sgttrf : n:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4964>`__



.. code-block:: ocaml

  val dgttrf : n:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4967>`__



.. code-block:: ocaml

  val cgttrf : n:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4970>`__



.. code-block:: ocaml

  val zgttrf : n:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4973>`__



.. code-block:: ocaml

  val sgttrs : layout:int -> trans:char -> n:int -> nrhs:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4976>`__



.. code-block:: ocaml

  val dgttrs : layout:int -> trans:char -> n:int -> nrhs:int -> dl:(float ptr) -> d:(float ptr) -> du:(float ptr) -> du2:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4979>`__



.. code-block:: ocaml

  val cgttrs : layout:int -> trans:char -> n:int -> nrhs:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4982>`__



.. code-block:: ocaml

  val zgttrs : layout:int -> trans:char -> n:int -> nrhs:int -> dl:(Complex.t ptr) -> d:(Complex.t ptr) -> du:(Complex.t ptr) -> du2:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4985>`__



.. code-block:: ocaml

  val chbev : layout:int -> jobz:char -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4988>`__



.. code-block:: ocaml

  val zhbev : layout:int -> jobz:char -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4991>`__



.. code-block:: ocaml

  val chbevd : layout:int -> jobz:char -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4994>`__



.. code-block:: ocaml

  val zhbevd : layout:int -> jobz:char -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L4997>`__



.. code-block:: ocaml

  val chbevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> q:(Complex.t ptr) -> ldq:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5000>`__



.. code-block:: ocaml

  val zhbevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> q:(Complex.t ptr) -> ldq:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5003>`__



.. code-block:: ocaml

  val chbgst : layout:int -> vect:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(Complex.t ptr) -> ldab:int -> bb:(Complex.t ptr) -> ldbb:int -> x:(Complex.t ptr) -> ldx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5006>`__



.. code-block:: ocaml

  val zhbgst : layout:int -> vect:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(Complex.t ptr) -> ldab:int -> bb:(Complex.t ptr) -> ldbb:int -> x:(Complex.t ptr) -> ldx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5009>`__



.. code-block:: ocaml

  val chbgv : layout:int -> jobz:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(Complex.t ptr) -> ldab:int -> bb:(Complex.t ptr) -> ldbb:int -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5012>`__



.. code-block:: ocaml

  val zhbgv : layout:int -> jobz:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(Complex.t ptr) -> ldab:int -> bb:(Complex.t ptr) -> ldbb:int -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5015>`__



.. code-block:: ocaml

  val chbgvd : layout:int -> jobz:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(Complex.t ptr) -> ldab:int -> bb:(Complex.t ptr) -> ldbb:int -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5018>`__



.. code-block:: ocaml

  val zhbgvd : layout:int -> jobz:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(Complex.t ptr) -> ldab:int -> bb:(Complex.t ptr) -> ldbb:int -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5021>`__



.. code-block:: ocaml

  val chbgvx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(Complex.t ptr) -> ldab:int -> bb:(Complex.t ptr) -> ldbb:int -> q:(Complex.t ptr) -> ldq:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5024>`__



.. code-block:: ocaml

  val zhbgvx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(Complex.t ptr) -> ldab:int -> bb:(Complex.t ptr) -> ldbb:int -> q:(Complex.t ptr) -> ldq:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5027>`__



.. code-block:: ocaml

  val chbtrd : layout:int -> vect:char -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> d:(float ptr) -> e:(float ptr) -> q:(Complex.t ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5030>`__



.. code-block:: ocaml

  val zhbtrd : layout:int -> vect:char -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> d:(float ptr) -> e:(float ptr) -> q:(Complex.t ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5033>`__



.. code-block:: ocaml

  val checon : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5036>`__



.. code-block:: ocaml

  val zhecon : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5039>`__



.. code-block:: ocaml

  val cheequb : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5042>`__



.. code-block:: ocaml

  val zheequb : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5045>`__



.. code-block:: ocaml

  val cheev : layout:int -> jobz:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5048>`__



.. code-block:: ocaml

  val zheev : layout:int -> jobz:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5051>`__



.. code-block:: ocaml

  val cheevd : layout:int -> jobz:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5054>`__



.. code-block:: ocaml

  val zheevd : layout:int -> jobz:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5057>`__



.. code-block:: ocaml

  val cheevr : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5060>`__



.. code-block:: ocaml

  val zheevr : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5063>`__



.. code-block:: ocaml

  val cheevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5066>`__



.. code-block:: ocaml

  val zheevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5069>`__



.. code-block:: ocaml

  val chegst : layout:int -> ityp:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5072>`__



.. code-block:: ocaml

  val zhegst : layout:int -> ityp:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5075>`__



.. code-block:: ocaml

  val chegv : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5078>`__



.. code-block:: ocaml

  val zhegv : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5081>`__



.. code-block:: ocaml

  val chegvd : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5084>`__



.. code-block:: ocaml

  val zhegvd : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5087>`__



.. code-block:: ocaml

  val chegvx : layout:int -> ityp:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5090>`__



.. code-block:: ocaml

  val zhegvx : layout:int -> ityp:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5093>`__



.. code-block:: ocaml

  val cherfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5096>`__



.. code-block:: ocaml

  val zherfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5099>`__



.. code-block:: ocaml

  val chesv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5102>`__



.. code-block:: ocaml

  val zhesv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5105>`__



.. code-block:: ocaml

  val chesvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5108>`__



.. code-block:: ocaml

  val zhesvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5111>`__



.. code-block:: ocaml

  val chetrd : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> d:(float ptr) -> e:(float ptr) -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5114>`__



.. code-block:: ocaml

  val zhetrd : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> d:(float ptr) -> e:(float ptr) -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5117>`__



.. code-block:: ocaml

  val chetrf : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5120>`__



.. code-block:: ocaml

  val zhetrf : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5123>`__



.. code-block:: ocaml

  val chetri : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5126>`__



.. code-block:: ocaml

  val zhetri : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5129>`__



.. code-block:: ocaml

  val chetrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5132>`__



.. code-block:: ocaml

  val zhetrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5135>`__



.. code-block:: ocaml

  val chfrk : layout:int -> transr:char -> uplo:char -> trans:char -> n:int -> k:int -> alpha:float -> a:(Complex.t ptr) -> lda:int -> beta:float -> c:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5138>`__



.. code-block:: ocaml

  val zhfrk : layout:int -> transr:char -> uplo:char -> trans:char -> n:int -> k:int -> alpha:float -> a:(Complex.t ptr) -> lda:int -> beta:float -> c:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5141>`__



.. code-block:: ocaml

  val shgeqz : layout:int -> job:char -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> h:(float ptr) -> ldh:int -> t:(float ptr) -> ldt:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5144>`__



.. code-block:: ocaml

  val dhgeqz : layout:int -> job:char -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> h:(float ptr) -> ldh:int -> t:(float ptr) -> ldt:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5147>`__



.. code-block:: ocaml

  val chgeqz : layout:int -> job:char -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> h:(Complex.t ptr) -> ldh:int -> t:(Complex.t ptr) -> ldt:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5150>`__



.. code-block:: ocaml

  val zhgeqz : layout:int -> job:char -> compq:char -> compz:char -> n:int -> ilo:int -> ihi:int -> h:(Complex.t ptr) -> ldh:int -> t:(Complex.t ptr) -> ldt:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5153>`__



.. code-block:: ocaml

  val chpcon : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5156>`__



.. code-block:: ocaml

  val zhpcon : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5159>`__



.. code-block:: ocaml

  val chpev : layout:int -> jobz:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5162>`__



.. code-block:: ocaml

  val zhpev : layout:int -> jobz:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5165>`__



.. code-block:: ocaml

  val chpevd : layout:int -> jobz:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5168>`__



.. code-block:: ocaml

  val zhpevd : layout:int -> jobz:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5171>`__



.. code-block:: ocaml

  val chpevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5174>`__



.. code-block:: ocaml

  val zhpevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5177>`__



.. code-block:: ocaml

  val chpgst : layout:int -> ityp:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> bp:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5180>`__



.. code-block:: ocaml

  val zhpgst : layout:int -> ityp:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> bp:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5183>`__



.. code-block:: ocaml

  val chpgv : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> bp:(Complex.t ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5186>`__



.. code-block:: ocaml

  val zhpgv : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> bp:(Complex.t ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5189>`__



.. code-block:: ocaml

  val chpgvd : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> bp:(Complex.t ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5192>`__



.. code-block:: ocaml

  val zhpgvd : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> bp:(Complex.t ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5195>`__



.. code-block:: ocaml

  val chpgvx : layout:int -> ityp:int -> jobz:char -> range:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> bp:(Complex.t ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5198>`__



.. code-block:: ocaml

  val zhpgvx : layout:int -> ityp:int -> jobz:char -> range:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> bp:(Complex.t ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5201>`__



.. code-block:: ocaml

  val chprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5204>`__



.. code-block:: ocaml

  val zhprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5207>`__



.. code-block:: ocaml

  val chpsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5210>`__



.. code-block:: ocaml

  val zhpsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5213>`__



.. code-block:: ocaml

  val chpsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5216>`__



.. code-block:: ocaml

  val zhpsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5219>`__



.. code-block:: ocaml

  val chptrd : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> d:(float ptr) -> e:(float ptr) -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5222>`__



.. code-block:: ocaml

  val zhptrd : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> d:(float ptr) -> e:(float ptr) -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5225>`__



.. code-block:: ocaml

  val chptrf : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5228>`__



.. code-block:: ocaml

  val zhptrf : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5231>`__



.. code-block:: ocaml

  val chptri : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5234>`__



.. code-block:: ocaml

  val zhptri : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5237>`__



.. code-block:: ocaml

  val chptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5240>`__



.. code-block:: ocaml

  val zhptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5243>`__



.. code-block:: ocaml

  val shsein : layout:int -> job:char -> eigsrc:char -> initv:char -> select:(int32 ptr) -> n:int -> h:(float ptr) -> ldh:int -> wr:(float ptr) -> wi:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> ifaill:(int32 ptr) -> ifailr:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5246>`__



.. code-block:: ocaml

  val dhsein : layout:int -> job:char -> eigsrc:char -> initv:char -> select:(int32 ptr) -> n:int -> h:(float ptr) -> ldh:int -> wr:(float ptr) -> wi:(float ptr) -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> ifaill:(int32 ptr) -> ifailr:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5249>`__



.. code-block:: ocaml

  val chsein : layout:int -> job:char -> eigsrc:char -> initv:char -> select:(int32 ptr) -> n:int -> h:(Complex.t ptr) -> ldh:int -> w:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> ifaill:(int32 ptr) -> ifailr:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5252>`__



.. code-block:: ocaml

  val zhsein : layout:int -> job:char -> eigsrc:char -> initv:char -> select:(int32 ptr) -> n:int -> h:(Complex.t ptr) -> ldh:int -> w:(Complex.t ptr) -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> ifaill:(int32 ptr) -> ifailr:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5255>`__



.. code-block:: ocaml

  val shseqr : layout:int -> job:char -> compz:char -> n:int -> ilo:int -> ihi:int -> h:(float ptr) -> ldh:int -> wr:(float ptr) -> wi:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5258>`__



.. code-block:: ocaml

  val dhseqr : layout:int -> job:char -> compz:char -> n:int -> ilo:int -> ihi:int -> h:(float ptr) -> ldh:int -> wr:(float ptr) -> wi:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5261>`__



.. code-block:: ocaml

  val chseqr : layout:int -> job:char -> compz:char -> n:int -> ilo:int -> ihi:int -> h:(Complex.t ptr) -> ldh:int -> w:(Complex.t ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5264>`__



.. code-block:: ocaml

  val zhseqr : layout:int -> job:char -> compz:char -> n:int -> ilo:int -> ihi:int -> h:(Complex.t ptr) -> ldh:int -> w:(Complex.t ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5267>`__



.. code-block:: ocaml

  val clacgv : n:int -> x:(Complex.t ptr) -> incx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5270>`__



.. code-block:: ocaml

  val zlacgv : n:int -> x:(Complex.t ptr) -> incx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5273>`__



.. code-block:: ocaml

  val slacn2 : n:int -> v:(float ptr) -> x:(float ptr) -> isgn:(int32 ptr) -> est:(float ptr) -> kase:(int32 ptr) -> isave:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5276>`__



.. code-block:: ocaml

  val dlacn2 : n:int -> v:(float ptr) -> x:(float ptr) -> isgn:(int32 ptr) -> est:(float ptr) -> kase:(int32 ptr) -> isave:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5279>`__



.. code-block:: ocaml

  val clacn2 : n:int -> v:(Complex.t ptr) -> x:(Complex.t ptr) -> est:(float ptr) -> kase:(int32 ptr) -> isave:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5282>`__



.. code-block:: ocaml

  val zlacn2 : n:int -> v:(Complex.t ptr) -> x:(Complex.t ptr) -> est:(float ptr) -> kase:(int32 ptr) -> isave:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5285>`__



.. code-block:: ocaml

  val slacpy : layout:int -> uplo:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5288>`__



.. code-block:: ocaml

  val dlacpy : layout:int -> uplo:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5291>`__



.. code-block:: ocaml

  val clacpy : layout:int -> uplo:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5294>`__



.. code-block:: ocaml

  val zlacpy : layout:int -> uplo:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5297>`__



.. code-block:: ocaml

  val clacp2 : layout:int -> uplo:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5300>`__



.. code-block:: ocaml

  val zlacp2 : layout:int -> uplo:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5303>`__



.. code-block:: ocaml

  val zlag2c : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> sa:(Complex.t ptr) -> ldsa:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5306>`__



.. code-block:: ocaml

  val slag2d : layout:int -> m:int -> n:int -> sa:(float ptr) -> ldsa:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5309>`__



.. code-block:: ocaml

  val dlag2s : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> sa:(float ptr) -> ldsa:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5312>`__



.. code-block:: ocaml

  val clag2z : layout:int -> m:int -> n:int -> sa:(Complex.t ptr) -> ldsa:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5315>`__



.. code-block:: ocaml

  val slagge : layout:int -> m:int -> n:int -> kl:int -> ku:int -> d:(float ptr) -> a:(float ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5318>`__



.. code-block:: ocaml

  val dlagge : layout:int -> m:int -> n:int -> kl:int -> ku:int -> d:(float ptr) -> a:(float ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5321>`__



.. code-block:: ocaml

  val clagge : layout:int -> m:int -> n:int -> kl:int -> ku:int -> d:(float ptr) -> a:(Complex.t ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5324>`__



.. code-block:: ocaml

  val zlagge : layout:int -> m:int -> n:int -> kl:int -> ku:int -> d:(float ptr) -> a:(Complex.t ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5327>`__



.. code-block:: ocaml

  val slarfb : layout:int -> side:char -> trans:char -> direct:char -> storev:char -> m:int -> n:int -> k:int -> v:(float ptr) -> ldv:int -> t:(float ptr) -> ldt:int -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5330>`__



.. code-block:: ocaml

  val dlarfb : layout:int -> side:char -> trans:char -> direct:char -> storev:char -> m:int -> n:int -> k:int -> v:(float ptr) -> ldv:int -> t:(float ptr) -> ldt:int -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5333>`__



.. code-block:: ocaml

  val clarfb : layout:int -> side:char -> trans:char -> direct:char -> storev:char -> m:int -> n:int -> k:int -> v:(Complex.t ptr) -> ldv:int -> t:(Complex.t ptr) -> ldt:int -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5336>`__



.. code-block:: ocaml

  val zlarfb : layout:int -> side:char -> trans:char -> direct:char -> storev:char -> m:int -> n:int -> k:int -> v:(Complex.t ptr) -> ldv:int -> t:(Complex.t ptr) -> ldt:int -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5339>`__



.. code-block:: ocaml

  val slarfg : n:int -> alpha:(float ptr) -> x:(float ptr) -> incx:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5342>`__



.. code-block:: ocaml

  val dlarfg : n:int -> alpha:(float ptr) -> x:(float ptr) -> incx:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5345>`__



.. code-block:: ocaml

  val clarfg : n:int -> alpha:(Complex.t ptr) -> x:(Complex.t ptr) -> incx:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5348>`__



.. code-block:: ocaml

  val zlarfg : n:int -> alpha:(Complex.t ptr) -> x:(Complex.t ptr) -> incx:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5351>`__



.. code-block:: ocaml

  val slarft : layout:int -> direct:char -> storev:char -> n:int -> k:int -> v:(float ptr) -> ldv:int -> tau:(float ptr) -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5354>`__



.. code-block:: ocaml

  val dlarft : layout:int -> direct:char -> storev:char -> n:int -> k:int -> v:(float ptr) -> ldv:int -> tau:(float ptr) -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5357>`__



.. code-block:: ocaml

  val clarft : layout:int -> direct:char -> storev:char -> n:int -> k:int -> v:(Complex.t ptr) -> ldv:int -> tau:(Complex.t ptr) -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5360>`__



.. code-block:: ocaml

  val zlarft : layout:int -> direct:char -> storev:char -> n:int -> k:int -> v:(Complex.t ptr) -> ldv:int -> tau:(Complex.t ptr) -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5363>`__



.. code-block:: ocaml

  val slarfx : layout:int -> side:char -> m:int -> n:int -> v:(float ptr) -> tau:float -> c:(float ptr) -> ldc:int -> work:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5366>`__



.. code-block:: ocaml

  val dlarfx : layout:int -> side:char -> m:int -> n:int -> v:(float ptr) -> tau:float -> c:(float ptr) -> ldc:int -> work:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5369>`__



.. code-block:: ocaml

  val clarfx : layout:int -> side:char -> m:int -> n:int -> v:(Complex.t ptr) -> tau:Complex.t -> c:(Complex.t ptr) -> ldc:int -> work:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5372>`__



.. code-block:: ocaml

  val zlarfx : layout:int -> side:char -> m:int -> n:int -> v:(Complex.t ptr) -> tau:Complex.t -> c:(Complex.t ptr) -> ldc:int -> work:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5375>`__



.. code-block:: ocaml

  val slarnv : idist:int -> iseed:(int32 ptr) -> n:int -> x:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5378>`__



.. code-block:: ocaml

  val dlarnv : idist:int -> iseed:(int32 ptr) -> n:int -> x:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5381>`__



.. code-block:: ocaml

  val clarnv : idist:int -> iseed:(int32 ptr) -> n:int -> x:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5384>`__



.. code-block:: ocaml

  val zlarnv : idist:int -> iseed:(int32 ptr) -> n:int -> x:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5387>`__



.. code-block:: ocaml

  val slascl : layout:int -> typ:char -> kl:int -> ku:int -> cfrom:float -> cto:float -> m:int -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5390>`__



.. code-block:: ocaml

  val dlascl : layout:int -> typ:char -> kl:int -> ku:int -> cfrom:float -> cto:float -> m:int -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5393>`__



.. code-block:: ocaml

  val clascl : layout:int -> typ:char -> kl:int -> ku:int -> cfrom:float -> cto:float -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5396>`__



.. code-block:: ocaml

  val zlascl : layout:int -> typ:char -> kl:int -> ku:int -> cfrom:float -> cto:float -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5399>`__



.. code-block:: ocaml

  val slaset : layout:int -> uplo:char -> m:int -> n:int -> alpha:float -> beta:float -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5402>`__



.. code-block:: ocaml

  val dlaset : layout:int -> uplo:char -> m:int -> n:int -> alpha:float -> beta:float -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5405>`__



.. code-block:: ocaml

  val claset : layout:int -> uplo:char -> m:int -> n:int -> alpha:Complex.t -> beta:Complex.t -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5408>`__



.. code-block:: ocaml

  val zlaset : layout:int -> uplo:char -> m:int -> n:int -> alpha:Complex.t -> beta:Complex.t -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5411>`__



.. code-block:: ocaml

  val slasrt : id:char -> n:int -> d:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5414>`__



.. code-block:: ocaml

  val dlasrt : id:char -> n:int -> d:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5417>`__



.. code-block:: ocaml

  val slaswp : layout:int -> n:int -> a:(float ptr) -> lda:int -> k1:int -> k2:int -> ipiv:(int32 ptr) -> incx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5420>`__



.. code-block:: ocaml

  val dlaswp : layout:int -> n:int -> a:(float ptr) -> lda:int -> k1:int -> k2:int -> ipiv:(int32 ptr) -> incx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5423>`__



.. code-block:: ocaml

  val claswp : layout:int -> n:int -> a:(Complex.t ptr) -> lda:int -> k1:int -> k2:int -> ipiv:(int32 ptr) -> incx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5426>`__



.. code-block:: ocaml

  val zlaswp : layout:int -> n:int -> a:(Complex.t ptr) -> lda:int -> k1:int -> k2:int -> ipiv:(int32 ptr) -> incx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5429>`__



.. code-block:: ocaml

  val slatms : layout:int -> m:int -> n:int -> dist:char -> iseed:(int32 ptr) -> sym:char -> d:(float ptr) -> mode:int -> cond:float -> dmax:float -> kl:int -> ku:int -> pack:char -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5432>`__



.. code-block:: ocaml

  val dlatms : layout:int -> m:int -> n:int -> dist:char -> iseed:(int32 ptr) -> sym:char -> d:(float ptr) -> mode:int -> cond:float -> dmax:float -> kl:int -> ku:int -> pack:char -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5435>`__



.. code-block:: ocaml

  val clatms : layout:int -> m:int -> n:int -> dist:char -> iseed:(int32 ptr) -> sym:char -> d:(float ptr) -> mode:int -> cond:float -> dmax:float -> kl:int -> ku:int -> pack:char -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5438>`__



.. code-block:: ocaml

  val zlatms : layout:int -> m:int -> n:int -> dist:char -> iseed:(int32 ptr) -> sym:char -> d:(float ptr) -> mode:int -> cond:float -> dmax:float -> kl:int -> ku:int -> pack:char -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5441>`__



.. code-block:: ocaml

  val slauum : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5444>`__



.. code-block:: ocaml

  val dlauum : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5447>`__



.. code-block:: ocaml

  val clauum : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5450>`__



.. code-block:: ocaml

  val zlauum : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5453>`__



.. code-block:: ocaml

  val sopgtr : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> tau:(float ptr) -> q:(float ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5456>`__



.. code-block:: ocaml

  val dopgtr : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> tau:(float ptr) -> q:(float ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5459>`__



.. code-block:: ocaml

  val sopmtr : layout:int -> side:char -> uplo:char -> trans:char -> m:int -> n:int -> ap:(float ptr) -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5462>`__



.. code-block:: ocaml

  val dopmtr : layout:int -> side:char -> uplo:char -> trans:char -> m:int -> n:int -> ap:(float ptr) -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5465>`__



.. code-block:: ocaml

  val sorgbr : layout:int -> vect:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5468>`__



.. code-block:: ocaml

  val dorgbr : layout:int -> vect:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5471>`__



.. code-block:: ocaml

  val sorghr : layout:int -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5474>`__



.. code-block:: ocaml

  val dorghr : layout:int -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5477>`__



.. code-block:: ocaml

  val sorglq : layout:int -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5480>`__



.. code-block:: ocaml

  val dorglq : layout:int -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5483>`__



.. code-block:: ocaml

  val sorgql : layout:int -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5486>`__



.. code-block:: ocaml

  val dorgql : layout:int -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5489>`__



.. code-block:: ocaml

  val sorgqr : layout:int -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5492>`__



.. code-block:: ocaml

  val dorgqr : layout:int -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5495>`__



.. code-block:: ocaml

  val sorgrq : layout:int -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5498>`__



.. code-block:: ocaml

  val dorgrq : layout:int -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5501>`__



.. code-block:: ocaml

  val sorgtr : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5504>`__



.. code-block:: ocaml

  val dorgtr : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5507>`__



.. code-block:: ocaml

  val sormbr : layout:int -> vect:char -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5510>`__



.. code-block:: ocaml

  val dormbr : layout:int -> vect:char -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5513>`__



.. code-block:: ocaml

  val sormhr : layout:int -> side:char -> trans:char -> m:int -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5516>`__



.. code-block:: ocaml

  val dormhr : layout:int -> side:char -> trans:char -> m:int -> n:int -> ilo:int -> ihi:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5519>`__



.. code-block:: ocaml

  val sormlq : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5522>`__



.. code-block:: ocaml

  val dormlq : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5525>`__



.. code-block:: ocaml

  val sormql : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5528>`__



.. code-block:: ocaml

  val dormql : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5531>`__



.. code-block:: ocaml

  val sormqr : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5534>`__



.. code-block:: ocaml

  val dormqr : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5537>`__



.. code-block:: ocaml

  val sormrq : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5540>`__



.. code-block:: ocaml

  val dormrq : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5543>`__



.. code-block:: ocaml

  val sormrz : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> l:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5546>`__



.. code-block:: ocaml

  val dormrz : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> l:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5549>`__



.. code-block:: ocaml

  val sormtr : layout:int -> side:char -> uplo:char -> trans:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5552>`__



.. code-block:: ocaml

  val dormtr : layout:int -> side:char -> uplo:char -> trans:char -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5555>`__



.. code-block:: ocaml

  val spbcon : layout:int -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5558>`__



.. code-block:: ocaml

  val dpbcon : layout:int -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5561>`__



.. code-block:: ocaml

  val cpbcon : layout:int -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5564>`__



.. code-block:: ocaml

  val zpbcon : layout:int -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5567>`__



.. code-block:: ocaml

  val spbequ : layout:int -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5570>`__



.. code-block:: ocaml

  val dpbequ : layout:int -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5573>`__



.. code-block:: ocaml

  val cpbequ : layout:int -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5576>`__



.. code-block:: ocaml

  val zpbequ : layout:int -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5579>`__



.. code-block:: ocaml

  val spbrfs : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> afb:(float ptr) -> ldafb:int -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5582>`__



.. code-block:: ocaml

  val dpbrfs : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> afb:(float ptr) -> ldafb:int -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5585>`__



.. code-block:: ocaml

  val cpbrfs : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> afb:(Complex.t ptr) -> ldafb:int -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5588>`__



.. code-block:: ocaml

  val zpbrfs : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> afb:(Complex.t ptr) -> ldafb:int -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5591>`__



.. code-block:: ocaml

  val spbstf : layout:int -> uplo:char -> n:int -> kb:int -> bb:(float ptr) -> ldbb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5594>`__



.. code-block:: ocaml

  val dpbstf : layout:int -> uplo:char -> n:int -> kb:int -> bb:(float ptr) -> ldbb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5597>`__



.. code-block:: ocaml

  val cpbstf : layout:int -> uplo:char -> n:int -> kb:int -> bb:(Complex.t ptr) -> ldbb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5600>`__



.. code-block:: ocaml

  val zpbstf : layout:int -> uplo:char -> n:int -> kb:int -> bb:(Complex.t ptr) -> ldbb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5603>`__



.. code-block:: ocaml

  val spbsv : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5606>`__



.. code-block:: ocaml

  val dpbsv : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5609>`__



.. code-block:: ocaml

  val cpbsv : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5612>`__



.. code-block:: ocaml

  val zpbsv : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5615>`__



.. code-block:: ocaml

  val spbsvx : layout:int -> fact:char -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> afb:(float ptr) -> ldafb:int -> equed:(char ptr) -> s:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5618>`__



.. code-block:: ocaml

  val dpbsvx : layout:int -> fact:char -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> afb:(float ptr) -> ldafb:int -> equed:(char ptr) -> s:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5621>`__



.. code-block:: ocaml

  val cpbsvx : layout:int -> fact:char -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> afb:(Complex.t ptr) -> ldafb:int -> equed:(char ptr) -> s:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5624>`__



.. code-block:: ocaml

  val zpbsvx : layout:int -> fact:char -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> afb:(Complex.t ptr) -> ldafb:int -> equed:(char ptr) -> s:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5627>`__



.. code-block:: ocaml

  val spbtrf : layout:int -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5630>`__



.. code-block:: ocaml

  val dpbtrf : layout:int -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5633>`__



.. code-block:: ocaml

  val cpbtrf : layout:int -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5636>`__



.. code-block:: ocaml

  val zpbtrf : layout:int -> uplo:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5639>`__



.. code-block:: ocaml

  val spbtrs : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5642>`__



.. code-block:: ocaml

  val dpbtrs : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5645>`__



.. code-block:: ocaml

  val cpbtrs : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5648>`__



.. code-block:: ocaml

  val zpbtrs : layout:int -> uplo:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5651>`__



.. code-block:: ocaml

  val spftrf : layout:int -> transr:char -> uplo:char -> n:int -> a:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5654>`__



.. code-block:: ocaml

  val dpftrf : layout:int -> transr:char -> uplo:char -> n:int -> a:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5657>`__



.. code-block:: ocaml

  val cpftrf : layout:int -> transr:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5660>`__



.. code-block:: ocaml

  val zpftrf : layout:int -> transr:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5663>`__



.. code-block:: ocaml

  val spftri : layout:int -> transr:char -> uplo:char -> n:int -> a:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5666>`__



.. code-block:: ocaml

  val dpftri : layout:int -> transr:char -> uplo:char -> n:int -> a:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5669>`__



.. code-block:: ocaml

  val cpftri : layout:int -> transr:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5672>`__



.. code-block:: ocaml

  val zpftri : layout:int -> transr:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5675>`__



.. code-block:: ocaml

  val spftrs : layout:int -> transr:char -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5678>`__



.. code-block:: ocaml

  val dpftrs : layout:int -> transr:char -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5681>`__



.. code-block:: ocaml

  val cpftrs : layout:int -> transr:char -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5684>`__



.. code-block:: ocaml

  val zpftrs : layout:int -> transr:char -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5687>`__



.. code-block:: ocaml

  val spocon : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5690>`__



.. code-block:: ocaml

  val dpocon : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5693>`__



.. code-block:: ocaml

  val cpocon : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5696>`__



.. code-block:: ocaml

  val zpocon : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5699>`__



.. code-block:: ocaml

  val spoequ : layout:int -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5702>`__



.. code-block:: ocaml

  val dpoequ : layout:int -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5705>`__



.. code-block:: ocaml

  val cpoequ : layout:int -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5708>`__



.. code-block:: ocaml

  val zpoequ : layout:int -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5711>`__



.. code-block:: ocaml

  val spoequb : layout:int -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5714>`__



.. code-block:: ocaml

  val dpoequb : layout:int -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5717>`__



.. code-block:: ocaml

  val cpoequb : layout:int -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5720>`__



.. code-block:: ocaml

  val zpoequb : layout:int -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5723>`__



.. code-block:: ocaml

  val sporfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5726>`__



.. code-block:: ocaml

  val dporfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5729>`__



.. code-block:: ocaml

  val cporfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5732>`__



.. code-block:: ocaml

  val zporfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5735>`__



.. code-block:: ocaml

  val sposv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5738>`__



.. code-block:: ocaml

  val dposv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5741>`__



.. code-block:: ocaml

  val cposv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5744>`__



.. code-block:: ocaml

  val zposv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5747>`__



.. code-block:: ocaml

  val dsposv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> iter:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5750>`__



.. code-block:: ocaml

  val zcposv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> iter:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5753>`__



.. code-block:: ocaml

  val sposvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> equed:(char ptr) -> s:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5756>`__



.. code-block:: ocaml

  val dposvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> equed:(char ptr) -> s:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5759>`__



.. code-block:: ocaml

  val cposvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> equed:(char ptr) -> s:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5762>`__



.. code-block:: ocaml

  val zposvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> equed:(char ptr) -> s:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5765>`__



.. code-block:: ocaml

  val spotrf2 : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5768>`__



.. code-block:: ocaml

  val dpotrf2 : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5771>`__



.. code-block:: ocaml

  val cpotrf2 : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5774>`__



.. code-block:: ocaml

  val zpotrf2 : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5777>`__



.. code-block:: ocaml

  val spotrf : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5780>`__



.. code-block:: ocaml

  val dpotrf : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5783>`__



.. code-block:: ocaml

  val cpotrf : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5786>`__



.. code-block:: ocaml

  val zpotrf : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5789>`__



.. code-block:: ocaml

  val spotri : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5792>`__



.. code-block:: ocaml

  val dpotri : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5795>`__



.. code-block:: ocaml

  val cpotri : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5798>`__



.. code-block:: ocaml

  val zpotri : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5801>`__



.. code-block:: ocaml

  val spotrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5804>`__



.. code-block:: ocaml

  val dpotrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5807>`__



.. code-block:: ocaml

  val cpotrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5810>`__



.. code-block:: ocaml

  val zpotrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5813>`__



.. code-block:: ocaml

  val sppcon : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5816>`__



.. code-block:: ocaml

  val dppcon : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5819>`__



.. code-block:: ocaml

  val cppcon : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5822>`__



.. code-block:: ocaml

  val zppcon : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5825>`__



.. code-block:: ocaml

  val sppequ : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5828>`__



.. code-block:: ocaml

  val dppequ : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5831>`__



.. code-block:: ocaml

  val cppequ : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5834>`__



.. code-block:: ocaml

  val zppequ : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5837>`__



.. code-block:: ocaml

  val spprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> afp:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5840>`__



.. code-block:: ocaml

  val dpprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> afp:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5843>`__



.. code-block:: ocaml

  val cpprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5846>`__



.. code-block:: ocaml

  val zpprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5849>`__



.. code-block:: ocaml

  val sppsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5852>`__



.. code-block:: ocaml

  val dppsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5855>`__



.. code-block:: ocaml

  val cppsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5858>`__



.. code-block:: ocaml

  val zppsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5861>`__



.. code-block:: ocaml

  val sppsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> afp:(float ptr) -> equed:(char ptr) -> s:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5864>`__



.. code-block:: ocaml

  val dppsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> afp:(float ptr) -> equed:(char ptr) -> s:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5867>`__



.. code-block:: ocaml

  val cppsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> equed:(char ptr) -> s:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5870>`__



.. code-block:: ocaml

  val zppsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> equed:(char ptr) -> s:(float ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5873>`__



.. code-block:: ocaml

  val spptrf : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5876>`__



.. code-block:: ocaml

  val dpptrf : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5879>`__



.. code-block:: ocaml

  val cpptrf : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5882>`__



.. code-block:: ocaml

  val zpptrf : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5885>`__



.. code-block:: ocaml

  val spptri : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5888>`__



.. code-block:: ocaml

  val dpptri : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5891>`__



.. code-block:: ocaml

  val cpptri : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5894>`__



.. code-block:: ocaml

  val zpptri : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5897>`__



.. code-block:: ocaml

  val spptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5900>`__



.. code-block:: ocaml

  val dpptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5903>`__



.. code-block:: ocaml

  val cpptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5906>`__



.. code-block:: ocaml

  val zpptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5909>`__



.. code-block:: ocaml

  val spstrf : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> piv:(int32 ptr) -> rank:(int32 ptr) -> tol:float -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5912>`__



.. code-block:: ocaml

  val dpstrf : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> piv:(int32 ptr) -> rank:(int32 ptr) -> tol:float -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5915>`__



.. code-block:: ocaml

  val cpstrf : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> piv:(int32 ptr) -> rank:(int32 ptr) -> tol:float -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5918>`__



.. code-block:: ocaml

  val zpstrf : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> piv:(int32 ptr) -> rank:(int32 ptr) -> tol:float -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5921>`__



.. code-block:: ocaml

  val sptcon : n:int -> d:(float ptr) -> e:(float ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5924>`__



.. code-block:: ocaml

  val dptcon : n:int -> d:(float ptr) -> e:(float ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5927>`__



.. code-block:: ocaml

  val cptcon : n:int -> d:(float ptr) -> e:(Complex.t ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5930>`__



.. code-block:: ocaml

  val zptcon : n:int -> d:(float ptr) -> e:(Complex.t ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5933>`__



.. code-block:: ocaml

  val spteqr : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5936>`__



.. code-block:: ocaml

  val dpteqr : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5939>`__



.. code-block:: ocaml

  val cpteqr : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5942>`__



.. code-block:: ocaml

  val zpteqr : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5945>`__



.. code-block:: ocaml

  val sptrfs : layout:int -> n:int -> nrhs:int -> d:(float ptr) -> e:(float ptr) -> df:(float ptr) -> ef:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5948>`__



.. code-block:: ocaml

  val dptrfs : layout:int -> n:int -> nrhs:int -> d:(float ptr) -> e:(float ptr) -> df:(float ptr) -> ef:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5951>`__



.. code-block:: ocaml

  val cptrfs : layout:int -> uplo:char -> n:int -> nrhs:int -> d:(float ptr) -> e:(Complex.t ptr) -> df:(float ptr) -> ef:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5954>`__



.. code-block:: ocaml

  val zptrfs : layout:int -> uplo:char -> n:int -> nrhs:int -> d:(float ptr) -> e:(Complex.t ptr) -> df:(float ptr) -> ef:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5957>`__



.. code-block:: ocaml

  val sptsv : layout:int -> n:int -> nrhs:int -> d:(float ptr) -> e:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5960>`__



.. code-block:: ocaml

  val dptsv : layout:int -> n:int -> nrhs:int -> d:(float ptr) -> e:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5963>`__



.. code-block:: ocaml

  val cptsv : layout:int -> n:int -> nrhs:int -> d:(float ptr) -> e:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5966>`__



.. code-block:: ocaml

  val zptsv : layout:int -> n:int -> nrhs:int -> d:(float ptr) -> e:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5969>`__



.. code-block:: ocaml

  val sptsvx : layout:int -> fact:char -> n:int -> nrhs:int -> d:(float ptr) -> e:(float ptr) -> df:(float ptr) -> ef:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5972>`__



.. code-block:: ocaml

  val dptsvx : layout:int -> fact:char -> n:int -> nrhs:int -> d:(float ptr) -> e:(float ptr) -> df:(float ptr) -> ef:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5975>`__



.. code-block:: ocaml

  val cptsvx : layout:int -> fact:char -> n:int -> nrhs:int -> d:(float ptr) -> e:(Complex.t ptr) -> df:(float ptr) -> ef:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5978>`__



.. code-block:: ocaml

  val zptsvx : layout:int -> fact:char -> n:int -> nrhs:int -> d:(float ptr) -> e:(Complex.t ptr) -> df:(float ptr) -> ef:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5981>`__



.. code-block:: ocaml

  val spttrf : n:int -> d:(float ptr) -> e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5984>`__



.. code-block:: ocaml

  val dpttrf : n:int -> d:(float ptr) -> e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5987>`__



.. code-block:: ocaml

  val cpttrf : n:int -> d:(float ptr) -> e:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5990>`__



.. code-block:: ocaml

  val zpttrf : n:int -> d:(float ptr) -> e:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5993>`__



.. code-block:: ocaml

  val spttrs : layout:int -> n:int -> nrhs:int -> d:(float ptr) -> e:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5996>`__



.. code-block:: ocaml

  val dpttrs : layout:int -> n:int -> nrhs:int -> d:(float ptr) -> e:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L5999>`__



.. code-block:: ocaml

  val cpttrs : layout:int -> uplo:char -> n:int -> nrhs:int -> d:(float ptr) -> e:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6002>`__



.. code-block:: ocaml

  val zpttrs : layout:int -> uplo:char -> n:int -> nrhs:int -> d:(float ptr) -> e:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6005>`__



.. code-block:: ocaml

  val ssbev : layout:int -> jobz:char -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6008>`__



.. code-block:: ocaml

  val dsbev : layout:int -> jobz:char -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6011>`__



.. code-block:: ocaml

  val ssbevd : layout:int -> jobz:char -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6014>`__



.. code-block:: ocaml

  val dsbevd : layout:int -> jobz:char -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6017>`__



.. code-block:: ocaml

  val ssbevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> q:(float ptr) -> ldq:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6020>`__



.. code-block:: ocaml

  val dsbevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> q:(float ptr) -> ldq:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6023>`__



.. code-block:: ocaml

  val ssbgst : layout:int -> vect:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(float ptr) -> ldab:int -> bb:(float ptr) -> ldbb:int -> x:(float ptr) -> ldx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6026>`__



.. code-block:: ocaml

  val dsbgst : layout:int -> vect:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(float ptr) -> ldab:int -> bb:(float ptr) -> ldbb:int -> x:(float ptr) -> ldx:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6029>`__



.. code-block:: ocaml

  val ssbgv : layout:int -> jobz:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(float ptr) -> ldab:int -> bb:(float ptr) -> ldbb:int -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6032>`__



.. code-block:: ocaml

  val dsbgv : layout:int -> jobz:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(float ptr) -> ldab:int -> bb:(float ptr) -> ldbb:int -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6035>`__



.. code-block:: ocaml

  val ssbgvd : layout:int -> jobz:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(float ptr) -> ldab:int -> bb:(float ptr) -> ldbb:int -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6038>`__



.. code-block:: ocaml

  val dsbgvd : layout:int -> jobz:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(float ptr) -> ldab:int -> bb:(float ptr) -> ldbb:int -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6041>`__



.. code-block:: ocaml

  val ssbgvx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(float ptr) -> ldab:int -> bb:(float ptr) -> ldbb:int -> q:(float ptr) -> ldq:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6044>`__



.. code-block:: ocaml

  val dsbgvx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> ka:int -> kb:int -> ab:(float ptr) -> ldab:int -> bb:(float ptr) -> ldbb:int -> q:(float ptr) -> ldq:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6047>`__



.. code-block:: ocaml

  val ssbtrd : layout:int -> vect:char -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> d:(float ptr) -> e:(float ptr) -> q:(float ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6050>`__



.. code-block:: ocaml

  val dsbtrd : layout:int -> vect:char -> uplo:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> d:(float ptr) -> e:(float ptr) -> q:(float ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6053>`__



.. code-block:: ocaml

  val ssfrk : layout:int -> transr:char -> uplo:char -> trans:char -> n:int -> k:int -> alpha:float -> a:(float ptr) -> lda:int -> beta:float -> c:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6056>`__



.. code-block:: ocaml

  val dsfrk : layout:int -> transr:char -> uplo:char -> trans:char -> n:int -> k:int -> alpha:float -> a:(float ptr) -> lda:int -> beta:float -> c:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6059>`__



.. code-block:: ocaml

  val sspcon : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6062>`__



.. code-block:: ocaml

  val dspcon : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6065>`__



.. code-block:: ocaml

  val cspcon : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6068>`__



.. code-block:: ocaml

  val zspcon : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6071>`__



.. code-block:: ocaml

  val sspev : layout:int -> jobz:char -> uplo:char -> n:int -> ap:(float ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6074>`__



.. code-block:: ocaml

  val dspev : layout:int -> jobz:char -> uplo:char -> n:int -> ap:(float ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6077>`__



.. code-block:: ocaml

  val sspevd : layout:int -> jobz:char -> uplo:char -> n:int -> ap:(float ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6080>`__



.. code-block:: ocaml

  val dspevd : layout:int -> jobz:char -> uplo:char -> n:int -> ap:(float ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6083>`__



.. code-block:: ocaml

  val sspevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> ap:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6086>`__



.. code-block:: ocaml

  val dspevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> ap:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6089>`__



.. code-block:: ocaml

  val sspgst : layout:int -> ityp:int -> uplo:char -> n:int -> ap:(float ptr) -> bp:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6092>`__



.. code-block:: ocaml

  val dspgst : layout:int -> ityp:int -> uplo:char -> n:int -> ap:(float ptr) -> bp:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6095>`__



.. code-block:: ocaml

  val sspgv : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> ap:(float ptr) -> bp:(float ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6098>`__



.. code-block:: ocaml

  val dspgv : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> ap:(float ptr) -> bp:(float ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6101>`__



.. code-block:: ocaml

  val sspgvd : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> ap:(float ptr) -> bp:(float ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6104>`__



.. code-block:: ocaml

  val dspgvd : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> ap:(float ptr) -> bp:(float ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6107>`__



.. code-block:: ocaml

  val sspgvx : layout:int -> ityp:int -> jobz:char -> range:char -> uplo:char -> n:int -> ap:(float ptr) -> bp:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6110>`__



.. code-block:: ocaml

  val dspgvx : layout:int -> ityp:int -> jobz:char -> range:char -> uplo:char -> n:int -> ap:(float ptr) -> bp:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6113>`__



.. code-block:: ocaml

  val ssprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> afp:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6116>`__



.. code-block:: ocaml

  val dsprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> afp:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6119>`__



.. code-block:: ocaml

  val csprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6122>`__



.. code-block:: ocaml

  val zsprfs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6125>`__



.. code-block:: ocaml

  val sspsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6128>`__



.. code-block:: ocaml

  val dspsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6131>`__



.. code-block:: ocaml

  val cspsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6134>`__



.. code-block:: ocaml

  val zspsv : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6137>`__



.. code-block:: ocaml

  val sspsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> afp:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6140>`__



.. code-block:: ocaml

  val dspsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> afp:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6143>`__



.. code-block:: ocaml

  val cspsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6146>`__



.. code-block:: ocaml

  val zspsvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> afp:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6149>`__



.. code-block:: ocaml

  val ssptrd : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> d:(float ptr) -> e:(float ptr) -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6152>`__



.. code-block:: ocaml

  val dsptrd : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> d:(float ptr) -> e:(float ptr) -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6155>`__



.. code-block:: ocaml

  val ssptrf : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6158>`__



.. code-block:: ocaml

  val dsptrf : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6161>`__



.. code-block:: ocaml

  val csptrf : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6164>`__



.. code-block:: ocaml

  val zsptrf : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6167>`__



.. code-block:: ocaml

  val ssptri : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6170>`__



.. code-block:: ocaml

  val dsptri : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6173>`__



.. code-block:: ocaml

  val csptri : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6176>`__



.. code-block:: ocaml

  val zsptri : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6179>`__



.. code-block:: ocaml

  val ssptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6182>`__



.. code-block:: ocaml

  val dsptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(float ptr) -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6185>`__



.. code-block:: ocaml

  val csptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6188>`__



.. code-block:: ocaml

  val zsptrs : layout:int -> uplo:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6191>`__



.. code-block:: ocaml

  val sstebz : range:char -> order:char -> n:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> d:(float ptr) -> e:(float ptr) -> m:(int32 ptr) -> nsplit:(int32 ptr) -> w:(float ptr) -> iblock:(int32 ptr) -> isplit:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6194>`__



.. code-block:: ocaml

  val dstebz : range:char -> order:char -> n:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> d:(float ptr) -> e:(float ptr) -> m:(int32 ptr) -> nsplit:(int32 ptr) -> w:(float ptr) -> iblock:(int32 ptr) -> isplit:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6197>`__



.. code-block:: ocaml

  val sstedc : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6200>`__



.. code-block:: ocaml

  val dstedc : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6203>`__



.. code-block:: ocaml

  val cstedc : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6206>`__



.. code-block:: ocaml

  val zstedc : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6209>`__



.. code-block:: ocaml

  val sstegr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6212>`__



.. code-block:: ocaml

  val dstegr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6215>`__



.. code-block:: ocaml

  val cstegr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6218>`__



.. code-block:: ocaml

  val zstegr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6221>`__



.. code-block:: ocaml

  val sstein : layout:int -> n:int -> d:(float ptr) -> e:(float ptr) -> m:int -> w:(float ptr) -> iblock:(int32 ptr) -> isplit:(int32 ptr) -> z:(float ptr) -> ldz:int -> ifailv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6224>`__



.. code-block:: ocaml

  val dstein : layout:int -> n:int -> d:(float ptr) -> e:(float ptr) -> m:int -> w:(float ptr) -> iblock:(int32 ptr) -> isplit:(int32 ptr) -> z:(float ptr) -> ldz:int -> ifailv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6227>`__



.. code-block:: ocaml

  val cstein : layout:int -> n:int -> d:(float ptr) -> e:(float ptr) -> m:int -> w:(float ptr) -> iblock:(int32 ptr) -> isplit:(int32 ptr) -> z:(Complex.t ptr) -> ldz:int -> ifailv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6230>`__



.. code-block:: ocaml

  val zstein : layout:int -> n:int -> d:(float ptr) -> e:(float ptr) -> m:int -> w:(float ptr) -> iblock:(int32 ptr) -> isplit:(int32 ptr) -> z:(Complex.t ptr) -> ldz:int -> ifailv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6233>`__



.. code-block:: ocaml

  val sstemr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> nzc:int -> isuppz:(int32 ptr) -> tryrac:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6236>`__



.. code-block:: ocaml

  val dstemr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> nzc:int -> isuppz:(int32 ptr) -> tryrac:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6239>`__



.. code-block:: ocaml

  val cstemr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> nzc:int -> isuppz:(int32 ptr) -> tryrac:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6242>`__



.. code-block:: ocaml

  val zstemr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> m:(int32 ptr) -> w:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> nzc:int -> isuppz:(int32 ptr) -> tryrac:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6245>`__



.. code-block:: ocaml

  val ssteqr : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6248>`__



.. code-block:: ocaml

  val dsteqr : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6251>`__



.. code-block:: ocaml

  val csteqr : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6254>`__



.. code-block:: ocaml

  val zsteqr : layout:int -> compz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(Complex.t ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6257>`__



.. code-block:: ocaml

  val ssterf : n:int -> d:(float ptr) -> e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6260>`__



.. code-block:: ocaml

  val dsterf : n:int -> d:(float ptr) -> e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6263>`__



.. code-block:: ocaml

  val sstev : layout:int -> jobz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6266>`__



.. code-block:: ocaml

  val dstev : layout:int -> jobz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6269>`__



.. code-block:: ocaml

  val sstevd : layout:int -> jobz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6272>`__



.. code-block:: ocaml

  val dstevd : layout:int -> jobz:char -> n:int -> d:(float ptr) -> e:(float ptr) -> z:(float ptr) -> ldz:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6275>`__



.. code-block:: ocaml

  val sstevr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6278>`__



.. code-block:: ocaml

  val dstevr : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6281>`__



.. code-block:: ocaml

  val sstevx : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6284>`__



.. code-block:: ocaml

  val dstevx : layout:int -> jobz:char -> range:char -> n:int -> d:(float ptr) -> e:(float ptr) -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6287>`__



.. code-block:: ocaml

  val ssycon : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6290>`__



.. code-block:: ocaml

  val dsycon : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6293>`__



.. code-block:: ocaml

  val csycon : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6296>`__



.. code-block:: ocaml

  val zsycon : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> anorm:float -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6299>`__



.. code-block:: ocaml

  val ssyequb : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6302>`__



.. code-block:: ocaml

  val dsyequb : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6305>`__



.. code-block:: ocaml

  val csyequb : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6308>`__



.. code-block:: ocaml

  val zsyequb : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> s:(float ptr) -> scond:(float ptr) -> amax:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6311>`__



.. code-block:: ocaml

  val ssyev : layout:int -> jobz:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6314>`__



.. code-block:: ocaml

  val dsyev : layout:int -> jobz:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6317>`__



.. code-block:: ocaml

  val ssyevd : layout:int -> jobz:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6320>`__



.. code-block:: ocaml

  val dsyevd : layout:int -> jobz:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6323>`__



.. code-block:: ocaml

  val ssyevr : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6326>`__



.. code-block:: ocaml

  val dsyevr : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> isuppz:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6329>`__



.. code-block:: ocaml

  val ssyevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6332>`__



.. code-block:: ocaml

  val dsyevx : layout:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6335>`__



.. code-block:: ocaml

  val ssygst : layout:int -> ityp:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6338>`__



.. code-block:: ocaml

  val dsygst : layout:int -> ityp:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6341>`__



.. code-block:: ocaml

  val ssygv : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6344>`__



.. code-block:: ocaml

  val dsygv : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6347>`__



.. code-block:: ocaml

  val ssygvd : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6350>`__



.. code-block:: ocaml

  val dsygvd : layout:int -> ityp:int -> jobz:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> w:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6353>`__



.. code-block:: ocaml

  val ssygvx : layout:int -> ityp:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6356>`__



.. code-block:: ocaml

  val dsygvx : layout:int -> ityp:int -> jobz:char -> range:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> m:(int32 ptr) -> w:(float ptr) -> z:(float ptr) -> ldz:int -> ifail:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6359>`__



.. code-block:: ocaml

  val ssyrfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6362>`__



.. code-block:: ocaml

  val dsyrfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6365>`__



.. code-block:: ocaml

  val csyrfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6368>`__



.. code-block:: ocaml

  val zsyrfs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6371>`__



.. code-block:: ocaml

  val ssysv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6374>`__



.. code-block:: ocaml

  val dsysv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6377>`__



.. code-block:: ocaml

  val csysv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6380>`__



.. code-block:: ocaml

  val zsysv : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6383>`__



.. code-block:: ocaml

  val ssysvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6386>`__



.. code-block:: ocaml

  val dsysvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> af:(float ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6389>`__



.. code-block:: ocaml

  val csysvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6392>`__



.. code-block:: ocaml

  val zsysvx : layout:int -> fact:char -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> af:(Complex.t ptr) -> ldaf:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> rcond:(float ptr) -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6395>`__



.. code-block:: ocaml

  val ssytrd : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> d:(float ptr) -> e:(float ptr) -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6398>`__



.. code-block:: ocaml

  val dsytrd : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> d:(float ptr) -> e:(float ptr) -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6401>`__



.. code-block:: ocaml

  val ssytrf : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6404>`__



.. code-block:: ocaml

  val dsytrf : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6407>`__



.. code-block:: ocaml

  val csytrf : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6410>`__



.. code-block:: ocaml

  val zsytrf : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6413>`__



.. code-block:: ocaml

  val ssytri : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6416>`__



.. code-block:: ocaml

  val dsytri : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6419>`__



.. code-block:: ocaml

  val csytri : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6422>`__



.. code-block:: ocaml

  val zsytri : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6425>`__



.. code-block:: ocaml

  val ssytrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6428>`__



.. code-block:: ocaml

  val dsytrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6431>`__



.. code-block:: ocaml

  val csytrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6434>`__



.. code-block:: ocaml

  val zsytrs : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6437>`__



.. code-block:: ocaml

  val stbcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6440>`__



.. code-block:: ocaml

  val dtbcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> kd:int -> ab:(float ptr) -> ldab:int -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6443>`__



.. code-block:: ocaml

  val ctbcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6446>`__



.. code-block:: ocaml

  val ztbcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> kd:int -> ab:(Complex.t ptr) -> ldab:int -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6449>`__



.. code-block:: ocaml

  val stbrfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6452>`__



.. code-block:: ocaml

  val dtbrfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6455>`__



.. code-block:: ocaml

  val ctbrfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6458>`__



.. code-block:: ocaml

  val ztbrfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6461>`__



.. code-block:: ocaml

  val stbtrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6464>`__



.. code-block:: ocaml

  val dtbtrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> kd:int -> nrhs:int -> ab:(float ptr) -> ldab:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6467>`__



.. code-block:: ocaml

  val ctbtrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6470>`__



.. code-block:: ocaml

  val ztbtrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> kd:int -> nrhs:int -> ab:(Complex.t ptr) -> ldab:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6473>`__



.. code-block:: ocaml

  val stfsm : layout:int -> transr:char -> side:char -> uplo:char -> trans:char -> diag:char -> m:int -> n:int -> alpha:float -> a:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6476>`__



.. code-block:: ocaml

  val dtfsm : layout:int -> transr:char -> side:char -> uplo:char -> trans:char -> diag:char -> m:int -> n:int -> alpha:float -> a:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6479>`__



.. code-block:: ocaml

  val ctfsm : layout:int -> transr:char -> side:char -> uplo:char -> trans:char -> diag:char -> m:int -> n:int -> alpha:Complex.t -> a:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6482>`__



.. code-block:: ocaml

  val ztfsm : layout:int -> transr:char -> side:char -> uplo:char -> trans:char -> diag:char -> m:int -> n:int -> alpha:Complex.t -> a:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6485>`__



.. code-block:: ocaml

  val stftri : layout:int -> transr:char -> uplo:char -> diag:char -> n:int -> a:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6488>`__



.. code-block:: ocaml

  val dtftri : layout:int -> transr:char -> uplo:char -> diag:char -> n:int -> a:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6491>`__



.. code-block:: ocaml

  val ctftri : layout:int -> transr:char -> uplo:char -> diag:char -> n:int -> a:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6494>`__



.. code-block:: ocaml

  val ztftri : layout:int -> transr:char -> uplo:char -> diag:char -> n:int -> a:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6497>`__



.. code-block:: ocaml

  val stfttp : layout:int -> transr:char -> uplo:char -> n:int -> arf:(float ptr) -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6500>`__



.. code-block:: ocaml

  val dtfttp : layout:int -> transr:char -> uplo:char -> n:int -> arf:(float ptr) -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6503>`__



.. code-block:: ocaml

  val ctfttp : layout:int -> transr:char -> uplo:char -> n:int -> arf:(Complex.t ptr) -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6506>`__



.. code-block:: ocaml

  val ztfttp : layout:int -> transr:char -> uplo:char -> n:int -> arf:(Complex.t ptr) -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6509>`__



.. code-block:: ocaml

  val stfttr : layout:int -> transr:char -> uplo:char -> n:int -> arf:(float ptr) -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6512>`__



.. code-block:: ocaml

  val dtfttr : layout:int -> transr:char -> uplo:char -> n:int -> arf:(float ptr) -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6515>`__



.. code-block:: ocaml

  val ctfttr : layout:int -> transr:char -> uplo:char -> n:int -> arf:(Complex.t ptr) -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6518>`__



.. code-block:: ocaml

  val ztfttr : layout:int -> transr:char -> uplo:char -> n:int -> arf:(Complex.t ptr) -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6521>`__



.. code-block:: ocaml

  val stgevc : layout:int -> side:char -> howmny:char -> select:(int32 ptr) -> n:int -> s:(float ptr) -> lds:int -> p:(float ptr) -> ldp:int -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6524>`__



.. code-block:: ocaml

  val dtgevc : layout:int -> side:char -> howmny:char -> select:(int32 ptr) -> n:int -> s:(float ptr) -> lds:int -> p:(float ptr) -> ldp:int -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6527>`__



.. code-block:: ocaml

  val ctgevc : layout:int -> side:char -> howmny:char -> select:(int32 ptr) -> n:int -> s:(Complex.t ptr) -> lds:int -> p:(Complex.t ptr) -> ldp:int -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6530>`__



.. code-block:: ocaml

  val ztgevc : layout:int -> side:char -> howmny:char -> select:(int32 ptr) -> n:int -> s:(Complex.t ptr) -> lds:int -> p:(Complex.t ptr) -> ldp:int -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6533>`__



.. code-block:: ocaml

  val stgexc : layout:int -> wantq:int -> wantz:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> ifst:(int32 ptr) -> ilst:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6536>`__



.. code-block:: ocaml

  val dtgexc : layout:int -> wantq:int -> wantz:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> ifst:(int32 ptr) -> ilst:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6539>`__



.. code-block:: ocaml

  val ctgexc : layout:int -> wantq:int -> wantz:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> ifst:int -> ilst:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6542>`__



.. code-block:: ocaml

  val ztgexc : layout:int -> wantq:int -> wantz:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> ifst:int -> ilst:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6545>`__



.. code-block:: ocaml

  val stgsen : layout:int -> ijob:int -> wantq:int -> wantz:int -> select:(int32 ptr) -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> m:(int32 ptr) -> pl:(float ptr) -> pr:(float ptr) -> dif:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6548>`__



.. code-block:: ocaml

  val dtgsen : layout:int -> ijob:int -> wantq:int -> wantz:int -> select:(int32 ptr) -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> alphar:(float ptr) -> alphai:(float ptr) -> beta:(float ptr) -> q:(float ptr) -> ldq:int -> z:(float ptr) -> ldz:int -> m:(int32 ptr) -> pl:(float ptr) -> pr:(float ptr) -> dif:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6551>`__



.. code-block:: ocaml

  val ctgsen : layout:int -> ijob:int -> wantq:int -> wantz:int -> select:(int32 ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> m:(int32 ptr) -> pl:(float ptr) -> pr:(float ptr) -> dif:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6554>`__



.. code-block:: ocaml

  val ztgsen : layout:int -> ijob:int -> wantq:int -> wantz:int -> select:(int32 ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> alpha:(Complex.t ptr) -> beta:(Complex.t ptr) -> q:(Complex.t ptr) -> ldq:int -> z:(Complex.t ptr) -> ldz:int -> m:(int32 ptr) -> pl:(float ptr) -> pr:(float ptr) -> dif:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6557>`__



.. code-block:: ocaml

  val stgsja : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> p:int -> n:int -> k:int -> l:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> tola:float -> tolb:float -> alpha:(float ptr) -> beta:(float ptr) -> u:(float ptr) -> ldu:int -> v:(float ptr) -> ldv:int -> q:(float ptr) -> ldq:int -> ncycle:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6560>`__



.. code-block:: ocaml

  val dtgsja : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> p:int -> n:int -> k:int -> l:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> tola:float -> tolb:float -> alpha:(float ptr) -> beta:(float ptr) -> u:(float ptr) -> ldu:int -> v:(float ptr) -> ldv:int -> q:(float ptr) -> ldq:int -> ncycle:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6563>`__



.. code-block:: ocaml

  val ctgsja : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> p:int -> n:int -> k:int -> l:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> tola:float -> tolb:float -> alpha:(float ptr) -> beta:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> v:(Complex.t ptr) -> ldv:int -> q:(Complex.t ptr) -> ldq:int -> ncycle:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6566>`__



.. code-block:: ocaml

  val ztgsja : layout:int -> jobu:char -> jobv:char -> jobq:char -> m:int -> p:int -> n:int -> k:int -> l:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> tola:float -> tolb:float -> alpha:(float ptr) -> beta:(float ptr) -> u:(Complex.t ptr) -> ldu:int -> v:(Complex.t ptr) -> ldv:int -> q:(Complex.t ptr) -> ldq:int -> ncycle:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6569>`__



.. code-block:: ocaml

  val stgsna : layout:int -> job:char -> howmny:char -> select:(int32 ptr) -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> s:(float ptr) -> dif:(float ptr) -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6572>`__



.. code-block:: ocaml

  val dtgsna : layout:int -> job:char -> howmny:char -> select:(int32 ptr) -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> s:(float ptr) -> dif:(float ptr) -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6575>`__



.. code-block:: ocaml

  val ctgsna : layout:int -> job:char -> howmny:char -> select:(int32 ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> s:(float ptr) -> dif:(float ptr) -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6578>`__



.. code-block:: ocaml

  val ztgsna : layout:int -> job:char -> howmny:char -> select:(int32 ptr) -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> s:(float ptr) -> dif:(float ptr) -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6581>`__



.. code-block:: ocaml

  val stgsyl : layout:int -> trans:char -> ijob:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> c:(float ptr) -> ldc:int -> d:(float ptr) -> ldd:int -> e:(float ptr) -> lde:int -> f:(float ptr) -> ldf:int -> scale:(float ptr) -> dif:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6584>`__



.. code-block:: ocaml

  val dtgsyl : layout:int -> trans:char -> ijob:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> c:(float ptr) -> ldc:int -> d:(float ptr) -> ldd:int -> e:(float ptr) -> lde:int -> f:(float ptr) -> ldf:int -> scale:(float ptr) -> dif:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6587>`__



.. code-block:: ocaml

  val ctgsyl : layout:int -> trans:char -> ijob:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> c:(Complex.t ptr) -> ldc:int -> d:(Complex.t ptr) -> ldd:int -> e:(Complex.t ptr) -> lde:int -> f:(Complex.t ptr) -> ldf:int -> scale:(float ptr) -> dif:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6590>`__



.. code-block:: ocaml

  val ztgsyl : layout:int -> trans:char -> ijob:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> c:(Complex.t ptr) -> ldc:int -> d:(Complex.t ptr) -> ldd:int -> e:(Complex.t ptr) -> lde:int -> f:(Complex.t ptr) -> ldf:int -> scale:(float ptr) -> dif:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6593>`__



.. code-block:: ocaml

  val stpcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> ap:(float ptr) -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6596>`__



.. code-block:: ocaml

  val dtpcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> ap:(float ptr) -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6599>`__



.. code-block:: ocaml

  val ctpcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> ap:(Complex.t ptr) -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6602>`__



.. code-block:: ocaml

  val ztpcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> ap:(Complex.t ptr) -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6605>`__



.. code-block:: ocaml

  val stprfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> ap:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6608>`__



.. code-block:: ocaml

  val dtprfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> ap:(float ptr) -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6611>`__



.. code-block:: ocaml

  val ctprfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6614>`__



.. code-block:: ocaml

  val ztprfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6617>`__



.. code-block:: ocaml

  val stptri : layout:int -> uplo:char -> diag:char -> n:int -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6620>`__



.. code-block:: ocaml

  val dtptri : layout:int -> uplo:char -> diag:char -> n:int -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6623>`__



.. code-block:: ocaml

  val ctptri : layout:int -> uplo:char -> diag:char -> n:int -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6626>`__



.. code-block:: ocaml

  val ztptri : layout:int -> uplo:char -> diag:char -> n:int -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6629>`__



.. code-block:: ocaml

  val stptrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> ap:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6632>`__



.. code-block:: ocaml

  val dtptrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> ap:(float ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6635>`__



.. code-block:: ocaml

  val ctptrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6638>`__



.. code-block:: ocaml

  val ztptrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> ap:(Complex.t ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6641>`__



.. code-block:: ocaml

  val stpttf : layout:int -> transr:char -> uplo:char -> n:int -> ap:(float ptr) -> arf:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6644>`__



.. code-block:: ocaml

  val dtpttf : layout:int -> transr:char -> uplo:char -> n:int -> ap:(float ptr) -> arf:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6647>`__



.. code-block:: ocaml

  val ctpttf : layout:int -> transr:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> arf:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6650>`__



.. code-block:: ocaml

  val ztpttf : layout:int -> transr:char -> uplo:char -> n:int -> ap:(Complex.t ptr) -> arf:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6653>`__



.. code-block:: ocaml

  val stpttr : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6656>`__



.. code-block:: ocaml

  val dtpttr : layout:int -> uplo:char -> n:int -> ap:(float ptr) -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6659>`__



.. code-block:: ocaml

  val ctpttr : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6662>`__



.. code-block:: ocaml

  val ztpttr : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6665>`__



.. code-block:: ocaml

  val strcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> a:(float ptr) -> lda:int -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6668>`__



.. code-block:: ocaml

  val dtrcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> a:(float ptr) -> lda:int -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6671>`__



.. code-block:: ocaml

  val ctrcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> a:(Complex.t ptr) -> lda:int -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6674>`__



.. code-block:: ocaml

  val ztrcon : layout:int -> norm:char -> uplo:char -> diag:char -> n:int -> a:(Complex.t ptr) -> lda:int -> rcond:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6677>`__



.. code-block:: ocaml

  val strevc : layout:int -> side:char -> howmny:char -> select:(int32 ptr) -> n:int -> t:(float ptr) -> ldt:int -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6680>`__



.. code-block:: ocaml

  val dtrevc : layout:int -> side:char -> howmny:char -> select:(int32 ptr) -> n:int -> t:(float ptr) -> ldt:int -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6683>`__



.. code-block:: ocaml

  val ctrevc : layout:int -> side:char -> howmny:char -> select:(int32 ptr) -> n:int -> t:(Complex.t ptr) -> ldt:int -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6686>`__



.. code-block:: ocaml

  val ztrevc : layout:int -> side:char -> howmny:char -> select:(int32 ptr) -> n:int -> t:(Complex.t ptr) -> ldt:int -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6689>`__



.. code-block:: ocaml

  val strexc : layout:int -> compq:char -> n:int -> t:(float ptr) -> ldt:int -> q:(float ptr) -> ldq:int -> ifst:(int32 ptr) -> ilst:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6692>`__



.. code-block:: ocaml

  val dtrexc : layout:int -> compq:char -> n:int -> t:(float ptr) -> ldt:int -> q:(float ptr) -> ldq:int -> ifst:(int32 ptr) -> ilst:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6695>`__



.. code-block:: ocaml

  val ctrexc : layout:int -> compq:char -> n:int -> t:(Complex.t ptr) -> ldt:int -> q:(Complex.t ptr) -> ldq:int -> ifst:int -> ilst:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6698>`__



.. code-block:: ocaml

  val ztrexc : layout:int -> compq:char -> n:int -> t:(Complex.t ptr) -> ldt:int -> q:(Complex.t ptr) -> ldq:int -> ifst:int -> ilst:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6701>`__



.. code-block:: ocaml

  val strrfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6704>`__



.. code-block:: ocaml

  val dtrrfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> x:(float ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6707>`__



.. code-block:: ocaml

  val ctrrfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6710>`__



.. code-block:: ocaml

  val ztrrfs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> x:(Complex.t ptr) -> ldx:int -> ferr:(float ptr) -> berr:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6713>`__



.. code-block:: ocaml

  val strsen : layout:int -> job:char -> compq:char -> select:(int32 ptr) -> n:int -> t:(float ptr) -> ldt:int -> q:(float ptr) -> ldq:int -> wr:(float ptr) -> wi:(float ptr) -> m:(int32 ptr) -> s:(float ptr) -> sep:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6716>`__



.. code-block:: ocaml

  val dtrsen : layout:int -> job:char -> compq:char -> select:(int32 ptr) -> n:int -> t:(float ptr) -> ldt:int -> q:(float ptr) -> ldq:int -> wr:(float ptr) -> wi:(float ptr) -> m:(int32 ptr) -> s:(float ptr) -> sep:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6719>`__



.. code-block:: ocaml

  val ctrsen : layout:int -> job:char -> compq:char -> select:(int32 ptr) -> n:int -> t:(Complex.t ptr) -> ldt:int -> q:(Complex.t ptr) -> ldq:int -> w:(Complex.t ptr) -> m:(int32 ptr) -> s:(float ptr) -> sep:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6722>`__



.. code-block:: ocaml

  val ztrsen : layout:int -> job:char -> compq:char -> select:(int32 ptr) -> n:int -> t:(Complex.t ptr) -> ldt:int -> q:(Complex.t ptr) -> ldq:int -> w:(Complex.t ptr) -> m:(int32 ptr) -> s:(float ptr) -> sep:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6725>`__



.. code-block:: ocaml

  val strsna : layout:int -> job:char -> howmny:char -> select:(int32 ptr) -> n:int -> t:(float ptr) -> ldt:int -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> s:(float ptr) -> sep:(float ptr) -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6728>`__



.. code-block:: ocaml

  val dtrsna : layout:int -> job:char -> howmny:char -> select:(int32 ptr) -> n:int -> t:(float ptr) -> ldt:int -> vl:(float ptr) -> ldvl:int -> vr:(float ptr) -> ldvr:int -> s:(float ptr) -> sep:(float ptr) -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6731>`__



.. code-block:: ocaml

  val ctrsna : layout:int -> job:char -> howmny:char -> select:(int32 ptr) -> n:int -> t:(Complex.t ptr) -> ldt:int -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> s:(float ptr) -> sep:(float ptr) -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6734>`__



.. code-block:: ocaml

  val ztrsna : layout:int -> job:char -> howmny:char -> select:(int32 ptr) -> n:int -> t:(Complex.t ptr) -> ldt:int -> vl:(Complex.t ptr) -> ldvl:int -> vr:(Complex.t ptr) -> ldvr:int -> s:(float ptr) -> sep:(float ptr) -> mm:int -> m:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6737>`__



.. code-block:: ocaml

  val strsyl : layout:int -> trana:char -> tranb:char -> isgn:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> c:(float ptr) -> ldc:int -> scale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6740>`__



.. code-block:: ocaml

  val dtrsyl : layout:int -> trana:char -> tranb:char -> isgn:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> c:(float ptr) -> ldc:int -> scale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6743>`__



.. code-block:: ocaml

  val ctrsyl : layout:int -> trana:char -> tranb:char -> isgn:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> c:(Complex.t ptr) -> ldc:int -> scale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6746>`__



.. code-block:: ocaml

  val ztrsyl : layout:int -> trana:char -> tranb:char -> isgn:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> c:(Complex.t ptr) -> ldc:int -> scale:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6749>`__



.. code-block:: ocaml

  val strtri : layout:int -> uplo:char -> diag:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6752>`__



.. code-block:: ocaml

  val dtrtri : layout:int -> uplo:char -> diag:char -> n:int -> a:(float ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6755>`__



.. code-block:: ocaml

  val ctrtri : layout:int -> uplo:char -> diag:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6758>`__



.. code-block:: ocaml

  val ztrtri : layout:int -> uplo:char -> diag:char -> n:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6761>`__



.. code-block:: ocaml

  val strtrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6764>`__



.. code-block:: ocaml

  val dtrtrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6767>`__



.. code-block:: ocaml

  val ctrtrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6770>`__



.. code-block:: ocaml

  val ztrtrs : layout:int -> uplo:char -> trans:char -> diag:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6773>`__



.. code-block:: ocaml

  val strttf : layout:int -> transr:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> arf:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6776>`__



.. code-block:: ocaml

  val dtrttf : layout:int -> transr:char -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> arf:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6779>`__



.. code-block:: ocaml

  val ctrttf : layout:int -> transr:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> arf:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6782>`__



.. code-block:: ocaml

  val ztrttf : layout:int -> transr:char -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> arf:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6785>`__



.. code-block:: ocaml

  val strttp : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6788>`__



.. code-block:: ocaml

  val dtrttp : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ap:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6791>`__



.. code-block:: ocaml

  val ctrttp : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6794>`__



.. code-block:: ocaml

  val ztrttp : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ap:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6797>`__



.. code-block:: ocaml

  val stzrzf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6800>`__



.. code-block:: ocaml

  val dtzrzf : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> tau:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6803>`__



.. code-block:: ocaml

  val ctzrzf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6806>`__



.. code-block:: ocaml

  val ztzrzf : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6809>`__



.. code-block:: ocaml

  val cungbr : layout:int -> vect:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6812>`__



.. code-block:: ocaml

  val zungbr : layout:int -> vect:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6815>`__



.. code-block:: ocaml

  val cunghr : layout:int -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6818>`__



.. code-block:: ocaml

  val zunghr : layout:int -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6821>`__



.. code-block:: ocaml

  val cunglq : layout:int -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6824>`__



.. code-block:: ocaml

  val zunglq : layout:int -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6827>`__



.. code-block:: ocaml

  val cungql : layout:int -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6830>`__



.. code-block:: ocaml

  val zungql : layout:int -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6833>`__



.. code-block:: ocaml

  val cungqr : layout:int -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6836>`__



.. code-block:: ocaml

  val zungqr : layout:int -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6839>`__



.. code-block:: ocaml

  val cungrq : layout:int -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6842>`__



.. code-block:: ocaml

  val zungrq : layout:int -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6845>`__



.. code-block:: ocaml

  val cungtr : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6848>`__



.. code-block:: ocaml

  val zungtr : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6851>`__



.. code-block:: ocaml

  val cunmbr : layout:int -> vect:char -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6854>`__



.. code-block:: ocaml

  val zunmbr : layout:int -> vect:char -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6857>`__



.. code-block:: ocaml

  val cunmhr : layout:int -> side:char -> trans:char -> m:int -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6860>`__



.. code-block:: ocaml

  val zunmhr : layout:int -> side:char -> trans:char -> m:int -> n:int -> ilo:int -> ihi:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6863>`__



.. code-block:: ocaml

  val cunmlq : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6866>`__



.. code-block:: ocaml

  val zunmlq : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6869>`__



.. code-block:: ocaml

  val cunmql : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6872>`__



.. code-block:: ocaml

  val zunmql : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6875>`__



.. code-block:: ocaml

  val cunmqr : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6878>`__



.. code-block:: ocaml

  val zunmqr : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6881>`__



.. code-block:: ocaml

  val cunmrq : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6884>`__



.. code-block:: ocaml

  val zunmrq : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6887>`__



.. code-block:: ocaml

  val cunmrz : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> l:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6890>`__



.. code-block:: ocaml

  val zunmrz : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> l:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6893>`__



.. code-block:: ocaml

  val cunmtr : layout:int -> side:char -> uplo:char -> trans:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6896>`__



.. code-block:: ocaml

  val zunmtr : layout:int -> side:char -> uplo:char -> trans:char -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6899>`__



.. code-block:: ocaml

  val cupgtr : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> tau:(Complex.t ptr) -> q:(Complex.t ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6902>`__



.. code-block:: ocaml

  val zupgtr : layout:int -> uplo:char -> n:int -> ap:(Complex.t ptr) -> tau:(Complex.t ptr) -> q:(Complex.t ptr) -> ldq:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6905>`__



.. code-block:: ocaml

  val cupmtr : layout:int -> side:char -> uplo:char -> trans:char -> m:int -> n:int -> ap:(Complex.t ptr) -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6908>`__



.. code-block:: ocaml

  val zupmtr : layout:int -> side:char -> uplo:char -> trans:char -> m:int -> n:int -> ap:(Complex.t ptr) -> tau:(Complex.t ptr) -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6911>`__



.. code-block:: ocaml

  val claghe : layout:int -> n:int -> k:int -> d:(float ptr) -> a:(Complex.t ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6914>`__



.. code-block:: ocaml

  val zlaghe : layout:int -> n:int -> k:int -> d:(float ptr) -> a:(Complex.t ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6917>`__



.. code-block:: ocaml

  val slagsy : layout:int -> n:int -> k:int -> d:(float ptr) -> a:(float ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6920>`__



.. code-block:: ocaml

  val dlagsy : layout:int -> n:int -> k:int -> d:(float ptr) -> a:(float ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6923>`__



.. code-block:: ocaml

  val clagsy : layout:int -> n:int -> k:int -> d:(float ptr) -> a:(Complex.t ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6926>`__



.. code-block:: ocaml

  val zlagsy : layout:int -> n:int -> k:int -> d:(float ptr) -> a:(Complex.t ptr) -> lda:int -> iseed:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6929>`__



.. code-block:: ocaml

  val slapmr : layout:int -> forwrd:int -> m:int -> n:int -> x:(float ptr) -> ldx:int -> k:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6932>`__



.. code-block:: ocaml

  val dlapmr : layout:int -> forwrd:int -> m:int -> n:int -> x:(float ptr) -> ldx:int -> k:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6935>`__



.. code-block:: ocaml

  val clapmr : layout:int -> forwrd:int -> m:int -> n:int -> x:(Complex.t ptr) -> ldx:int -> k:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6938>`__



.. code-block:: ocaml

  val zlapmr : layout:int -> forwrd:int -> m:int -> n:int -> x:(Complex.t ptr) -> ldx:int -> k:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6941>`__



.. code-block:: ocaml

  val slapmt : layout:int -> forwrd:int -> m:int -> n:int -> x:(float ptr) -> ldx:int -> k:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6944>`__



.. code-block:: ocaml

  val dlapmt : layout:int -> forwrd:int -> m:int -> n:int -> x:(float ptr) -> ldx:int -> k:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6947>`__



.. code-block:: ocaml

  val clapmt : layout:int -> forwrd:int -> m:int -> n:int -> x:(Complex.t ptr) -> ldx:int -> k:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6950>`__



.. code-block:: ocaml

  val zlapmt : layout:int -> forwrd:int -> m:int -> n:int -> x:(Complex.t ptr) -> ldx:int -> k:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6953>`__



.. code-block:: ocaml

  val slartgp : f:float -> g:float -> cs:(float ptr) -> sn:(float ptr) -> r:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6956>`__



.. code-block:: ocaml

  val dlartgp : f:float -> g:float -> cs:(float ptr) -> sn:(float ptr) -> r:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6959>`__



.. code-block:: ocaml

  val slartgs : x:float -> y:float -> sigma:float -> cs:(float ptr) -> sn:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6962>`__



.. code-block:: ocaml

  val dlartgs : x:float -> y:float -> sigma:float -> cs:(float ptr) -> sn:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6965>`__



.. code-block:: ocaml

  val cbbcsd : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> jobv2t:char -> trans:char -> m:int -> p:int -> q:int -> theta:(float ptr) -> phi:(float ptr) -> u1:(Complex.t ptr) -> ldu1:int -> u2:(Complex.t ptr) -> ldu2:int -> v1t:(Complex.t ptr) -> ldv1t:int -> v2t:(Complex.t ptr) -> ldv2t:int -> b11d:(float ptr) -> b11e:(float ptr) -> b12d:(float ptr) -> b12e:(float ptr) -> b21d:(float ptr) -> b21e:(float ptr) -> b22d:(float ptr) -> b22e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6968>`__



.. code-block:: ocaml

  val cheswapr : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> i1:int -> i2:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6971>`__



.. code-block:: ocaml

  val chetri2 : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6974>`__



.. code-block:: ocaml

  val chetri2x : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> nb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6977>`__



.. code-block:: ocaml

  val chetrs2 : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6980>`__



.. code-block:: ocaml

  val csyconv : layout:int -> uplo:char -> way:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> e:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6983>`__



.. code-block:: ocaml

  val csyswapr : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> i1:int -> i2:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6986>`__



.. code-block:: ocaml

  val csytri2 : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6989>`__



.. code-block:: ocaml

  val csytri2x : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> nb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6992>`__



.. code-block:: ocaml

  val csytrs2 : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6995>`__



.. code-block:: ocaml

  val cunbdb : layout:int -> trans:char -> signs:char -> m:int -> p:int -> q:int -> x11:(Complex.t ptr) -> ldx11:int -> x12:(Complex.t ptr) -> ldx12:int -> x21:(Complex.t ptr) -> ldx21:int -> x22:(Complex.t ptr) -> ldx22:int -> theta:(float ptr) -> phi:(float ptr) -> taup1:(Complex.t ptr) -> taup2:(Complex.t ptr) -> tauq1:(Complex.t ptr) -> tauq2:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L6998>`__



.. code-block:: ocaml

  val cuncsd : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> jobv2t:char -> trans:char -> signs:char -> m:int -> p:int -> q:int -> x11:(Complex.t ptr) -> ldx11:int -> x12:(Complex.t ptr) -> ldx12:int -> x21:(Complex.t ptr) -> ldx21:int -> x22:(Complex.t ptr) -> ldx22:int -> theta:(float ptr) -> u1:(Complex.t ptr) -> ldu1:int -> u2:(Complex.t ptr) -> ldu2:int -> v1t:(Complex.t ptr) -> ldv1t:int -> v2t:(Complex.t ptr) -> ldv2t:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7001>`__



.. code-block:: ocaml

  val cuncsd2by1 : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> m:int -> p:int -> q:int -> x11:(Complex.t ptr) -> ldx11:int -> x21:(Complex.t ptr) -> ldx21:int -> theta:(float ptr) -> u1:(Complex.t ptr) -> ldu1:int -> u2:(Complex.t ptr) -> ldu2:int -> v1t:(Complex.t ptr) -> ldv1t:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7004>`__



.. code-block:: ocaml

  val dbbcsd : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> jobv2t:char -> trans:char -> m:int -> p:int -> q:int -> theta:(float ptr) -> phi:(float ptr) -> u1:(float ptr) -> ldu1:int -> u2:(float ptr) -> ldu2:int -> v1t:(float ptr) -> ldv1t:int -> v2t:(float ptr) -> ldv2t:int -> b11d:(float ptr) -> b11e:(float ptr) -> b12d:(float ptr) -> b12e:(float ptr) -> b21d:(float ptr) -> b21e:(float ptr) -> b22d:(float ptr) -> b22e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7007>`__



.. code-block:: ocaml

  val dorbdb : layout:int -> trans:char -> signs:char -> m:int -> p:int -> q:int -> x11:(float ptr) -> ldx11:int -> x12:(float ptr) -> ldx12:int -> x21:(float ptr) -> ldx21:int -> x22:(float ptr) -> ldx22:int -> theta:(float ptr) -> phi:(float ptr) -> taup1:(float ptr) -> taup2:(float ptr) -> tauq1:(float ptr) -> tauq2:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7010>`__



.. code-block:: ocaml

  val dorcsd : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> jobv2t:char -> trans:char -> signs:char -> m:int -> p:int -> q:int -> x11:(float ptr) -> ldx11:int -> x12:(float ptr) -> ldx12:int -> x21:(float ptr) -> ldx21:int -> x22:(float ptr) -> ldx22:int -> theta:(float ptr) -> u1:(float ptr) -> ldu1:int -> u2:(float ptr) -> ldu2:int -> v1t:(float ptr) -> ldv1t:int -> v2t:(float ptr) -> ldv2t:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7013>`__



.. code-block:: ocaml

  val dorcsd2by1 : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> m:int -> p:int -> q:int -> x11:(float ptr) -> ldx11:int -> x21:(float ptr) -> ldx21:int -> theta:(float ptr) -> u1:(float ptr) -> ldu1:int -> u2:(float ptr) -> ldu2:int -> v1t:(float ptr) -> ldv1t:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7016>`__



.. code-block:: ocaml

  val dsyconv : layout:int -> uplo:char -> way:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7019>`__



.. code-block:: ocaml

  val dsyswapr : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> i1:int -> i2:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7022>`__



.. code-block:: ocaml

  val dsytri2 : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7025>`__



.. code-block:: ocaml

  val dsytri2x : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> nb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7028>`__



.. code-block:: ocaml

  val dsytrs2 : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7031>`__



.. code-block:: ocaml

  val sbbcsd : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> jobv2t:char -> trans:char -> m:int -> p:int -> q:int -> theta:(float ptr) -> phi:(float ptr) -> u1:(float ptr) -> ldu1:int -> u2:(float ptr) -> ldu2:int -> v1t:(float ptr) -> ldv1t:int -> v2t:(float ptr) -> ldv2t:int -> b11d:(float ptr) -> b11e:(float ptr) -> b12d:(float ptr) -> b12e:(float ptr) -> b21d:(float ptr) -> b21e:(float ptr) -> b22d:(float ptr) -> b22e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7034>`__



.. code-block:: ocaml

  val sorbdb : layout:int -> trans:char -> signs:char -> m:int -> p:int -> q:int -> x11:(float ptr) -> ldx11:int -> x12:(float ptr) -> ldx12:int -> x21:(float ptr) -> ldx21:int -> x22:(float ptr) -> ldx22:int -> theta:(float ptr) -> phi:(float ptr) -> taup1:(float ptr) -> taup2:(float ptr) -> tauq1:(float ptr) -> tauq2:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7037>`__



.. code-block:: ocaml

  val sorcsd : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> jobv2t:char -> trans:char -> signs:char -> m:int -> p:int -> q:int -> x11:(float ptr) -> ldx11:int -> x12:(float ptr) -> ldx12:int -> x21:(float ptr) -> ldx21:int -> x22:(float ptr) -> ldx22:int -> theta:(float ptr) -> u1:(float ptr) -> ldu1:int -> u2:(float ptr) -> ldu2:int -> v1t:(float ptr) -> ldv1t:int -> v2t:(float ptr) -> ldv2t:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7040>`__



.. code-block:: ocaml

  val sorcsd2by1 : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> m:int -> p:int -> q:int -> x11:(float ptr) -> ldx11:int -> x21:(float ptr) -> ldx21:int -> theta:(float ptr) -> u1:(float ptr) -> ldu1:int -> u2:(float ptr) -> ldu2:int -> v1t:(float ptr) -> ldv1t:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7043>`__



.. code-block:: ocaml

  val ssyconv : layout:int -> uplo:char -> way:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7046>`__



.. code-block:: ocaml

  val ssyswapr : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> i1:int -> i2:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7049>`__



.. code-block:: ocaml

  val ssytri2 : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7052>`__



.. code-block:: ocaml

  val ssytri2x : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> nb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7055>`__



.. code-block:: ocaml

  val ssytrs2 : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7058>`__



.. code-block:: ocaml

  val zbbcsd : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> jobv2t:char -> trans:char -> m:int -> p:int -> q:int -> theta:(float ptr) -> phi:(float ptr) -> u1:(Complex.t ptr) -> ldu1:int -> u2:(Complex.t ptr) -> ldu2:int -> v1t:(Complex.t ptr) -> ldv1t:int -> v2t:(Complex.t ptr) -> ldv2t:int -> b11d:(float ptr) -> b11e:(float ptr) -> b12d:(float ptr) -> b12e:(float ptr) -> b21d:(float ptr) -> b21e:(float ptr) -> b22d:(float ptr) -> b22e:(float ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7061>`__



.. code-block:: ocaml

  val zheswapr : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> i1:int -> i2:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7064>`__



.. code-block:: ocaml

  val zhetri2 : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7067>`__



.. code-block:: ocaml

  val zhetri2x : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> nb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7070>`__



.. code-block:: ocaml

  val zhetrs2 : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7073>`__



.. code-block:: ocaml

  val zsyconv : layout:int -> uplo:char -> way:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> e:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7076>`__



.. code-block:: ocaml

  val zsyswapr : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> i1:int -> i2:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7079>`__



.. code-block:: ocaml

  val zsytri2 : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7082>`__



.. code-block:: ocaml

  val zsytri2x : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> nb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7085>`__



.. code-block:: ocaml

  val zsytrs2 : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7088>`__



.. code-block:: ocaml

  val zunbdb : layout:int -> trans:char -> signs:char -> m:int -> p:int -> q:int -> x11:(Complex.t ptr) -> ldx11:int -> x12:(Complex.t ptr) -> ldx12:int -> x21:(Complex.t ptr) -> ldx21:int -> x22:(Complex.t ptr) -> ldx22:int -> theta:(float ptr) -> phi:(float ptr) -> taup1:(Complex.t ptr) -> taup2:(Complex.t ptr) -> tauq1:(Complex.t ptr) -> tauq2:(Complex.t ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7091>`__



.. code-block:: ocaml

  val zuncsd : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> jobv2t:char -> trans:char -> signs:char -> m:int -> p:int -> q:int -> x11:(Complex.t ptr) -> ldx11:int -> x12:(Complex.t ptr) -> ldx12:int -> x21:(Complex.t ptr) -> ldx21:int -> x22:(Complex.t ptr) -> ldx22:int -> theta:(float ptr) -> u1:(Complex.t ptr) -> ldu1:int -> u2:(Complex.t ptr) -> ldu2:int -> v1t:(Complex.t ptr) -> ldv1t:int -> v2t:(Complex.t ptr) -> ldv2t:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7094>`__



.. code-block:: ocaml

  val zuncsd2by1 : layout:int -> jobu1:char -> jobu2:char -> jobv1t:char -> m:int -> p:int -> q:int -> x11:(Complex.t ptr) -> ldx11:int -> x21:(Complex.t ptr) -> ldx21:int -> theta:(float ptr) -> u1:(Complex.t ptr) -> ldu1:int -> u2:(Complex.t ptr) -> ldu2:int -> v1t:(Complex.t ptr) -> ldv1t:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7097>`__



.. code-block:: ocaml

  val sgemqrt : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> nb:int -> v:(float ptr) -> ldv:int -> t:(float ptr) -> ldt:int -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7100>`__



.. code-block:: ocaml

  val dgemqrt : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> nb:int -> v:(float ptr) -> ldv:int -> t:(float ptr) -> ldt:int -> c:(float ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7103>`__



.. code-block:: ocaml

  val cgemqrt : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> nb:int -> v:(Complex.t ptr) -> ldv:int -> t:(Complex.t ptr) -> ldt:int -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7106>`__



.. code-block:: ocaml

  val zgemqrt : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> nb:int -> v:(Complex.t ptr) -> ldv:int -> t:(Complex.t ptr) -> ldt:int -> c:(Complex.t ptr) -> ldc:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7109>`__



.. code-block:: ocaml

  val sgeqrt : layout:int -> m:int -> n:int -> nb:int -> a:(float ptr) -> lda:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7112>`__



.. code-block:: ocaml

  val dgeqrt : layout:int -> m:int -> n:int -> nb:int -> a:(float ptr) -> lda:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7115>`__



.. code-block:: ocaml

  val cgeqrt : layout:int -> m:int -> n:int -> nb:int -> a:(Complex.t ptr) -> lda:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7118>`__



.. code-block:: ocaml

  val zgeqrt : layout:int -> m:int -> n:int -> nb:int -> a:(Complex.t ptr) -> lda:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7121>`__



.. code-block:: ocaml

  val sgeqrt2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7124>`__



.. code-block:: ocaml

  val dgeqrt2 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7127>`__



.. code-block:: ocaml

  val cgeqrt2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7130>`__



.. code-block:: ocaml

  val zgeqrt2 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7133>`__



.. code-block:: ocaml

  val sgeqrt3 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7136>`__



.. code-block:: ocaml

  val dgeqrt3 : layout:int -> m:int -> n:int -> a:(float ptr) -> lda:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7139>`__



.. code-block:: ocaml

  val cgeqrt3 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7142>`__



.. code-block:: ocaml

  val zgeqrt3 : layout:int -> m:int -> n:int -> a:(Complex.t ptr) -> lda:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7145>`__



.. code-block:: ocaml

  val stpmqrt : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> l:int -> nb:int -> v:(float ptr) -> ldv:int -> t:(float ptr) -> ldt:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7148>`__



.. code-block:: ocaml

  val dtpmqrt : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> l:int -> nb:int -> v:(float ptr) -> ldv:int -> t:(float ptr) -> ldt:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7151>`__



.. code-block:: ocaml

  val ctpmqrt : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> l:int -> nb:int -> v:(Complex.t ptr) -> ldv:int -> t:(Complex.t ptr) -> ldt:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7154>`__



.. code-block:: ocaml

  val ztpmqrt : layout:int -> side:char -> trans:char -> m:int -> n:int -> k:int -> l:int -> nb:int -> v:(Complex.t ptr) -> ldv:int -> t:(Complex.t ptr) -> ldt:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7157>`__



.. code-block:: ocaml

  val stpqrt : layout:int -> m:int -> n:int -> l:int -> nb:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7160>`__



.. code-block:: ocaml

  val dtpqrt : layout:int -> m:int -> n:int -> l:int -> nb:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7163>`__



.. code-block:: ocaml

  val ctpqrt : layout:int -> m:int -> n:int -> l:int -> nb:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7166>`__



.. code-block:: ocaml

  val ztpqrt : layout:int -> m:int -> n:int -> l:int -> nb:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7169>`__



.. code-block:: ocaml

  val stpqrt2 : layout:int -> m:int -> n:int -> l:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7172>`__



.. code-block:: ocaml

  val dtpqrt2 : layout:int -> m:int -> n:int -> l:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> t:(float ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7175>`__



.. code-block:: ocaml

  val ctpqrt2 : layout:int -> m:int -> n:int -> l:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7178>`__



.. code-block:: ocaml

  val ztpqrt2 : layout:int -> m:int -> n:int -> l:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> t:(Complex.t ptr) -> ldt:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7181>`__



.. code-block:: ocaml

  val stprfb : layout:int -> side:char -> trans:char -> direct:char -> storev:char -> m:int -> n:int -> k:int -> l:int -> v:(float ptr) -> ldv:int -> t:(float ptr) -> ldt:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7184>`__



.. code-block:: ocaml

  val dtprfb : layout:int -> side:char -> trans:char -> direct:char -> storev:char -> m:int -> n:int -> k:int -> l:int -> v:(float ptr) -> ldv:int -> t:(float ptr) -> ldt:int -> a:(float ptr) -> lda:int -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7187>`__



.. code-block:: ocaml

  val ctprfb : layout:int -> side:char -> trans:char -> direct:char -> storev:char -> m:int -> n:int -> k:int -> l:int -> v:(Complex.t ptr) -> ldv:int -> t:(Complex.t ptr) -> ldt:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7190>`__



.. code-block:: ocaml

  val ztprfb : layout:int -> side:char -> trans:char -> direct:char -> storev:char -> m:int -> n:int -> k:int -> l:int -> v:(Complex.t ptr) -> ldv:int -> t:(Complex.t ptr) -> ldt:int -> a:(Complex.t ptr) -> lda:int -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7193>`__



.. code-block:: ocaml

  val ssysv_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7196>`__



.. code-block:: ocaml

  val dsysv_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7199>`__



.. code-block:: ocaml

  val csysv_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7202>`__



.. code-block:: ocaml

  val zsysv_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7205>`__



.. code-block:: ocaml

  val ssytrf_rook : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7208>`__



.. code-block:: ocaml

  val dsytrf_rook : layout:int -> uplo:char -> n:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7211>`__



.. code-block:: ocaml

  val csytrf_rook : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7214>`__



.. code-block:: ocaml

  val zsytrf_rook : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7217>`__



.. code-block:: ocaml

  val ssytrs_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7220>`__



.. code-block:: ocaml

  val dsytrs_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(float ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(float ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7223>`__



.. code-block:: ocaml

  val csytrs_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7226>`__



.. code-block:: ocaml

  val zsytrs_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7229>`__



.. code-block:: ocaml

  val chetrf_rook : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7232>`__



.. code-block:: ocaml

  val zhetrf_rook : layout:int -> uplo:char -> n:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7235>`__



.. code-block:: ocaml

  val chetrs_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7238>`__



.. code-block:: ocaml

  val zhetrs_rook : layout:int -> uplo:char -> n:int -> nrhs:int -> a:(Complex.t ptr) -> lda:int -> ipiv:(int32 ptr) -> b:(Complex.t ptr) -> ldb:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7241>`__



.. code-block:: ocaml

  val csyr : layout:int -> uplo:char -> n:int -> alpha:Complex.t -> x:(Complex.t ptr) -> incx:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7244>`__



.. code-block:: ocaml

  val zsyr : layout:int -> uplo:char -> n:int -> alpha:Complex.t -> x:(Complex.t ptr) -> incx:int -> a:(Complex.t ptr) -> lda:int -> int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.ml#L7247>`__



