Dataframe for Tabular Data
=================================================

Dataframe is a popular way to manipulate data. It originates from R's dataframe and is widely implemented in many mainstream libraries such as Pandas. Essentially, a dataframe is simple container of the data that can be represented as a table.

Different from the matrices in numerical computing, data stored in a dataframe are not necessarily numbers but a mixture of different types. The flexibility of dataframe largely comes from the dynamic typing inherently offered in a language. Due to OCaml's static type checking, this poses greatest challenges to Owl when I was trying to introduce the similar functionality.

It becomes an art when balancing between flexibility and efficiency in designing the programming interface. This article covers the design of Dataframe module and its basic usage.



Basic Concepts
-------------------------------------------------

The dataframe functionality is implemented in Owl's `Dataframe <https://github.com/owlbarn/owl/blob/master/src/base/misc/owl_dataframe.mli>`_ module. Owl views a dataframe as a collection of time series data, and each series corresponds to one column in the table. All series must have the same length and each has a unique column head. In the following, we use series and column interchangeably.

Owl packs each series into a unified type called `series` and stores them in an array. As you can already see, dataframe is column-based so accessing columns is way more efficient than accessing rows. The Dataframe module only provides basic functionality to create, access, query, iterate the data in a frame. We need to combine dataframe with the numerical functions in `Stats` module to reach its full capability. Essentially, Pandas is a bundle of table manipulation and basic statistical functions.



Create Frames
-------------------------------------------------

Dataframes can be created in various ways. ``Dataframe.make`` is the core function if we can to create a frame dynamically. For example, the following code creates a frame consisting of three columns include "name", "age", and "salary" of four people.


.. code-block:: ocaml

  let name = Dataframe.pack_string_series [|"Alice"; "Bob"; "Carol"; "David"|];;
  let age = Dataframe.pack_int_series [|20; 25; 30; 35|];;
  let salary = Dataframe.pack_float_series [|2200.; 2100.; 2500.; 2800.|];;
  let frame = Dataframe.make [|"name"; "age"; "salary"|] ~data:[|name; age; salary|];;


If you run the code in `utop`, Owl can pretty print out the dataframe in the following format. If the frame grows too long or too wide, Owl is smart enough to truncate them automatically and present the table nicely in the toplevel.


.. code-block:: text

  val frame : Owl_dataframe.t =

    +-----+---+------
      name age salary
    +-----+---+------
  R0 Alice  20  2200.
  R1   Bob  25  2100.
  R2 Carol  30  2500.
  R3 David  35  2800.


In fact, you do not necessarily need to pass in the data when calling ``make`` function. You can make an empty frame by just passing in head names.

.. code-block:: ocaml

  let empty_frame = Dataframe.make [|"name"; "age"; "salary"|];;


Try the code, you will see Owl prints out an empty table.



Manipulate Frames
-------------------------------------------------

There are a comprehensive set of table manipulation functions implemented in Dataframe module. I will go through them briefly in this section.

Now that Owl allows us to create empty frames, it certainly provides functions to dynamically add new columns.


.. code-block:: ocaml

  let job = Dataframe.pack_string_series [|"Engineer"; "Driver"; "Lecturer"; "Manager"|];;
  Dataframe.append_col frame job "job";;


From the output, we can see that the "job" column has been appended to the end of the previously defined dataframe.


.. code-block:: text

  val frame : Owl_dataframe.t =

    +-----+---+------+--------
      name age salary      job
    +-----+---+------+--------
  R0 Alice  20  2200. Engineer
  R1   Bob  25  2100.   Driver
  R2 Carol  30  2500. Lecturer
  R3 David  35  2800.  Manager


We can even concatenate two dataframes. Depending on concatenating direction, there are a couple of things worth our attention.

- When two dataframes are concatenated vertically, they must have the same number of columns and consistent column types. The head names of the first argument will be used in the new dataframe.
- When two dataframes are concatenated horizontally, they must have the same number of rows. All the columns of two dataframes must have unique names.

For example, the following code add two new entries to the table by concatenating two dataframes vertically.


.. code-block:: ocaml

  let name = Dataframe.pack_string_series [|"Erin"; "Frank"|];;
  let age = Dataframe.pack_int_series [|22; 24|];;
  let salary = Dataframe.pack_float_series [|2300.; 2300.;|];;
  let frame_1 = Dataframe.make [|"name"; "age"; "salary"|] ~data:[|name; age; salary|];;
  let frame_2 = Dataframe.concat_vertical frame frame_1;;


The new dataframe looks like the following.


.. code-block:: text

  val frame_2 : Owl_dataframe.t =

    +-----+---+------
      name age salary
    +-----+---+------
  R0 Alice  20  2200.
  R1   Bob  25  2100.
  R2 Carol  30  2500.
  R3 David  35  2800.
  R4  Erin  22  2300.
  R5 Frank  24  2300.


However, if you just want to append one or two rows, the previous method seems a bit overkill. Instead, you can call `Dataframe.append_row` function.


.. code-block:: ocaml

  let new_row = Dataframe.([|pack_string "Erin"; pack_int 22; pack_float 2300.|]);;
  Dataframe.append_row frame new_row;;


There are also functions allow you to retrieve the properties.


.. code-block:: ocaml

  val copy : t -> t          (* return the copy of a dataframe. *)

  val row_num : t -> int     (* return the number of rows. *)

  val col_num : t -> int     (* return the number of columns. *)

  val shape : t -> int * int (* return the shape of a dataframe. *)

  val numel : t -> int       (* return the number of elements. *)

  ...


The module applies several optimisation techniques to accelerate the operations on dataframes. Please refer to the API reference for the complete function list.



Query Frames
-------------------------------------------------

We can use various functions in the module to retrieve the information from a dataframe. The basic ``get`` and ``set`` function treats the dataframe like a matrix. We need to specify the row and column index to retrieve the value of an element.


.. code-block:: ocaml

  Dataframe.get frame 2 1;;
  (* return Carol's age, i.e. 30 *)


``get_row`` and ``get_col`` (also ``get_col_by_name``) are used to obtain a complete row or column. For multiple rows and columns, there are also corresponding ``get_rows`` and ``get_cols_by_name``.

Because each column has a name, we can also use head to retrieves information. However, we still need to pass in the row index because rows are not associated with names.


.. code-block:: ocaml

  Dataframe.get_by_name frame 2 "salary";;
  (* return Carol's salary, i.e. 2500. *)


We can use ``head`` and ``tail`` functions to retrieve only the beginning or end of the dataframe. The results will be returned as a new dataframe. We can also use the more powerful functions like ``get_slice`` or ``get_slice_by_name`` if we are interested in the data within a dataframe. The slice definition used in these two functions are the same as that used in Owl's Ndarray modules.


.. code-block:: ocaml

  Dataframe.get_slice_by_name ([1;2], ["name"; "age"]) frame;;
  (* return Bob's and Carol's name and age *)



Iterate, Map, and Filter
-------------------------------------------------

How can we miss the classic iteration functions in the functional programming? Dataframe includes the following methods to traverse the rows in a dataframe. I did not include any method to traverse columns because they can be simply extracted out as series then processed separately.

.. code-block:: ocaml

  val iteri_row : (int -> elt array -> unit) -> t -> unit

  val iter_row :  (elt array -> unit) -> t -> unit

  val mapi_row : (int -> elt array -> elt array) -> t -> t

  val map_row : (elt array -> elt array) -> t -> t

  val filteri_row : (int -> elt array -> bool) -> t -> t

  val filter_row : (elt array -> bool) -> t -> t

  val filter_mapi_row : (int -> elt array -> elt array option) -> t -> t

  val filter_map_row : (elt array -> elt array option) -> t -> t


Applying these functions to a dataframe is rather straightforward. All the elements in a row are packed into ``elt`` type, it is a programmer's responsibility to unpack them properly in the passed in function.

The interesting thing worth mentioning here is that there are several functions are associated with extended indexing operators. This allows us to write quite concise code in our application.


.. code-block:: ocaml

  val ( .%( ) ) : t -> int * string -> elt
  (* associated with ``get_by_name`` *)

  val ( .%( )<- ) : t -> int * string -> elt -> unit
  (* associated with ``set_by_name`` *)

  val ( .?( ) ) : t -> (elt array -> bool) -> t
  (* associated with ``filter_row`` *)

  val ( .?( )<- ) : t -> (elt array -> bool) -> (elt array -> elt array) -> t
  (* associated with ``filter_map_row`` *)

  val ( .$( ) ) : t -> int list * string list -> t
  (* associated with ``get_slice_by_name`` *)


Let me present several examples to demonstrate how to use them. We can first pass in row index and head name tuple in ``%()`` to access cells.


.. code-block:: ocaml

  frame.%(1,"age");;
  (* return Bob's age. *)

  frame.%(2,"salary") <- pack_float 3000.;;
  (* change Carol's salary to 3000. *)


``.?()`` provides a shortcut to filter out the rows satisfying the passed-in predicate and returns the results in a new dataframe. For example, the following code filters out the people who are younger than 30.


.. code-block:: ocaml

  frame.?(fun r -> unpack_int r.(1) < 30);;


The output should look like this.


.. code-block:: text

  val frame : Owl_dataframe.t =

    +-----+---+------
      name age salary
    +-----+---+------
  R0 Alice  20  2200.
  R1   Bob  25  2100.
  R2  Erin  22  2300.
  R3  Erin  22  2300.


The cool thing about ``.?()`` is that you can chain the filters up like below. The code first filters out the people younger than 30, then further filter out whose salary is higher than 2100.


.. code-block:: ocaml

  frame.?(fun r -> unpack_int r.(1) < 30)
       .?(fun r -> unpack_float r.(2) > 2100.);;


It is also possible to filter out some rows then make some modifications. For example, we want to filter out those people older than 25, then raise their salary by 5%. We can achieve this in two ways. First, we can use ``filter_map_row`` functions.


.. code-block:: ocaml

  let predicate x =
    let age = unpack_int x.(1) in
    if age > 25 then (
      let old_salary = unpack_float x.(2) in
      let new_salary = pack_float (old_salary *. 1.1) in
      x.(2) <- new_salary;
      Some x
    )
    else
      None
  ;;

  filter_map_row predicate frame;;


Alternatively, we can use ``.?( )<-`` indexing operator. The difference is that we now need to define two functions - one (i.e. ``check`` function) for checking the predicate and one (i.e. ``modify`` function) for modifying the passed-in rows.


.. code-block:: ocaml

  let check x = unpack_int x.(1) > 25;;

  let modify x =
    let old_salary = unpack_float x.(2) in
    let new_salary = pack_float (old_salary *. 1.1) in
    x.(2) <- new_salary;
    x;;

  frame.?(check) <- modify;;


Running the code will give you the same result as that of calling ``filter_map_row`` function, but the way of structuring code becomes slightly different.

Finally, you can also use ``$.()`` operator to replace ``get_slice_by_name`` function to retrieve a slice of dataframe.


.. code-block:: ocaml

  frame.$([0;2], ["name"; "salary"]);;



Read/Write CSV Files
-------------------------------------------------

CSV (Comma-Separated Values) is a common format to store tabular data. The module provides simple support to process CSV files. The two core functions are as follows.


.. code-block:: ocaml

  val of_csv : ?sep:char -> ?head:string array -> ?types:string array -> string -> t

  val to_csv : ?sep:char -> t -> string -> unit


``of_csv`` function loads a CSV file into in-memory dataframe while ``to_csv`` writes a dataframe into CSV file on the disk. In both functions, we can use ``sep`` to specify the separator, the default separator is `tab` in Owl.

For ``of_csv`` function, you can pass in the head names using ``head`` argument, otherwise the first row of the CSV file will be used as head. ``types`` argument is used to specify the type of each column in a CSV file. If ``types`` is dropped, all the column will be treated as string series by default. Note the length of both ``head`` and ``types`` must match the actual number of columns in the CSV file.

The mapping between ``types`` string and actual OCaml type is below.

- ``b``: boolean values;
- ``i``: integer values;
- ``f``: float values;
- ``s``: string values;


In the following examples, we will use Zoo system to load `a gist <http://gist.github.com/3de010940ab340e3d2bfb564ecd7d6ba>`_ which contains several example CSV files. Please make sure you have Zoo system properly installed on your machine.


The first example simply loads the `funding.csv` file into a dataframe, then pretty prints out the table.


.. code-block:: ocaml

  let example_01 gist_path =
    let fname = gist_path ^ "funding.csv" in
    let types =  [|"s";"s";"f";"s";"s";"s";"s";"f";"s";"s"|] in
    let df = Dataframe.of_csv ~sep:',' ~types fname in
    Owl_pretty.pp_dataframe Format.std_formatter df


The result should look like this. I have truncated out some rows to save space here.


.. code-block:: text

       +-----------------+-----------------+-------+---------+-------------+-----+----------+----------+--------------+------------
                permalink           company numEmps  category          city state fundedDate  raisedAmt raisedCurrency        round
       +-----------------+-----------------+-------+---------+-------------+-----+----------+----------+--------------+------------
     R0          lifelock          LifeLock     nan       web         Tempe    AZ   1-May-07   6850000.            USD            b
     R1          lifelock          LifeLock     nan       web         Tempe    AZ   1-Oct-06   6000000.            USD            a
     R2          lifelock          LifeLock     nan       web         Tempe    AZ   1-Jan-08  25000000.            USD            c
     R3       mycityfaces       MyCityFaces      7.       web    Scottsdale    AZ   1-Jan-08     50000.            USD         seed
     R4          flypaper          Flypaper     nan       web       Phoenix    AZ   1-Feb-08   3000000.            USD            a
     R5      infusionsoft      Infusionsoft    105.  software       Gilbert    AZ   1-Oct-07   9000000.            USD            a
                      ...               ...     ...       ...           ...   ...        ...        ...            ...          ...
  R1450              cozi              Cozi     26.  software       Seattle    WA   1-Jun-08   8000000.            USD            c
  R1451           trusera           Trusera     15.       web       Seattle    WA   1-Jun-07   2000000.            USD        angel
  R1452        alerts-com        Alerts.com     nan       web      Bellevue    WA   8-Jul-08   1200000.            USD            a
  R1453             myrio             Myrio     75.  software       Bothell    WA   1-Jan-01  20500000.            USD unattributed
  R1454     grid-networks     Grid Networks     nan       web       Seattle    WA  30-Oct-07   9500000.            USD            a
  R1455     grid-networks     Grid Networks     nan       web       Seattle    WA  20-May-08  10500000.            USD            b


The second example is slightly more complicated. It loads `estate.csv` file then filters out the some rows with two predicates. You can see how the two predicates are chained up with ``.?()`` indexing operator.


.. code-block:: ocaml

  let example_05 gist_path =
    let fname = gist_path ^ "estate.csv" in
    let d = (of_csv ~sep:',' fname)
      .?(fun row -> unpack_string row.(7) = "Condo")
      .?(fun row -> unpack_string row.(4) = "2")
    in
    Owl_pretty.pp_dataframe Format.std_formatter d2


For the other examples, please refer to this Zoo gist `dataframe.ml <https://github.com/owlbarn/owl/blob/master/examples/dataframe.ml>`_.



What Is Next
-------------------------------------------------

Comparing to those very mature libraries like Pandas, the Dataframe module in Owl is very young. I also try to keep its functionality minimal in the beginning to reserve enough space for future adjustment. From my point of view, dataframe should only offer a minimal set of table manipulation functions, its analytical capability should come from the combination with other modules (e.g. `Stats`) in Owl.
