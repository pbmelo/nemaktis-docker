#!/bin/sh

sudo docker run -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix --rm -it nemaktis-docker xterm
