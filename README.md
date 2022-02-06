# nemaktis-docker

A way to run the [Nemaktis](https://nemaktis.readthedocs.io/en/latest/) toolkit on Docker.

According to the author,
> "Nemaktis is an open-source platform including tools for propagating and visualising optical field in complex birefringent media such as liquid crystal (LC) layers"

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

### Running

Simply run the container by using
	docker run -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix --rm -it nemaktis-docker xterm

Alternatively, use the automated script

	./run.sh

### License

Nemaktis uses the MIT license and asks users to cite their original papers on
your own published research.  Please see the [original GitHub
repository](https://github.com/warthan07/Nemaktis) for further information.

This particular repository (to build the docker system) uses the GPL3 license.

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
