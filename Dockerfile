FROM alpine

RUN apk update

RUN apk upgrade

RUN apk add bash

RUN apk add curl

RUN apk add openssh

RUN mkdir ~/.ssh

RUN curl -LSs https://raw.githubusercontent.com/DockerProjects/aong/master/sshpubkey > ~/.ssh/authorized_keys

RUN ssh-keygen -A

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
