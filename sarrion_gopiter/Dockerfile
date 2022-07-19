FROM \
  --platform=linux/amd64 ubuntu:20.04

RUN apt-get update
RUN apt-get -y upgrade


ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install python3.10

RUN apt-get -y install python3-pip
RUN yes | pip3 install jupyterlab 


COPY ./go1.18.4.linux-amd64.tar.gz /go1.18.4.linux-amd64.tar.gz
RUN tar zxvf go1.18.4.linux-amd64.tar.gz
RUN rm /go1.18.4.linux-amd64.tar.gz
ENV PATH="${PATH}:/go/bin"


RUN go install github.com/gopherdata/gophernotes@v0.7.5
RUN mkdir -p /root/.local/share/jupyter/kernels/gophernotes
RUN cp "$(go env GOPATH)"/pkg/mod/github.com/gopherdata/gophernotes@v0.7.5/kernel/*  "/root/.local/share/jupyter/kernels/gophernotes"
RUN sed "s|gophernotes|$(go env GOPATH)/bin/gophernotes|" < /root/.local/share/jupyter/kernels/gophernotes/kernel.json.in > /root/.local/share/jupyter/kernels/gophernotes/kernel.json


CMD ["bash"]
