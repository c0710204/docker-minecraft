FROM maxexcloo/java:latest
MAINTAINER Xiang Gu <c0710204@gmail.com>
EXPOSE 25565 25566 25567
# deploy files
COPY server /server


#cd /server;Java" -Xincgc -Xmx1G -jar "/server/cauldron-1.7.10-1.1207.01.187-server.jar 
WORKDIR /server
CMD java -Xincgc -Xmx1G -jar cauldron-1.7.10-1.1207.01.187-server.jar 