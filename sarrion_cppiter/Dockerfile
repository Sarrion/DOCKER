FROM \
  ubuntu:22.04

RUN apt-get update
RUN apt-get -y upgrade


ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install python3.10

RUN apt-get -y install python3-pip
RUN yes | pip3 install jupyterlab 


RUN apt-get -y install wget
#RUN wget https://root.cern.ch/download/cling/cling_2020-11-05_ROOT-ubuntu2004.tar.bz2
COPY cling_2020-11-05_ROOT-ubuntu2004.tar.bz2 /
RUN tar -xvf cling_2020-11-05_ROOT-ubuntu2004.tar.bz2
ENV PATH="${PATH}:/cling_2020-11-05_ROOT-ubuntu2004/bin"
WORKDIR "/cling_2020-11-05_ROOT-ubuntu2004/share/cling/Jupyter/kernel"
RUN pip3 install -e . && \
  jupyter-kernelspec install cling-cpp17 && \
  jupyter-kernelspec install cling-cpp14 && \
  jupyter-kernelspec install cling-cpp11 && \
  jupyter-kernelspec install cling-cpp1z
WORKDIR "/"

#RUN apt-get -y install wget, git, cmake
#RUN yes | pip3 install distro 

#RUN wget https://raw.githubusercontent.com/root-project/cling/master/tools/packaging/cpt.py && chmod +x cpt.py
#RUN yes | ./cpt.py --check-requirements && ./cpt.py --create-dev-env Debug --with-workdir=./cling-build/


CMD ["bash"]
