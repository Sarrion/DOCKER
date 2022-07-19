FROM \
  ubuntu:20.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get update

#RUN apt-get install -y openjdk-11-jdk
RUN apt-get install -y openjdk-8-jdk

RUN apt-get install -y tmux vim git curl wget

RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz
RUN tar xzvf apache-maven-3.8.4-bin.tar.gz
ENV PATH="/apache-maven-3.8.4/bin:${PATH}"

CMD ["bash"]
