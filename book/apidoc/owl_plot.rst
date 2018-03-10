Plot
===============================================================================

This document is auto-generated for Owl's APIs.
#63 entries have been extracted.
timestamp: 2018-03-10 21:21:55

Github:
`{Signature} <https://github.com/ryanrhymes/owl/tree/master/src/owl/misc/owl_plot.mli>`_ 
`{Implementation} <https://github.com/ryanrhymes/owl/tree/master/src/owl/misc/owl_plot.ml>`_



Type definition
-------------------------------------------------------------------------------



.. code-block:: ocaml

  type dsmat = Owl_dense_matrix.D.mat
    

Default input type is double precision matrices.

.. code-block:: ocaml

  type handle
    

Handle of a figure

.. code-block:: ocaml

  type color = RED | GREEN | BLUE
    

colour type

.. code-block:: ocaml

  type legend_position = North | South | West | East | NorthWest | NorthEast | SouthWest | SouthEast
    

legend position type

.. code-block:: ocaml

  type axis = X | Y | Z | XY | XZ | YZ | XYZ
    

axis type

Config functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val create : ?m:int -> ?n:int -> string -> handle

``create``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L296>`__



.. code-block:: ocaml

  val subplot : handle -> int -> int -> unit

``subplot``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L728>`__



.. code-block:: ocaml

  val output : handle -> unit

``output``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L490>`__



.. code-block:: ocaml

  val set_output : handle -> string -> unit

``set_output``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L501>`__



.. code-block:: ocaml

  val set_title : handle -> string -> unit

``set_title``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L508>`__



.. code-block:: ocaml

  val set_xlabel : handle -> string -> unit

``set_xlabel``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L511>`__



.. code-block:: ocaml

  val set_ylabel : handle -> string -> unit

``set_ylabel``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L514>`__



.. code-block:: ocaml

  val set_zlabel : handle -> string -> unit

``set_zlabel``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L517>`__



.. code-block:: ocaml

  val set_xrange : handle -> float -> float -> unit

``set_xrange``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L520>`__



.. code-block:: ocaml

  val set_yrange : handle -> float -> float -> unit

``set_yrange``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L525>`__



.. code-block:: ocaml

  val set_zrange : handle -> float -> float -> unit

``set_zrange``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L530>`__



.. code-block:: ocaml

  val set_xticklabels : handle -> (float * string) list -> unit

``set_xticklabels``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L535>`__



.. code-block:: ocaml

  val set_yticklabels : handle -> (float * string) list -> unit

``set_yticklabels``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L538>`__



.. code-block:: ocaml

  val set_zticklabels : handle -> (float * string) list -> unit

``set_zticklabels``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L541>`__



.. code-block:: ocaml

  val set_foreground_color : handle -> int -> int -> int -> unit

``set_foreground_color``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L544>`__



.. code-block:: ocaml

  val set_background_color : handle -> int -> int -> int -> unit

``set_background_color``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L547>`__



.. code-block:: ocaml

  val set_font_size : handle -> float -> unit

``set_font_size``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L550>`__



.. code-block:: ocaml

  val set_pen_size : handle -> float -> unit

``set_pen_size``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L553>`__



.. code-block:: ocaml

  val set_page_size : handle -> int -> int -> unit

``set_page_size``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L556>`__



.. code-block:: ocaml

  val legend_on : handle -> ?position:legend_position -> string array -> unit

``legend_on``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L559>`__



.. code-block:: ocaml

  val legend_off : handle -> unit

``legend_off``

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L565>`__



Basic plot functions
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val plot : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> unit

``plot x y`` plots ``y`` as a function of ``x``.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``, ``LineStyle``, ``LineWidth``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L619>`__



.. code-block:: ocaml

  val plot_fun : ?h:handle -> ?spec:spec list -> (float -> float) -> float -> float -> unit

``plot_fun f a b`` generates a line plot for function ``f : float -> float``
in the interval ``[a, b]``.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``, ``LineStyle``, ``LineWidth``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L661>`__



.. code-block:: ocaml

  val scatter : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> unit

``scatter x y`` generates a scatter plot of ``y`` as a function of ``x``.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L667>`__



.. code-block:: ocaml

  val histogram : ?h:handle -> ?spec:spec list -> ?bin:int -> dsmat -> unit

``histogram x`` generates a histogram of ``x`` with the number ``bin``.

Parameters: ``RGB``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L700>`__



.. code-block:: ocaml

  val ecdf : ?h:handle -> ?spec:spec list -> dsmat -> unit

``ecdf x``

Parameters: ``RGB``, ``LineStyle``, ``LineWidth``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1097>`__



.. code-block:: ocaml

  val stairs : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> unit

``stairs x y``

Parameters: ``RGB``, ``LineStyle``, ``LineWidth``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1108>`__



.. code-block:: ocaml

  val stem : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> unit

``stem x`` generates a stem plot of ``y`` as a function of ``x``.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``, ``LineStyle``, ``LineWidth``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L733>`__



.. code-block:: ocaml

  val autocorr : ?h:handle -> ?spec:spec list -> dsmat -> unit

``autocorr x`` generates an autocorrelation plot of ``x``.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``, ``LineStyle``, ``LineWidth``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L775>`__



.. code-block:: ocaml

  val text : ?h:handle -> ?spec:spec list -> float -> float -> ?dx:float -> ?dy:float -> string -> unit

``text x y s`` draws a text string at ``(x,y)``. ``dx`` and ``dy`` indicate ...

Parameters: ``RGB``.

.. code-block:: ocaml

  val draw_line: ?h:handle -> ?spec:spec list -> float -> float -> float -> float -> unit

``draw_line x0 y0 x1 y0`` draws a straight line from ``(x0,y0)`` to ``(x1,y1)``.

Parameters: ``RGB``, ``LineStyle``, ``LineWidth``.

.. code-block:: ocaml

  val draw_rect : ?h:handle -> ?spec:spec list -> float -> float -> float -> float -> unit

``draw_rect x0 y0 x1 y1`` draws a rectangle with top-left point at ``(x0,y0)``
and bottom-right point at ``(x1,y1)``.

Parameters: ``RGB``, ``LineStyle``, ``FillPattern``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L949>`__



.. code-block:: ocaml

  val draw_circle : ?h:handle -> ?spec:spec list -> float -> float -> float -> unit

``draw_circle x y r`` draws a circle at point ``(x,y)`` of radius ``r``.

Parameters: ``RGB``, ``LineStyle``, ``LineWidth``, ``FillPattern``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1121>`__



.. code-block:: ocaml

  val bar : ?h:handle -> ?spec:spec list -> dsmat -> unit

``bar x`` draws a bar chart of ``x``.

Parameters: ``RGB``, ``LineStyle``, ``FillPattern``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L980>`__



.. code-block:: ocaml

  val area : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> unit

``area x y`` fills the area specified by ``x`` and ``y``.

Parameters: ``RGB``, ``LineStyle``, ``FillPattern``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1015>`__



.. code-block:: ocaml

  val draw_polygon : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> unit

``area x y`` fills the polygon specified by ``x`` and ``y``.  Each point
will be treated as connected to the next point except the last, which
will be connected to the first point.

Parameters: ``RGB``, ``LineStyle``, ``FillPattern``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1052>`__



.. code-block:: ocaml

  val error_bar : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> dsmat -> unit

``error_bar x y`` generates a line plot of ``x`` and ``y`` with error bars.

Parameters: ``RGB``, ``LineStyle``, ``LineWidth``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L852>`__



.. code-block:: ocaml

  val boxplot : ?h:handle -> ?spec:spec list -> dsmat -> unit

``boxplot x`` generates a box plot of ``x``.

Parameters: ``RGB``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L909>`__



.. code-block:: ocaml

  val pie : ?h:handle -> ?spec:spec list -> dsmat -> unit

``pie x`` generates a simple pie chart of ``x``.

Parameters: ``RGB``, ``Fill``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1189>`__



.. code-block:: ocaml

  val loglog : ?h:handle -> ?spec:spec list -> ?x:dsmat -> dsmat -> unit

``loglog ~x y``  plots all ``y`` versus ``x`` pairs with log-log scale.
``loglog y`` plots data in ``y`` versus their indices. If ``Axis X`` or ``Axis Y`` is
specified in ``spec``, plot logarithmic scales only for x-axis or y-axis
respectively.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``, ``LineStyle``, ``LineWidth``, ``Axis``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1221>`__



.. code-block:: ocaml

  val semilogx : ?h:handle -> ?spec:spec list -> ?x:dsmat -> dsmat -> unit

``semilogx`` is similar to ``loglog``. Plot data as logarithmic scales for the
x-axis.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``, ``LineStyle``, ``LineWidth``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1281>`__



.. code-block:: ocaml

  val semilogy : ?h:handle -> ?spec:spec list -> ?x:dsmat -> dsmat -> unit

``semilogy`` is similar to ``loglog``. Plot data as logarithmic scales for the
y-axis.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``, ``LineStyle``, ``LineWidth``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1288>`__



.. code-block:: ocaml

  val spy : ?h:handle -> ?spec:spec list -> dsmat -> unit

``spy x`` visualises the sparsity of the matrix ``x`` using scatter plot. The
non-zero elements are plotted as dots, and zeros are ignored.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1669>`__



Plot 3D figures
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val plot3d : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> dsmat -> unit

TODO: ``plot3d`` is just an alias of ``surf`` function.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1334>`__



.. code-block:: ocaml

  val surf : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> dsmat -> unit

``surf x y z`` generates a surface plot defined by ``x``, ``y``, and ``z``.

Parameters: ``Altitude``, ``Azimuth``, ``Contour``, ``NoMagColor``, ``Curtain``.

Please refer to ``plotsurf3d`` functions in the PLplot library for more
information.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1295>`__



.. code-block:: ocaml

  val mesh : ?h:handle -> ?spec:spec list -> dsmat -> dsmat -> dsmat -> unit

``mesh x y z`` generates a mesh plot defined by ``x``, ``y``, and ``z``.

Parameters: ``RGB``, ``Altitude``, ``Azimuth``, ``Contour``, ``NoMagColor``, ``ZLine``,
``Curtain``.

Please refer to ``plmesh`` and ``plmeshc`` functions in the PLplot library for
more information.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1337>`__



.. code-block:: ocaml

  val contour : ?h:handle -> dsmat -> dsmat -> dsmat -> unit

``contour x y z`` generates a contour plot defined by ``x``, ``y``, and ``z``.

.. code-block:: ocaml

  val heatmap : ?h:handle -> dsmat -> dsmat -> dsmat -> unit

``heatmap x y z`` generates a heatmap defined by ``x``, ``y``, and ``z``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1386>`__



Advanced statistical plot
-------------------------------------------------------------------------------



.. code-block:: ocaml

  val probplot : ?h:handle -> ?spec:spec list -> ?dist:(float -> float) -> ?noref:bool -> dsmat -> unit

``probplot ~dist ~noref x`` creates a probability plot comparing the
distribution of the data in ``x`` to the given distribution. The ``dist`` is
set to standard normal distribution by default. When ``noref`` is set to
``true`` (default to  be ``false``), the reference line will not be shown.

Note that in our implementation of probplot, we choose a Matlab-like
definition: for the i-th point on the figure, x-axis is the sorted input
sample data x.(i), and y-axis is the inverseCDF (for different ``dist``) of
meadian ``(i - 0.5)/n``, where n is the length of input data,

The y-axis is to be updated to corrsponding probability ``p = cdf(y) * 100%``.

The same definition also applies to normplot and wblplot.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1454>`__



.. code-block:: ocaml

  val normplot : ?h:handle -> ?spec:spec list -> ?sigma:float -> dsmat -> unit

``normalplot ~sigma x`` is probplot with normal distribution. User need to
specify the ``sigma`` of distribution or the default value 1 will be used.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1504>`__



.. code-block:: ocaml

  val wblplot : ?h:handle -> ?spec:spec list -> ?lambda:float -> ?k:float -> dsmat -> unit

``wblplot ~lambda ~k x`` is probplot with weibull distribution. Currently user
need to specify the weibull distribution parameters ``lambda`` and ``k``
explicitly. By default, (lambda, k) = (1., 1.). ``wblplot`` applies log-scale
on x-axis.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1510>`__



.. code-block:: ocaml

  val qqplot : ?h:handle -> ?spec:spec list -> ?pd:(float -> float) -> ?x:dsmat -> dsmat -> unit

``qqplot ~pd ~x y `` displays a quantile-quantile plot of the quantiles of the
sample data x versus the theoretical quantiles values from ``pd``, which by
default is standard normal distribution. If the second argument ``x`` is a
vector, the empirical CDF of it is used as the distribtion of x-axis data,
otherwise the qqplot is similar to ``probplot``, showing the inverseCDF of
meadian ``(i - 0.5)/n`` on x-axis.

If input vectors are not of the same length, users are explected to input the
longer one as x, and the shorter one y.

Parameters: ``RGB``, ``Marker``, ``MarkerSize``.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1570>`__



.. code-block:: ocaml

  val image : ?h:handle -> dsmat -> unit

``image mat`` display a m * n matrix as image. Each element in the matrix is of range 0 ~ 255.

`source code <https://github.com/ryanrhymes/owl/blob/master/src/owl/misc/owl_plot.ml#L1632>`__



