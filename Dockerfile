FROM tomcat:9.0.71-jdk11-temurin-focal

RUN rm -rf /etc/apt/sources.list
ADD sources.list /etc/apt/

ENV TZ=Europe/Moscow

RUN apt update
RUN apt install maven -y 
RUN apt install git -y

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/hw6
WORKDIR /tmp/hw6/
RUN mvn package
RUN cp /tmp/hw6/target/hello-1.0.war $CATALINA_HOME/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]