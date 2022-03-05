FROM \
  ubuntu:20.04

RUN apt update
RUN apt -y upgrade

ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y openjdk-11-jdk

RUN apt install -y wget
RUN wget https://dlcdn.apache.org/hadoop/common/hadoop-3.3.1/hadoop-3.3.1.tar.gz
RUN tar xzf hadoop-3.3.1.tar.gz 
RUN rm hadoop-3.3.1.tar.gz 

#ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/

CMD ["bash"]
