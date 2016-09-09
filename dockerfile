#Dockerfile
FROM centos

#RUN curl http://<Ipaddress>:<portNo>/nexus-3.0.1-01-unix.tar.gz --create-dirs -o /tmp/nexus-3.0.1-01-unix.tar.gz;curl http://<Ipaddress>:<portNo>/jdk-8u101-linux-x64.rpm --create-dirs -o /tmp/jdk-8u101-linux-x64.rpm;chmod 775 /tmp/*;mkdir -p /usr/local/nexus;tar -xvzf /tmp/nexus-3.0.1-01-unix.tar.gz -C usr/local/nexus; rpm -ivh /tmp/jdk-8u101-linux-x64.rpm

COPY startup.sh /tmp/startup.sh

RUN mkdir -p /usr/local/nexus;useradd nexus;chown -R nexus:nexus /usr/local/nexus;curl http://<Ipaddress>:<portNo>/jdk-8u101-linux-x64.rpm --create-dirs -o /tmp/jdk-8u101-linux-x64.rpm;rpm -ivh /tmp/jdk-8u101-linux-x64.rpm;chmod 775 /tmp/startup.sh;chown nexus:nexus /tmp/startup.sh



######OLD Version#####
USER nexus

RUN curl http://<Ipaddress>:<portNo>/nexus-2.8.0-bundle.tar.gz --create-dirs -o /tmp/nexus-2.8.0-bundle.tar.gz;chmod 775 /tmp/*;tar -xvzf /tmp/nexus-2.8.0-bundle.tar.gz -C usr/local/nexus


ENV PATH=$PATH:/usr/local/nexus/nexus-2.8.0-05/bin


EXPOSE 8081
USER root
ENTRYPOINT ["/tmp/startup.sh"]


######################

