#!/bin/sh

#nmuserhome=$HOME"/Documents/docker/nemaktis/programs/"
if [-z $1 ]
then
	nmuserhome=$1
	sudo docker run --rm -it \
		-e DISPLAY=${DISPLAY} \
		--volume /tmp/.X11-unix:/tmp/.X11-unix\
		--volume $nmuserhome:/home/nm-user/programs \
		nemaktis-docker xterm
else
	sudo docker run --rm -it \
		-e DISPLAY=${DISPLAY} \
		--volume /tmp/.X11-unix:/tmp/.X11-unix \
		nemaktis-docker xterm
fi
