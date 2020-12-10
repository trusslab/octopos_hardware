================================
hardware project version control
================================

Software Version: Vivado 2019.1.3

:Author: - Zephyr Yao (zyao@ics.uci.edu)

Create TCL file
---------------

Go to `File`->`Write Project to Tcl`. This command will generate a tcl file along with instructions to recreate the whole project. If using Git for version control,  overwrite the previous tcl file by specifying the file location. Config the options as follow.

![TCL file options](img/2020-02-1.png)

Specifically, we need to check `Copy sources to new project` to create a new project that has all local files (to avoid the need to manually copy these files). `Recreate Block Designs using Tcl`  opts for a script-based re-creation, instead of a file-based one. 

Note that the `\*.txt` files generated along with the tcl file are optional. They are for human verifications. We have them in our git repos.

Copy additional local files
---------------------------

Open the generated tcl files. The file specifies a list of source files needed to e manually copied to git repository. 

![TCL file options](img/2020-02-2.png)



Checklist
---------
Before commit to git, please go over this checklist to ensure they are updated.

- [ ] a TCL file
- [ ] 2 TXT files (optional, for human reference)
- [ ] local files, as specified in the TCL file.
