FROM centos:centos7

MAINTAINER Punit <punitporwal07@gmail.com>

RUN useradd red && groupadd redgrp && \
    mkdir -p /software/tomcat

WORKDIR /software/tomcat

RUN curl -O https://downloads.apache.org/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz && tar -xvzf apache-tomcat-8.5.57.tar.gz && rm -rf apache-tomcat-8.5.57.tar.gz

# copy source code oass to container webapps
COPY oass /software/tomcat/apache-tomcat-8.5.57/webapps/oass/

RUN chown -R red:redgrp /software/

# documen the port app listens on
EXPOSE 8000

# install app dependecies
RUN yum -y install java && yum -y clean all

# this command runs when container starts and starts the APP
CMD ["/software/tomcat/apache-tomcat-8.5.57/bin/./catalina.sh", "run"]

#ENTRYPOINT ["/software/tomcat/apache-tomcat-8.5.41/bin/startup.sh"]
#CMD ["/bin/bash/", "/software/tomcat/apache-tomcat-8.5.40/bin/startup.sh"]
