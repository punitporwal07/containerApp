FROM ubuntu:16.04
FROM punitporwal07/java:8
MAINTAINER Punit <punitporwal07@gmail.com>

#RUN useradd -ms /bin/bash red && chown -R red:red /software/

RUN mkdir -p /software/tomcat

WORKDIR /software/tomcat

COPY . /software/tomcat/

ENV JAVA_HOME=/software/java/jdk1.8.0_131

EXPOSE 8000

RUN chown -R red:red /software

ENTRYPOINT /software/tomcat/apache-tomcat-8.5.40/bin/startup.sh

#ENV ENV "/software/tomcat/apache-tomcat-8.5.40/bin/./startup.sh"
#CMD ["/bin/bash/", "/software/tomcat/apache-tomcat-8.5.40/bin/startup.sh"]
