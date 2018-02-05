High-level LAPACKE API
===============================================================================

This document is auto-generated for Owl's APIs.
#93 entries have been extracted.
timestamp:1517856800

Github:
`[Signature] <https://github.com/ryanrhymes/owl/tree/master/src/owl/lapacke/owl_lapacke.mli>`_ 
`[Implementation] <https://github.com/ryanrhymes/owl/tree/master/src/owl/lapacke/owl_lapacke.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type ('a, 'b) t = ('a, 'b, c_layout) Genarray.t
    

Default data type



.. code-block:: ocaml

  type lapacke_layout = RowMajor | ColMajor
    

Layout type.



.. code-block:: ocaml

  type lapacke_transpose = NoTrans | Trans | ConjTrans
    

Transpose type.



.. code-block:: ocaml

  type lapacke_uplo = Upper | Lower
    

Upper or lower trangular.



.. code-block:: ocaml

  type lapacke_diag = NonUnit | Unit
    

Diangonal type.



.. code-block:: ocaml

  type lapacke_side = Left | Right
    

Side type.



Basic functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val gbtrs : trans:lapacke_transpose -> kl:int -> ku:int -> n:int -> ab:('a, 'b) t -> ipiv:(int32, int32_elt) t -> b:('a, 'b) t -> unit

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gebal : ?job:char -> a:('a, 'b) t -> int * int * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gebak : job:char -> side:char -> ilo:int -> ihi:int -> scale:float Ctypes.ptr -> v:('a, 'b) t -> unit

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gebrd : a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gelqf : a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val geqlf : a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val geqrf : a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gerqf : a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val geqp3 : ?jpvt:(int32, int32_elt) t -> a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * (int32, int32_elt) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val geqrt : nb:int -> a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val geqrt3 : a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val getrf : a:('a, 'b) t -> ('a, 'b) t * (int32, int32_elt) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val tzrzf : a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val ormrz : side:char -> trans:char -> a:(float, 'a) t -> tau:(float, 'a) t -> c:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gels : trans:char -> a:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gesv : a:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * (int32, int32_elt) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val getrs : trans:char -> a:('a, 'b) t -> ipiv:(int32, int32_elt) t -> b:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val getri : a:('a, 'b) t -> ipiv:(int32, int32_elt) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gesvx : fact:char -> trans:char -> a:('a, 'b) t -> af:('a, 'b) t -> ipiv:(int32, int32_elt) t -> equed:char -> r:('a, 'b) t -> c:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t * char * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * 'a * ('a, 'b) t * ('a, 'b) t * 'a

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gelsd : a:('a, 'b) t -> b:('a, 'b) t -> rcond:float -> ('a, 'b) t * int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gelsy : a:('a, 'b) t -> b:('a, 'b) t -> rcond:float -> ('a, 'b) t * int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gglse : a:('a, 'b) t -> b:('a, 'b) t -> c:('a, 'b) t -> d:('a, 'b) t -> ('a, 'b) t * 'a

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val geev : jobvl:char -> jobvr:char -> a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gesdd : ?jobz:char -> a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gesvd : ?jobu:char -> ?jobvt:char -> a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val ggsvd3 : ?jobu:char -> ?jobv:char -> ?jobq:char -> a:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t *  int * int * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val geevx : balanc:char -> jobvl:char -> jobvr:char -> sense:char -> a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t *  int * int * ('a, 'b) t * float * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val ggev : jobvl:char -> jobvr:char -> a:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gtsv : dl:('a, 'b) t -> d:('a, 'b) t -> du:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gttrf : dl:('a, 'b) t -> d:('a, 'b) t -> du:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * (int32, int32_elt) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gttrs : trans:char -> dl:('a, 'b) t -> d:('a, 'b) t -> du:('a, 'b) t -> du2:('a, 'b) t -> ipiv:(int32, int32_elt) t -> b:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val orglq : ?k:int -> a:(float, 'a) t -> tau:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val unglq : ?k:int -> a:(Complex.t, 'a) t -> tau:(Complex.t, 'a) t -> (Complex.t, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val orgqr : ?k:int -> a:(float, 'a) t -> tau:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val ungqr : ?k:int -> a:(Complex.t, 'a) t -> tau:(Complex.t, 'a) t -> (Complex.t, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val orgql : ?k:int -> a:(float, 'a) t -> tau:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val orgrq : ?k:int -> a:(float, 'a) t -> tau:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val ormlq : side:char -> trans:char -> a:(float, 'a) t -> tau:(float, 'a) t -> c:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val ormqr : side:char -> trans:char -> a:(float, 'a) t -> tau:(float, 'a) t -> c:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val ormql : side:char -> trans:char -> a:(float, 'a) t -> tau:(float, 'a) t -> c:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val ormrq : side:char -> trans:char -> a:(float, 'a) t -> tau:(float, 'a) t -> c:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gemqrt : side:char -> trans:char -> v:('a, 'b) t -> t:('a, 'b) t -> c:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val posv : uplo:char -> a:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val potrf : uplo:char -> a:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val potri : uplo:char -> a:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val potrs : uplo:char -> a:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val pstrf : uplo:char -> a:('a, 'b) t -> tol:'a -> ('a, 'b) t * (int32, int32_elt) t * int * int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val ptsv : d:('a, 'b) t -> e:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val pttrf : d:('a, 'b) t -> e:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val pttrs : ?uplo:char -> d:('a, 'b) t -> e:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val trtri : uplo:char -> diag:char -> a:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val trtrs : uplo:char -> trans:char -> diag:char -> a:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val trcon : norm:char -> uplo:char -> diag:char -> a:('a, 'b) t -> float

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val trevc : side:char -> howmny:char -> select:(int32, int32_elt) t -> t:('a, 'b) t -> (int32, int32_elt) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val trrfs : uplo:char -> trans:char -> diag:char -> a:('a, 'b) t -> b:('a, 'b) t -> x:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val stev : jobz:char -> d:(float, 'a) t -> e:(float, 'a) t -> (float, 'a) t * (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val stebz : range:char -> order:char -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> d:(float, 'a) t -> e:(float, 'a) t -> (float, 'a) t * (int32, int32_elt) t * (int32, int32_elt) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val stegr : kind:('a, 'b) kind -> jobz:char -> range:char -> d:(float, 'b) t -> e:(float, 'b) t -> vl:float -> vu:float -> il:int -> iu:int -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val stein : kind:('a, 'b) kind -> d:(float, 'b) t -> e:(float, 'b) t -> w:(float, 'b) t -> iblock:(int32, int32_elt) t -> isplit:(int32, int32_elt) t -> ('a, 'b) t * (int32, int32_elt) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val syconv : uplo:char -> way:char -> a:('a, 'b) t -> ipiv:(int32, int32_elt) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val sysv : uplo:char -> a:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * (int32, int32_elt) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val sytrf : uplo:char -> a:('a, 'b) t -> ('a, 'b) t * (int32, int32_elt) t * int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val sytrf_rook : uplo:char -> a:('a, 'b) t -> ('a, 'b) t * (int32, int32_elt) t * int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val sytri : uplo:char -> a:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val sytrs : uplo:char -> a:('a, 'b) t -> ipiv:(int32, int32_elt) t -> b:('a, 'b) t -> ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val hesv : uplo:char -> a:(Complex.t, 'a) t -> b:(Complex.t, 'a) t -> (Complex.t, 'a) t * (Complex.t, 'a) t * (int32, int32_elt) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val hetrf : uplo:char -> a:('a, 'b) t -> ('a, 'b) t * (int32, int32_elt) t * int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val hetrf_rook : uplo:char -> a:('a, 'b) t -> ('a, 'b) t * (int32, int32_elt) t * int

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val hetri : uplo:char -> a:(Complex.t, 'a) t -> ipiv:(int32, int32_elt) t -> (Complex.t, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val hetrs : uplo:char -> a:(Complex.t, 'a) t -> ipiv:(int32, int32_elt) t -> b:(Complex.t, 'a) t -> (Complex.t, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val syev : jobz:char -> uplo:char -> a:(float, 'a) t -> (float, 'a) t * (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val syevr : jobz:char -> range:char -> uplo:char -> a:(float, 'a) t -> vl:float -> vu:float -> il:int -> iu:int -> abstol:float -> (float, 'a) t * (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val sygvd : ityp:int -> jobz:char -> uplo:char -> a:(float, 'a) t -> b:(float, 'a) t -> (float, 'a) t * (float, 'a) t * (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val bdsqr : uplo:char -> d:(float, 'b) t -> e:(float, 'b) t -> vt:('a, 'b) t -> u:('a, 'b) t -> c:('a, 'b) t -> (float, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val bdsdc : uplo:char -> compq:char -> d:(float, 'a) t -> e:(float, 'a) t -> (float, 'a) t * (float, 'a) t * (float, 'a) t * (float, 'a) t * (float, 'a) t * (int32, int32_elt) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gecon : norm:char -> a:('a, 'b) t -> anorm:float -> float

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gehrd : ilo:int -> ihi:int -> a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val orghr : ilo:int -> ihi:int -> a:(float, 'a) t -> tau:(float, 'a) t -> (float, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val unghr : ilo:int -> ihi:int -> a:(Complex.t, 'a) t -> tau:(Complex.t, 'a) t -> (Complex.t, 'a) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gees : jobvs:char -> a:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val gges : jobvsl:char -> jobvsr:char -> a:('a, 'b) t -> b:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val trexc : compq:char -> t:('a, 'b) t -> q:('a, 'b) t -> ifst:int -> ilst:int -> ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val trsen : job:char -> compq:char -> select:(int32, int32_elt) t -> t:('a, 'b) t -> q:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val tgsen : select:(int32, int32_elt) t -> a:('a, 'b) t -> b:('a, 'b) t -> q:('a, 'b) t -> z:('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



.. code-block:: ocaml

  val trsyl : trana:char -> tranb:char -> isgn:int -> a:('a, 'b) t -> b:('a, 'b) t -> c:('a, 'b) t -> ('a, 'b) t * float

Refer to `Intel MKL C Reference <https://software.intel.com/en-us/mkl-developer-reference-c-lapack-routines>`_



