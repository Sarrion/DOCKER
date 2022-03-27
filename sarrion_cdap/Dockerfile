FROM \
  ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get install -y openjdk-8-jdk
RUN apt-get install tmux vim git curl wget zip maven openssh-server node.js -y

RUN echo "Europe/Madrid" | tee /etc/timezone
 
COPY ./cdap-sandbox-6.6.0.zip /cdap-sandbox-6.6.0.zip
RUN unzip cdap-sandbox-6.6.0.zip && rm cdap-sandbox-6.6.0.zip

# COMMAND EXAMPLES
# docker run -it -p 11011:11011 -p 11015:11015 -p 5005:5005 cdap
# /cdap-sandbox-6.6.0/bin/cdap sandbox start --enable-debug --foreground
