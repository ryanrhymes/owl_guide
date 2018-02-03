Cblas
===============================================================================

This document is auto-generated for Owl's APIs.
#47 functions have been extracted.
timestamp:1517620265

.. code-block:: ocaml

  val rotg : float -> float -> float * float * float * float

Computes the parameters for a Givens rotation.

.. code-block:: ocaml

  val rotmg : ('a, 'b) kind -> float -> float -> float -> float -> float * float * float * ('a, 'b) t

Computes the parameters for a modified Givens rotation.

.. code-block:: ocaml

  val rot : int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> float -> float -> unit

Performs rotation of points in the plane.

.. code-block:: ocaml

  val rotm : int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> unit

Performs modified Givens rotation of points in the plane

.. code-block:: ocaml

  val swap : int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Swaps a vector with another vector.

.. code-block:: ocaml

  val scal : int -> 'a -> ('a, 'b) t -> int -> unit

Computes the product of a vector and a scalar.

.. code-block:: ocaml

  val cszd_scal : int -> float -> (Complex.t, 'a) t -> int -> unit

Computes the product of a complex vector and a float number.

.. code-block:: ocaml

  val copy : int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Copies vector to another vector.

.. code-block:: ocaml

  val axpy : int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Computes a vector-scalar product and adds the result to a vector.

.. code-block:: ocaml

  val dot : ?conj:bool -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a

Computes a vector-vector dot product. [conj] is for complex numbers, [true]
  indicates conjugated, [false] indicates unconjugated.

.. code-block:: ocaml

  val sdsdot : int -> float -> (float, float32_elt) t -> int -> (float, float32_elt) t -> int -> float

Computes a vector-vector dot product extended precision accumulation.

.. code-block:: ocaml

  val dsdot : int -> (float, float32_elt) t -> int -> (float, float32_elt) t -> int -> float

Computes a vector-vector dot product extended precision accumulation.

.. code-block:: ocaml

  val nrm2 : int -> ('a, 'b) t -> int -> float

Computes the Euclidean norm of a vector.

.. code-block:: ocaml

  val asum : int -> ('a, 'b) t -> int -> float

Computes the sum of magnitudes of the vector elements.

.. code-block:: ocaml

  val amax : int -> ('a, 'b) t -> int -> int

Finds the index of the element with maximum absolute value.

.. code-block:: ocaml

  val gemv : cblas_layout -> cblas_transpose -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a general matrix

.. code-block:: ocaml

  val gbmv : cblas_layout -> cblas_transpose -> int -> int -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a general band matrix

.. code-block:: ocaml

  val trmv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a triangular matrix.

.. code-block:: ocaml

  val tbmv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a triangular band matrix.

.. code-block:: ocaml

  val tpmv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> ('a, 'b) t -> ('a, 'b) t -> int -> unit

Computes a matrix-vector product using a triangular packed matrix.

.. code-block:: ocaml

  val trsv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Solves a system of linear equations whose coefficients are in a triangular matrix.

.. code-block:: ocaml

  val tbsv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Solves a system of linear equations whose coefficients are in a triangular band matrix.

.. code-block:: ocaml

  val tpsv : cblas_layout -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> ('a, 'b) t -> ('a, 'b) t -> int -> unit

Solves a system of linear equations whose coefficients are in a triangular packed matrix.

.. code-block:: ocaml

  val symv : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> float -> (float, 'a) t -> int -> unit

Computes a matrix-vector product for a symmetric matrix.

.. code-block:: ocaml

  val sbmv : cblas_layout -> cblas_uplo -> int -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> float -> (float, 'a) t -> int -> unit

Computes a matrix-vector product using a symmetric band matrix.

.. code-block:: ocaml

  val spmv : cblas_layout -> cblas_uplo -> int -> int -> float -> (float, 'a) t -> (float, 'a) t -> int -> float -> (float, 'a) t -> int -> unit

Computes a matrix-vector product using a symmetric packed matrix.

.. code-block:: ocaml

  val ger : ?conj:bool -> cblas_layout -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Performs a rank-1 update of a general matrix. [conj] is for complex numbers,
  [true] indicates conjugated, [false] indicates unconjugated.

.. code-block:: ocaml

  val syr : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> unit

Performs a rank-1 update of a symmetric matrix.

.. code-block:: ocaml

  val spr : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> unit

Performs a rank-1 update of a symmetric packed matrix.

.. code-block:: ocaml

  val syr2 : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> (float, 'a) t -> int -> unit

Performs a rank-2 update of symmetric matrix.

.. code-block:: ocaml

  val spr2 : cblas_layout -> cblas_uplo -> int -> float -> (float, 'a) t -> int -> (float, 'a) t -> int -> (float, 'a) t -> unit

Performs a rank-2 update of a symmetric packed matrix.

.. code-block:: ocaml

  val hemv : cblas_layout -> cblas_uplo -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> Complex.t -> (Complex.t, 'a) t -> int -> unit

Computes a matrix-vector product using a Hermitian matrix.

.. code-block:: ocaml

  val hbmv : cblas_layout -> cblas_uplo -> int -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> Complex.t -> (Complex.t, 'a) t -> int -> unit

Computes a matrix-vector product using a Hermitian band matrix.

.. code-block:: ocaml

  val hpmv : cblas_layout -> cblas_uplo -> int -> Complex.t -> (Complex.t, 'a) t -> (Complex.t, 'a) t -> int -> Complex.t -> (Complex.t, 'a) t -> int -> unit

Computes a matrix-vector product using a Hermitian packed matrix.

.. code-block:: ocaml

  val her : cblas_layout -> cblas_uplo -> int -> float -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> unit

Performs a rank-1 update of a Hermitian matrix.

.. code-block:: ocaml

  val hpr : cblas_layout -> cblas_uplo -> int -> float -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> unit

Performs a rank-1 update of a Hermitian packed matrix.

.. code-block:: ocaml

  val her2 : cblas_layout -> cblas_uplo -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> unit

Performs a rank-2 update of a Hermitian matrix.

.. code-block:: ocaml

  val hpr2 : cblas_layout -> cblas_uplo -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> unit

Performs a rank-2 update of a Hermitian packed matrix.

.. code-block:: ocaml

  val gemm : cblas_layout -> cblas_transpose -> cblas_transpose -> int -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Computes a matrix-matrix product with general matrices.

.. code-block:: ocaml

  val symm : cblas_layout -> cblas_side -> cblas_uplo -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Computes a matrix-matrix product where one input matrix is symmetric.

.. code-block:: ocaml

  val syrk : cblas_layout -> cblas_uplo -> cblas_transpose -> int -> int -> 'a -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Performs a symmetric rank-k update.

.. code-block:: ocaml

  val syr2k : cblas_layout -> cblas_uplo -> cblas_transpose -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> 'a -> ('a, 'b) t -> int -> unit

Performs a symmetric rank-2k update.

.. code-block:: ocaml

  val trmm : cblas_layout -> cblas_side -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Computes a matrix-matrix product where one input matrix is triangular.

.. code-block:: ocaml

  val trsm : cblas_layout -> cblas_side -> cblas_uplo -> cblas_transpose -> cblas_diag -> int -> int -> 'a -> ('a, 'b) t -> int -> ('a, 'b) t -> int -> unit

Solves a triangular matrix equation.

.. code-block:: ocaml

  val hemm : cblas_layout -> cblas_side -> cblas_uplo -> int -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> Complex.t -> (Complex.t, 'a) t -> int -> unit

Computes a matrix-matrix product where one input matrix is Hermitian.

.. code-block:: ocaml

  val herk : cblas_layout -> cblas_uplo -> cblas_transpose -> int -> int -> float -> (Complex.t, 'a) t -> int -> float -> (Complex.t, 'a) t -> int -> unit

Performs a Hermitian rank-k update.

.. code-block:: ocaml

  val her2k : cblas_layout -> cblas_uplo -> cblas_transpose -> int -> int -> Complex.t -> (Complex.t, 'a) t -> int -> (Complex.t, 'a) t -> int -> float -> (Complex.t, 'a) t -> int -> unit

Performs a Hermitian rank-2k update.

