FROM centos:7
 
ADD ./nc.sh /nc.sh
 
USER root
RUN yum install -y nc && \
    chmod +x /nc.sh
 
CMD ["/nc.sh"]
