FROM java:7-jre
MAINTAINER Xiang Gu <c0710204@gmail.com>
EXPOSE 25565 25566 25567 22 80

# ==>install tools
RUN apt-get update && apt-get install -y openssh-server nginx supervisor
#supervisord
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# ==>init ssh
RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile



# ==>deploy files
COPY server /server
#COPY client /client

# ==>CMD
WORKDIR /server
ENTRYPOINT ["/usr/bin/supervisord"]