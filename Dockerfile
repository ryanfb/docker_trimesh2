FROM ubuntu:latest

RUN apt-get update && apt-get install -y libxi-dev mesa-common-dev libglu1-mesa-dev build-essential unzip make

ADD https://gfx.cs.princeton.edu/proj/trimesh2/src/trimesh2-2.16.zip trimesh2-2.16.zip
RUN unzip trimesh2-2.16.zip
WORKDIR /trimesh2
RUN make && cp -v bin.Linux64/* /usr/local/bin/
