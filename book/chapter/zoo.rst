Scripting and Zoo System
=================================================

In this tutorial, I will introduce the Zoo system in Owl and how to use it to make "small functions", then distribute and share them with other users. Before we start, I will briefly discuss the motivation of the Zoo system.

It is known that we can use OCaml as a script language as Python (at certain cost of performance). Even though compiling into native code for production use is recommended, scripting is still useful and convenient. While designing Owl, my goal is always to make it an open, flexible, and extensible system. Users can make their own "small" scripts and share them with others conveniently, so they do not have to wait for such functions to be implemented in Owl's master branch or submit something "heavy" to OPAM.



Typical Scenario
-------------------------------------------------

Our scenario is very simple: Alice is a data analyst and uses Owl in her daily job. One day, she realised that the functions she needed had not been implemented yet in Owl. Therefore, she implemented these functions by herself. She thought these functions might be useful to others, e.g., her colleague Bob, she decided to share these functions using Zoo System.

Now let me demonstrate how Alice manages to do so in the following, step by step.


## Create A Script

First, Alice needs to create a folder (e.g., `myscript` folder) for her shared script. She needs at least two files in this folder. The first one is of course the file (i.e., `coolmodule.ml`) implementing the function as below. The function `sqr_magic` returns the square of a magic matrix, it is quite useless in reality but serves as an example here.

```ocaml
#!/usr/bin/env owl

open Owl

let sqr_magic n = Mat.(magic n |> sqr)
```

The second file she needs is a `readme.md` which provides a brief description of the shared script. Note that the first line of the `readme.md` will be used as a short description for the shared scripts.

```
Square of Magic Matrix

`Coolmodule` implements a function to generate the square of magic matrices.
```


Share via Gist
-------------------------------------------------

Now, Alice needs to distribute the files in `myscript` folder. The distribution is done via `gist.github.com`, so you must have `gist` installed on your computer. E.g., if you use Mac, you can install `gist` with ```brew install gist```. The following command for distribution is easy, and it will ask you to log into your github account.

```bash
owl -upload myscript
```

The `owl -upload` command simply uploads all the files in `myscript` as a bundle to your `gist.github.com` page. The command will print out the url after a successful upload. In our case, you can check [this page](https://gist.github.com/9f0892ab2b96f81baacd7322d73a4b08).



Import in Another Script
-------------------------------------------------

The bundle Alice uploaded before is assigned a unique `id`, i.e. `9f0892ab2b96f81baacd7322d73a4b08`. In order to use the `sqr_magic` function, Bob only needs to use `#zoo` directive in his script, i.e., `bob.ml`.

```ocaml
#!/usr/bin/env owl
#zoo "9f0892ab2b96f81baacd7322d73a4b08"

let _ = Coolmodule.sqr_magic 4 |> Owl.Mat.print
```

Bob's script is very simple, but there are a couple of things worth pointing out: (1) Zoo system will automatically download the bundle of a given id if it is not cached locally; (2) All the `ml` files in the bundle will be imported as modules, so you need to use `Coolmodule.sqr_magic` to access the function. Lastly, you may also want to use `chmod +x bob.ml` to make the script executable.

Note that to use `#zoo` directive in `utop` you need to manually load the `owl_zoo` library with `#require "owl_zoo";;`. You may want to make `utop` load the library automatically by adding this line to `~/.ocamlinit`.



More Options
-------------------------------------------------

That's all. Zoo system is not complicated at all. There will be more features to be added in future. For the time being, you can check all the available options by executing `owl`.

```bash
$ owl
Owl's Zoo System

Usage:
  owl [utop options] [script-file]	execute an Owl script
  owl -upload [gist-directory]		upload code snippet to gist
  owl -download [gist-id]		download code snippet from gist
  owl -remove [gist-id]			remove a cached gist
  owl -update [gist-ids]		update (all if not specified) gists
  owl -run [gist-id]			run a self-contained gist
  owl -info [gist-ids]			show the basic information of a gist
  owl -list				list all the cached gists
  owl -help				print out help information
```
