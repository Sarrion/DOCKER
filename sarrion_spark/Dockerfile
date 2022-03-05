FROM \
  ubuntu:20.04

RUN apt update
RUN apt -y upgrade

ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y openjdk-11-jdk

RUN apt install -y wget
RUN wget https://downloads.lightbend.com/scala/2.12.15/scala-2.12.15.deb
RUN dpkg -i scala-2.12.15.deb

RUN wget https://dlcdn.apache.org/spark/spark-3.2.0/spark-3.2.0-bin-hadoop3.2.tgz
RUN tar xvf spark-3.2.0-bin-hadoop3.2.tgz 
RUN mv spark-3.2.0-bin-hadoop3.2 /opt/spark
ENV SPARK_HOME=/opt/spark
ENV PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

RUN rm spark-3.2.0-bin-hadoop3.2.tgz
RUN rm scala-2.12.15.deb

RUN apt install -y gnupg2 # this line is to run the curl -sL command below
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | tee /etc/apt/sources.list.d/sbt.list
RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | tee /etc/apt/sources.list.d/sbt_old.list
RUN apt install -y curl
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt update
RUN apt install -y sbt

CMD ["bash"]
