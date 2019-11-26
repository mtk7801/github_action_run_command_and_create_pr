FROM ubuntu:18.04

RUN apt update
RUN apt install -y git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]