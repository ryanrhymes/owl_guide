Linear Algebra
=================================================

This chapter briefly covers the linear algebra modules in Owl. There are two levels abstraction in Owl's `Linalg` module:

1) low-level raw interface to CBLAS and LAPACKE;
2) high-level wrapper functions in ``Linalg`` module;



Low-level Interface to CBLAS & LAPACKE
-------------------------------------------------

Owl has implemented the full interface to CBLAS and LAPACKE. Comparing to Julia which chooses to interface to BLAS/LAPACK, you might notice the extra ``C`` in ``CBLAS`` and ``E`` in ``LAPACKE`` because they are the corresponding C-interface of Fortran implementations. It is often believed that C-interface may introduce some extra overhead. However, it turns out that we cannot really notice any difference at all in practice when dealing with medium or large problems.

- `Owl_cblas module <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.mli>`_ provides the raw interface to CBLAS functions, from level-1 to level-3. The interfaced functions have the same names as those in CBLAS.

- `Owl_lapacke_generated module <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.mli>`_ provides the raw interface to LAPACKE functions (over 1,000) which also have the same names defined in `lapacke.h <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/lapacke.h>`_.

- `Owl_lapacke module <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke.ml>`_ is a very thin layer of interface between `Owl_lapacke_generated module <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.mli>`_ and `Linalg module <https://github.com/ryanrhymes/owl/blob/master/src/owl/linalg/owl_linalg_generic.mli>`_. The purpose is to provide a unified function to make generic functions over different number types.



High-level Wrappers in Linalg Module
-------------------------------------------------

The functions in `Owl_cblas <https://github.com/ryanrhymes/owl/blob/master/src/owl/cblas/owl_cblas.mli>`_ and `Owl_lapacke_generated <https://github.com/ryanrhymes/owl/blob/master/src/owl/lapacke/owl_lapacke_generated.mli>`_ are very low-level, e.g., you need to deal with calculating parameters, allocating workspace, post-processing results, and many other tedious details. You do not really want to use them directly unless you have enough background in numerical analysis and chase after the performance. In practice, you should use `Linalg <https://github.com/ryanrhymes/owl/blob/master/src/owl/linalg/owl_linalg_generic.mli>`_ module which gives you a high-level wrapper for frequently used functions.

The ``Linalg`` has the following module structure.

- `Owl.Linalg.Generic <https://github.com/ryanrhymes/owl/blob/master/src/owl/linalg/owl_linalg_generic.mli>`_: generic functions for four number types ``S/D/C/Z``.

- `Owl.Linalg.S <https://github.com/ryanrhymes/owl/blob/master/src/owl/linalg/owl_linalg_s.mli>`_: only for ``float32`` type.

- `Owl.Linalg.D <https://github.com/ryanrhymes/owl/blob/master/src/owl/linalg/owl_linalg_d.mli>`_: only for ``float64`` type.

- `Owl.Linalg.C <https://github.com/ryanrhymes/owl/blob/master/src/owl/linalg/owl_linalg_c.mli>`_: only for ``complex32`` type.

- `Owl.Linalg.Z <https://github.com/ryanrhymes/owl/blob/master/src/owl/linalg/owl_linalg_z.mli>`_: only for ``complex64`` type.

``Generic`` actually can do everything that ``S/D/C/Z`` can but needs some extra type information. The functions in ``Linalg`` module are divided into the following groups.



Basic functions
-------------------------------------------------

.. code-block:: ocaml

  val inv : ('a, 'b) t -> ('a, 'b) t
  (* inverse of a square matrix *)

  val pinv : ?tol:float -> ('a, 'b) t -> ('a, 'b) t
  (* Moore-Penrose pseudo-inverse of a matrix *)

  val det : ('a, 'b) t -> 'a
  (* determinant of a square matrix  *)

  val logdet : ('a, 'b) t -> 'a
  (* log of the determinant of a square matrix *)

  val rank : ?tol:float -> ('a, 'b) t -> int
  (* rank of a rectangular matrix *)

  val norm : ?p:float -> ('a, 'b) t -> float
  (* p-norm of a matrix *)

  val cond : ?p:float -> ('a, 'b) t -> float
  (* p-norm condition number of a matrix *)

  val rcond : ('a, 'b) t -> float
  (* estimate for the reciprocal condition of a matrix in 1-norm *)

  val is_triu : ('a, 'b) t -> bool
  (* check if a matrix is upper triangular *)

  val is_tril : ('a, 'b) t -> bool
  (* check if a matrix is lower triangular *)

  val is_symmetric : ('a, 'b) t -> bool
  (* check if a matrix is symmetric *)

  val is_hermitian : ('a, 'b) t -> bool
  (* check if a matrix is hermitian *)

  val is_diag : ('a, 'b) t -> bool
  (* check if a matrix is diagonal *)

  val is_posdef : ('a, 'b) t -> bool
  (* check if a matrix is positive semi-definite *)



Factorisation
-------------------------------------------------

.. code-block:: ocaml

  val lu : ('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * (int32, int32_elt) t
  (* LU factorisation *)

  val lq : ?thin:bool -> ('a, 'b) t -> ('a, 'b) t * ('a, 'b) t
  (* LQ factorisation *)

  val qr : ?thin:bool -> ?pivot:bool -> ('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * (int32, int32_elt) t
  (* QR factorisation  *)

  val chol : ?upper:bool -> ('a, 'b) t -> ('a, 'b) t
  (* Cholesky factorisation *)

  val svd : ?thin:bool -> ('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t
  (* singular value decomposition *)

  val svdvals : ('a, 'b) t -> ('a, 'b) t
  (* only singular values of SVD *)

  val gsvd : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t * ('a, 'b) t
  (* generalised singular value decomposition *)

  val gsvdvals : ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t
  (* only singular values of generalised SVD *)

  val schur : otyp:('c, 'd) kind -> ('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * ('c, 'd) t
  (* Schur factorisation *)

  val hess : ('a, 'b) t -> ('a, 'b) t * ('a, 'b) t
  (* Hessenberg form of a given matrix *)



Eigenvalues & eigenvectors
-------------------------------------------------

.. code-block:: ocaml

  val eig : ?permute:bool -> ?scale:bool -> otyp:('a, 'b) kind -> ('c, 'd) t -> ('a, 'b) t * ('a, 'b) t
  (* right eigenvectors and eigenvalues of an arbitrary square matrix *)

  val eigvals : ?permute:bool -> ?scale:bool -> otyp:('a, 'b) kind -> ('c, 'd) t -> ('a, 'b) t
  (* only computes the eigenvalues of an arbitrary square matrix *)



Linear system of equations
-------------------------------------------------

.. code-block:: ocaml

  val null : ('a, 'b) t -> ('a, 'b) t
  (* an orthonormal basis for the null space of a matrix *)

  val linsolve : ?trans:bool -> ('a, 'b) t -> ('a, 'b) t -> ('a, 'b) t
  (* solves ``A * x = b`` linear equation system. *)

  val linreg : ('a, 'b) t -> ('a, 'b) t -> 'a * 'a
  (* simple linear regression using OLS. *)



Low-level factorisation and Helper functions
-------------------------------------------------

.. code-block:: ocaml

  val lufact : ('a, 'b) t -> ('a, 'b) t * (int32, int32_elt) t

  val qrfact : ?pivot:bool -> ('a, 'b) t -> ('a, 'b) t * ('a, 'b) t * (int32, int32_elt) t

  val bkfact : ?upper:bool -> ?symmetric:bool -> ?rook:bool -> ('a, 'b) t -> ('a, 'b) t * (int32, int32_elt) t

  val peakflops : ?n:int -> unit -> float
  (* peak number of float point operations using [Owl_cblas.dgemm] function. *)



Examples
-------------------------------------------------


Example 1 - Simple Linear Regression
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The code snippet below first generates some random data, then using ``linreg`` function to perform a simple linear regression and plots the data as well as the regression line.

.. code-block:: ocaml

  let generate_data () =
    let x = Mat.uniform 500 1 in
    let p = Mat.uniform 1 1 in
    let y = Mat.(x *@ p + gaussian ~sigma:0.05 500 1) in
    x, y

  let t1_sol () =
    let x, y = generate_data () in
    let h = Plot.create "plot_t1.png" in
    let a, b = Linalg.D.linreg x y in
    let y' = Mat.(x *$ b +$ a) in
    Plot.scatter ~h x y;
    Plot.plot ~h ~spec:[ RGB (0,255,0) ] x y';
    Plot.output h



Example 2 - LQ Factorisation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The following code performs an LQ decomposition on a random square matrix. Note that in the last step we used ``=~`` rather than ``=`` to check the equality due to float number precision. You can check the difference with ``Mat.(l *@ q - x)``.

.. code-block:: ocaml

  let x = Mat.uniform 8 8;;    (* generate a random matrix *)
  let l, q = Linalg.D.lq x;;   (* perform lq decomposition *)
  Mat.(l *@ q =~ x);;          (* check the approx equality *)



Example 3 - Singular Value Decomposition
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The following code performs an SVD on a random matrix then check the equality.

.. code-block:: ocaml

  let x = Mat.uniform 8 16;;        (* generate a random matrix *)
  let u, s, vt = Linalg.D.svd x;;   (* perform lq decomposition *)
  let s = Mat.diagm s;;             (* exapand to diagonal matrix *)
  Mat.(u *@ s *@ vt =~ x);;         (* check the approx equality *)



Example 4 - Eigenvalues
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The following code calculates the right eigenvalues and eigenvectors of a positive-definite matrix ``x``.

.. code-block:: ocaml

  let x = Mat.semidef 8;;                                  (* generate a random matrix *)
  let v, w = Linalg.D.eig ~permute:false ~scale:false x;;  (* calculate eigenvalues and vectors *)
  let v = Dense.Matrix.Z.re v;;                            (* only real part since [x] is semidef *)
  let w = Dense.Matrix.Z.re w;;                            (* only real part since [x] is semidef *)
  Mat.((x *@ v) =~ (w * v));;                              (* check the approx equality *)



Example 5 - Inverse of Matrices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The following code calculates the inverse of a square matrix ``x``.

.. code-block:: ocaml

  let x = Mat.semidef 8;;    (* generate a random semidef matrix *)
  let y = Linalg.D.inv x;;   (* calculate the matrix inverse *)
  Mat.(x *@ y =~ eye 8);;    (* check the approx equality *)
