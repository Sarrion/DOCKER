FROM \
  ubuntu:22.04

RUN apt-get update
RUN apt-get -y upgrade


ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install python3.10 python3-pip tmux gdb 

RUN python3 -m pip install gdbfrontend
