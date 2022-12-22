FROM \
  ubuntu:22.04

RUN apt-get update
RUN apt-get -y upgrade

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install python3.10

RUN apt-get -y install python3-pip
RUN yes | pip3 install jupyterlab 

RUN apt-get install curl -y

#  Rust installation requires manual input for one option, 
# the following bypass has been extracted from https://github.com/rust-lang/rustup/issues/297
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN cargo install evcxr_jupyter
RUN evcxr_jupyter --install
RUN rustup component add rust-src


CMD ["bash"]
