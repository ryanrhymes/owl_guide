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

  val copy : t -> t          (* copy the dataframe. *)
  val row_num : t -> int     (* return the number of rows. *)
  val col_num : t -> int     (* return the number of columns. *)
  val shape : t -> int * int (* return the shape. *)
  val numel : t -> int       (* return the number of elements. *)
  ...


The module applies several optimisation techniques to accelerate the operations on dataframes. Please refer to the API reference for the complete function list.



Query Frames
-------------------------------------------------

We can use various functions in the module to retrieve the information from a dataframe. The basic ``get`` and ``set`` function treats the dataframe like a matrix. We need to specify the row and column index to retrieve the value of an element.


.. code-block:: ocaml

  Dataframe.get frame 2 1;;
  (* return Carol's age, i.e. 30 *)


Because each column has a name, we can also use head to retries information. However, we still need to pass in the row index because rows are not associated with names.


.. code-block:: ocaml

  Dataframe.get_by_name frame 2 "salary";;
  (* return Carol's salary, i.e. 2500. *)


We can use ``head`` and ``tail`` functions to retrieve only the beginning or end of the dataframe. The results will be returned as a new dataframe. We can also use the more powerful functions like ``get_slice`` or ``get_slice_by_name`` if we are interested in the data within a dataframe. The slice definition used in these two functions are the same as that used in Owl's Ndarray modules.


.. code-block:: ocaml

  Dataframe.get_slice_by_name ([1;2], ["name"; "age"]) frame;;
  (* return Bob's and Carol's name and age *)



What Is Next
-------------------------------------------------

Discuss about future development ...
