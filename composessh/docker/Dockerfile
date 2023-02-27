FROM ubuntu

ARG SSH_MASTER_USER
ARG SSH_MASTER_PASS
RUN unminimize -y
RUN apt-get update 
RUN apt-get install -y nano
RUN apt-get install -y sudo
RUN apt-get install -y openssh-server
COPY ssh_config /etc/ssh/ssh_config
COPY sshd_config /etc/ssh/sshd_config

RUN sudo chmod +x /app/*
RUN /app/us.sh

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD tail -f /dev/null
