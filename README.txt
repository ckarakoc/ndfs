README file for the 2017-2018 Concurrency and Multi-threading assignment

File structure

bin/ndfs
    script to start the application.
bin/mk-submit.sh
    script to create a .tar.gz file of your sources.
bin/build.sh
    script to run ant on DAS4.
build.xml
    ant script.
doc
    javadoc for the graph package.
input
    various input files to run the application with.
lib 
    jar files needed for the application.
README.txt
    this file.
src
    The source code for this project.

File structure source code
    driver/Main.java
	The Main class that drives the application. 
    ndfs/nndfs
	The package for the sequential nndfs version.
    ndfs/mcndfs_1_naive
	The package for the naive multi-core version. Initially, this is a copy
	of the ndfs/nndfs package.

Building the application

Run ant from the root directory (ndfs)
$ ant

Generating the Java documentation for the application

Run ant from the root directory (ndfs)
$ ant javadoc

Running the application

From the root directory run 
$ bin/ndfs

This will give the usage. An example of a correct run of the application is:
$ bin/ndfs input/accept-cycle.prom seq 1
The first argument is the input file, the second argument indicates the version to use, the third
argument is the number of worker threads.

Reading the documentation of the program

Open javadoc/index.html in a browser (after generating the javadoc, see above).

Reading the documentation of the graph package

Open doc/index.html in a browser.

Programming the mcndfs_1_naive version

Your first programming task is to create a multi-core NDFS version that uses
a naive approach to solve the concurrency problems. A naive approach might
for instance use global locks to protect data that is shared between threads.
Initially, the package ndfs.mcndfs_1_naive contains the same code as the
package ndfs.nndfs. Modify the source to create the multi-core version and add
the version to the driver.Main.dispatch() method if needed. If you adhere to
the convention of the NDFSFactory.createMCNDFS() method, the current dispatch()
method is fine.

Programming other multi-core versions

You then continue and create more multicore versions in the
same manner. Please add packages mcndfs_2_<your_version_name_here>,
mcndfs_3_<different_name>, etc and add them to ndfs.NDFSFactory and the
driver.Main.dispatch() methods (again, if needed). Bachelor students need to
add one more version; master students need to add 4 more versions, and also need
to implement Alg. 3 of the Laarman paper.

Warnings

When doing timing runs, please make sure that you use a separate run for
each version, because otherwise timing information may become less reliable,
as the Java runtime system may cause unexpected overhead.
