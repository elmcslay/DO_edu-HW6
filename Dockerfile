FROM ubuntu:20.04

RUN apt update
RUN apt install git -y
#RUN apt install default-jdk -y
#RUN apt install maven -y
#RUN apt install tomcat9 -y

EXPOSE 8080

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /var/local




CMD ["/bin/bash"]