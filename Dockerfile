FROM maxexcloo/java:latest
MAINTAINER Xiang Gu <c0710204@gmail.com>
COPY server /server
ADD 
EXPOSE 25565 25566 25567
#cd /server;Java" -Xincgc -Xmx1G -jar "/server/cauldron-1.7.10-1.1207.01.187-server.jar 
WORKDIR /server
ENTRYPOINT ["Java","-Xincgc","-Xmx1G","-jar","/server/cauldron-1.7.10-1.1207.01.187-server.jar"]