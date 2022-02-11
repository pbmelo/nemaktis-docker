#!/bin/sh

# I suggest using something like
#nmuserhome=$HOME"/Documents/docker/nemaktis/programs/"
if [ ! -z $1 ]
then
	nmuserhome=$1
	docker run --rm -it \
		--env DISPLAY=${DISPLAY} \
		--volume /tmp/.X11-unix:/tmp/.X11-unix\
		--volume $nmuserhome:/home/nm-user/programs \
		nemaktis-docker
else
	docker run --rm -it \
		--env DISPLAY=${DISPLAY} \
		--volume /tmp/.X11-unix:/tmp/.X11-unix \
		nemaktis-docker
fi
