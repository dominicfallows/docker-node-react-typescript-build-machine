FROM ubuntu:latest

ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential curl nodejs git vim htop

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
RUN $HOME/.yarn/bin/yarn global add typescript create-react-app create-react-native-app --non-interactive

CMD ["/bin/bash"]