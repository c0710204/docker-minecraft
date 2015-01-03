FROM java:7-jre
MAINTAINER Xiang Gu <c0710204@gmail.com>
EXPOSE 25565 25566 25567 22 80

#install tools
RUN apt-get update && apt-get install -y openssh-server nginx supervisor
#supervisord
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# deploy files
COPY server /server
COPY client /client

#CMD
WORKDIR /server
CMD ["/usr/bin/supervisord"]