FROM ubuntu:latest

LABEL author="Dominic Fallows <consultant@dominicfallows.uk>"

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y build-essential curl
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update &&  apt-get install -y curl yarn nodejs git vim htop && \
  rm -rf /var/lib/apt/lists/*

ENV HOME=/root
USER root
WORKDIR $HOME

RUN yarn global add typescript create-react-app create-react-native-app \
  babel-core babel-runtime jest

COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]