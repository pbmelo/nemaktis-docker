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

Note that if you're not a member of the docker group, building and running the
container will require root privileges.

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

If the command fails, run it with root privileges.

### Starting the container

Simply run the container by using

	docker run -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix --rm -it nemaktis-docker

Or, if you want to mount a directory with your Nemaktis Python programs, use

	docker run -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix /path/to/dir:/home/nm-user/programs --rm -it nemaktis-docker

Alternatively, use the automated script

	./run.sh

Similarly, if the command fails, run it with root privileges.

Or, you can run it defining a directory as an argument,

	./run.sh /path/to/programs/directory

Such as

	./run.sh ~/docker-dir/nemaktis-docker

### Usage

After everything is up and running, simply run your programs from the container
by executing

	python /path/to/your/program

### Notes

I decided to use the base Ubuntu image for this project because it is easy to
install the anaconda environment within it.  I understand the standard is to
employ the slimmer Alpine docker image, but it uses musl instead of glibc, which
makes things difficult, so I have opted for simplicity here.  The other familiar
and commonplace alternatives would be Debian stable slim, which is a couple
megabytes heavier than Ubuntu, and Fedora, which is almost twice as heavy.
Considering that anaconda, nemaktis, and its the dependencies together are well
over 3.5 GB in size, picking an image that is a couple megabytes slimmer won't
matter much.  Currently, this nemaktis-docker image is 3.85 GB.

Further, this particular image comes with xterm, tmux, and vim in case you want
to edit your programs in the container itself instead of editing them from the
host.  If you think it is unnecessary bloat, feel free to edit the Dockerfile
yourself and remove the lines where those programs are installed.

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
