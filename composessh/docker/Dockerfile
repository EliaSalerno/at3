FROM ubuntu

ARG SSH_MASTER_USER
ARG SSH_MASTER_PASS
RUN apt-get update && apt-get install iproute2 && apt-get install -y openssh-server && apt-get install -y nano && apt-get install -y git
RUN mkdir /var/run/sshd
#RUN echo -e "$SSH_MASTER_USER:$SSH_MASTER_PASS" | chpasswd
COPY ssh_config /etc/ssh/ssh_config
COPY sshd_config /etc/ssh/sshd_config

#RUN chmod +x /app
#RUN /app/us.sh

COPY entrypoint.sh* /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/usr/sbin/sshd","-D"]
CMD tail -f /dev/null
