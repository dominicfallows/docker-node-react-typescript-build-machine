FROM ubuntu:latest

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y  

CMD ["/bin/bash"]