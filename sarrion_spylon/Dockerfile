FROM \
  ubuntu:22.04

RUN apt-get update
RUN apt-get -y upgrade

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install python3.10

RUN apt-get -y install python3-pip
RUN yes | pip3 install jupyterlab 

RUN apt install -y openjdk-8-jdk

RUN apt install -y wget
RUN wget https://downloads.lightbend.com/scala/2.11.12/scala-2.11.12.deb
RUN dpkg -i scala-2.11.12.deb

RUN wget https://dlcdn.apache.org/spark/spark-3.3.0/spark-3.3.0-bin-hadoop3.tgz 
RUN tar xvf spark-3.3.0-bin-hadoop3.tgz
RUN mv spark-3.3.0-bin-hadoop3 /opt/spark
ENV SPARK_HOME=/opt/spark
ENV PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

# This is to be able to read avros
# RUN wget https://repo1.maven.org/maven2/org/apache/spark/spark-avro_2.12/2.4.8/spark-avro_2.12-2.4.8.jar -C $SPARK_HOME/jars/spark-avro_2.12-2.4.8.jar
COPY ./spark-avro_2.12-2.4.8.jar $SPARK_HOME/jars/spark-avro_2.12-2.4.8.jar

RUN rm scala-2.11.12.deb
RUN rm spark-3.3.0-bin-hadoop3.tgz

RUN pip3 install spylon-kernel
RUN python3 -m spylon_kernel install

CMD ["bash"]
