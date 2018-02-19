Low-level CBLAS API
===============================================================================

This document is auto-generated for Owl's APIs.
#57 entries have been extracted.
timestamp: 2018-02-19 17:54:04

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/cblas/owl_cblas.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/cblas/owl_cblas.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type ('a, 'b) t = ('a, 'b, Bigarray.c_layout) Bigarray.Array1.t
    

The default type is Bigarray's ``Array1.t``.

.. code-block:: ocaml

  type cblas_layout = CblasRowMajor | CblasColMajor
    

Layout type, Row-major or Column-major.

.. code-block:: ocaml

  type cblas_transpose = CblasNoTrans | CblasTrans | CblasConjTrans
    

Transpose type, no transpose, transpose, or conjugate transpose.

.. code-block:: ocaml

  type cblas_uplo = CblasUpper | CblasLower
    

Upper or lower triangular matrix.

.. code-block:: ocaml

  type cblas_diag = CblasNonUnit | CblasUnit
    

Diag type

.. code-block:: ocaml

  type cblas_side = CblasLeft | CblasRight
    

Side type

Level-1 BLAS: vector-vector operations
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val rotg : float -> float -> float * float * float * float

Computes the parameters for a Givens rotation.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L38>`__



.. code-block:: ocaml

  val rotmg : ('a, 'b) kind -> float -> float -> float -> float -> float * float * float * ('a, 'b) t

Computes the parameters for a modified Givens rotation.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L49>`__



.. code-block:: ocaml

  val rot : int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> float -> float -> unit

Performs rotation of points in the plane.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L91>`__



.. code-block:: ocaml

  val rotm : int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> unit

Performs modified Givens rotation of points in the plane

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L76>`__



.. code-block:: ocaml

  val swap : int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Swaps a vector with another vector.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L105>`__



.. code-block:: ocaml

  val scal : int -> 'a -> ('a, 'b) t -> int -> unit

Computes the product of a vector and a scalar.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L121>`__



.. code-block:: ocaml

  val cszd_scal : int -> float -> (Complex.t, 'a) t -> int -> unit

Computes the product of a complex vector and a float number.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L133>`__



.. code-block:: ocaml

  val copy : int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Copies vector to another vector.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L145>`__



.. code-block:: ocaml

  val axpy : int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Computes a vector-scalar product and adds the result to a vector.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L161>`__



.. code-block:: ocaml

  val dot : ?conj:bool -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a

Computes a vector-vector dot product. [conj] is for complex numbers, [true]
  indicates conjugated, [false] indicates unconjugated.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L177>`__



.. code-block:: ocaml

  val sdsdot : int -> float -> (float, float32_elt) t -> int -> (float, float32_elt) t -> int -> float

Computes a vector-vector dot product extended precision accumulation.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L202>`__



.. code-block:: ocaml

  val dsdot : int -> (float, float32_elt) t -> int -> (float, float32_elt) t -> int -> float

Computes a vector-vector dot product extended precision accumulation.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L207>`__



.. code-block:: ocaml

  val nrm2 : int -> ('a, 'b) t -> int -> float

Computes the Euclidean norm of a vector.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L215>`__



.. code-block:: ocaml

  val asum : int -> ('a, 'b) t -> int -> float

Computes the sum of magnitudes of the vector elements.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L229>`__



.. code-block:: ocaml

  val amax : int -> ('a, 'b) t -> int -> int

Finds the index of the element with maximum absolute value.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L243>`__



Level-2 BLAS: matrix-vector operations
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val gemv : cblas_layout -> cblas_transpose -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a general matrix

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L262>`__



.. code-block:: ocaml

  val gbmv : cblas_layout -> cblas_transpose -> int -> int -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a general band matrix

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L280>`__



.. code-block:: ocaml

  val trmv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a triangular matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L298>`__



.. code-block:: ocaml

  val tbmv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a triangular band matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L317>`__



.. code-block:: ocaml

  val tpmv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> ('a, 'b) t -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a triangular packed matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L336>`__



.. code-block:: ocaml

  val trsv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Solves a system of linear equations whose coefficients are in a triangular matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L355>`__



.. code-block:: ocaml

  val tbsv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Solves a system of linear equations whose coefficients are in a triangular band matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L374>`__



.. code-block:: ocaml

  val tpsv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> ('a, 'b) t -> ('a, 'b) t -> int -> unit

Solves a system of linear equations whose coefficients are in a triangular packed matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L393>`__



.. code-block:: ocaml

  val symv : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> float -> (float, 'a) t -> int -> unit

Computes a matrix-vector product for a symmetric matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L412>`__



.. code-block:: ocaml

  val sbmv : cblas_layout -> cblas_uplo -> int -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> float -> (float, 'a) t -> int -> unit

Computes a matrix-vector product using a symmetric band matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L427>`__



.. code-block:: ocaml

  val spmv : cblas_layout -> cblas_uplo -> int -> int -> float -> (float, 'a) t -> (float, 'a) t -> int -> float -> (float, 'a) t -> int -> unit

Computes a matrix-vector product using a symmetric packed matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L442>`__



.. code-block:: ocaml

  val ger : ?conj:bool -> cblas_layout -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Performs a rank-1 update of a general matrix. [conj] is for complex numbers,
[true] indicates conjugated, [false] indicates unconjugated.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L457>`__



.. code-block:: ocaml

  val syr : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> unit

Performs a rank-1 update of a symmetric matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L478>`__



.. code-block:: ocaml

  val spr : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> unit

Performs a rank-1 update of a symmetric packed matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L492>`__



.. code-block:: ocaml

  val syr2 : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> (float, 'a) t -> int -> unit

Performs a rank-2 update of symmetric matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L506>`__



.. code-block:: ocaml

  val spr2 : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> (float, 'a) t -> unit

Performs a rank-2 update of a symmetric packed matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L521>`__



.. code-block:: ocaml

  val hemv : cblas_layout -> cblas_uplo -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> Complex.t -> (Complex.t, 'a) t -> int -> unit

Computes a matrix-vector product using a Hermitian matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L536>`__



.. code-block:: ocaml

  val hbmv : cblas_layout -> cblas_uplo -> int -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> Complex.t -> (Complex.t, 'a) t -> int -> unit

Computes a matrix-vector product using a Hermitian band matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L553>`__



.. code-block:: ocaml

  val hpmv : cblas_layout -> cblas_uplo -> int -> Complex.t -> (Complex.t, 'a) t -> (Complex.t, 'a) t -> int -> Complex.t -> (Complex.t, 'a) t -> int -> unit

Computes a matrix-vector product using a Hermitian packed matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L570>`__



.. code-block:: ocaml

  val her : cblas_layout -> cblas_uplo -> int -> float -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> unit

Performs a rank-1 update of a Hermitian matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L587>`__



.. code-block:: ocaml

  val hpr : cblas_layout -> cblas_uplo -> int -> float -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> unit

Performs a rank-1 update of a Hermitian packed matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L601>`__



.. code-block:: ocaml

  val her2 : cblas_layout -> cblas_uplo -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> unit

Performs a rank-2 update of a Hermitian matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L615>`__



.. code-block:: ocaml

  val hpr2 : cblas_layout -> cblas_uplo -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> unit

Performs a rank-2 update of a Hermitian packed matrix.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L631>`__



Level-3 BLAS: matrix-matrix operations
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val gemm : cblas_layout -> cblas_transpose -> cblas_transpose -> int -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Computes a matrix-matrix product with general matrices.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L650>`__



.. code-block:: ocaml

  val symm : cblas_layout -> cblas_side -> cblas_uplo -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Computes a matrix-matrix product where one input matrix is symmetric.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L669>`__



.. code-block:: ocaml

  val syrk : cblas_layout -> cblas_uplo -> cblas_transpose -> int -> int -> 'a -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Performs a symmetric rank-k update.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L688>`__



.. code-block:: ocaml

  val syr2k : cblas_layout -> cblas_uplo -> cblas_transpose -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Performs a symmetric rank-2k update.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L706>`__



.. code-block:: ocaml

  val trmm : cblas_layout -> cblas_side -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Computes a matrix-matrix product where one input matrix is triangular.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L725>`__



.. code-block:: ocaml

  val trsm : cblas_layout -> cblas_side -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Solves a triangular matrix equation.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L745>`__



.. code-block:: ocaml

  val hemm : cblas_layout -> cblas_side -> cblas_uplo -> int -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> Complex.t -> (Complex.t, 'a) t -> int -> unit

Computes a matrix-matrix product where one input matrix is Hermitian.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L765>`__



.. code-block:: ocaml

  val herk : cblas_layout -> cblas_uplo -> cblas_transpose -> int -> int -> float -> (Complex.t, 'a) t -> int -> float -> (Complex.t, 'a) t -> int -> unit

Performs a Hermitian rank-k update.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L781>`__



.. code-block:: ocaml

  val her2k : cblas_layout -> cblas_uplo -> cblas_transpose -> int -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> float -> (Complex.t, 'a) t -> int -> unit

Performs a Hermitian rank-2k update.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.ml#L796>`__



