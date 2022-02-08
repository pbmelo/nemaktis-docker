# nemaktis-docker

A way to run the [Nemaktis](https://nemaktis.readthedocs.io/en/latest/) toolkit on Docker.

According to the author,
> "Nemaktis is an open-source platform including tools for propagating and visualizing optical field in complex birefringent media such as liquid crystal (LC) layers"

## Dependencies

1. docker itself
2. git to clone the repository

## Usage

The images are based on the Ubuntu docker images and usage is very simple.

For a one-liner command, use the
TL;DR:

	git clone https://github.com/pbmelo/nemaktis-docker && cd nemaktis-docker && ./build.sh && ./run.sh

For more detailed instructions, see the following section.

### Installation

First, clone this repository by running

	git clone github.com/pbmelo/nemaktis-docker

Then, change the directory to our work directory

	cd nemaktis-docker

Afterwards, build the image using

	docker build . --tag nemaktis-docker

Or run the script

	./build.sh

### Starting the container

Simply run the container by using

	docker run -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix --rm -it nemaktis-docker xterm

Or, if you want to mount a directory with your Nemaktis Python programs, use

	docker run -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix /path/to/dir:/home/nm-user/programs --rm -it nemaktis-docker xterm

Alternatively, use the automated script

	./run.sh

Or, defining a directory,

	./run.sh /path/to/programs/directory

### Notes and Usage

This particular image comes with xterm, tmux, and vi in case you want to edit
your programs in the container itself instead of editing them from the host.  If
you think it is unnecessary bloat, feel free to edit the Dockerfile yourself and
remove the lines where those programs are installed.

After everything is up and running, simply run your programs from the container
by executing

	python /path/to/your/program

### License

Nemaktis uses the MIT license and asks users to cite their original papers on
your own published research.  Please see the [original GitHub
repository](https://github.com/warthan07/Nemaktis) for further information.

This particular repository uses the GPL3 license.

Copyright (C) 2022 pbmelo

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see <https://www.gnu.org/licenses/>.
