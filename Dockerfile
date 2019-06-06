FROM punitporwal07/java:8

MAINTAINER Punit <punitporwal07@gmail.com>

#RUN useradd -ms /bin/bash/ red &&

RUN mkdir -p /software/tomcat

WORKDIR /software/tomcat

RUN apt-get update -y \
    && apt-get install -yq curl

RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
RUN tar -xvzf apache-tomcat-8.5.41.tar.gz

COPY . /software/tomcat/apache-tomcat-8.5.41/webapps/
#ADD . /software/tomcat/

RUN chown -R red:redgrp /software/

EXPOSE 8000

#ENTRYPOINT ["/software/tomcat/apache-tomcat-8.5.41/bin/startup.sh"]

#ENV ENV "/software/tomcat/apache-tomcat-8.5.40/bin/./startup.sh"
#CMD ["/bin/bash/", "/software/tomcat/apache-tomcat-8.5.40/bin/startup.sh"]
