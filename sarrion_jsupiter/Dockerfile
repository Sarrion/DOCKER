FROM \
  ubuntu:21.04

RUN apt-get update
RUN apt-get -y upgrade


ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install python3.10

RUN apt-get -y install python3-pip
RUN yes | pip3 install jupyterlab 


RUN apt-get -y install nodejs npm
RUN npm config set prefix $HOME
RUN npm install -g ijavascript
RUN /root/bin/ijsinstall
RUN cat /root/.local/share/jupyter/kernels/javascript/kernel.json | sed 's|ijskernel|/root/bin/ijskernel|' > /root/.local/share/jupyter/kernels/javascript/kernel.json


CMD ["bash"]
