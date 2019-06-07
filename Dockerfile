FROM centos

MAINTAINER Punit <punitporwal07@gmail.com>

RUN useradd red && groupadd redgrp

RUN mkdir -p /software/tomcat

WORKDIR /software/tomcat

RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz && tar -xvzf apache-tomcat-8.5.41.tar.gz && rm -rf apache-tomcat-8.5.41.tar.gz

COPY oass /software/tomcat/apache-tomcat-8.5.41/webapps/oass/

RUN chown -R red:redgrp /software/

EXPOSE 8000

RUN yum -y install java && yum -y clean all

CMD ["/software/tomcat/apache-tomcat-8.5.41/bin/./catalina.sh", "run"]

#ENTRYPOINT ["/software/tomcat/apache-tomcat-8.5.41/bin/startup.sh"]
#CMD ["/bin/bash/", "/software/tomcat/apache-tomcat-8.5.40/bin/startup.sh"]
