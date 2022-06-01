FROM \
  --platform=linux/amd64 ubuntu:22.04

RUN apt-get update
RUN apt-get -y upgrade


ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install python3.10

RUN apt-get -y install python3-pip
RUN yes | pip3 install jupyterlab 


COPY ./julia-1.7.3-linux-x86_64.tar.gz /julia-1.7.3-linux-x86_64.tar.gz
RUN tar zxvf julia-1.7.3-linux-x86_64.tar.gz
RUN rm /julia-1.7.3-linux-x86_64.tar.gz

RUN echo 'using Pkg; Pkg.add("IJulia")' | /julia-1.7.3/bin/julia


CMD ["bash"]
