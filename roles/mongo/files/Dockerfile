FROM centos
MAINTAINER arocha@alticelabs.com
COPY mongodb-org.repo /etc/yum.repos.d/mongodb-org.repo
RUN yum -y update && yum -y install mongodb-org
#RUN mkdir -p /data/db
#RUN chown `id -u` /data/db
#VOLUME /data/db
COPY ./mongod_deb.conf /etc/mongod.conf
EXPOSE 27017
#ENTRYPOINT ["/usr/bin/mongod", "--config", "/etc/mongodb.conf"] 
ENTRYPOINT /usr/bin/mongod --config /etc/mongod.conf
