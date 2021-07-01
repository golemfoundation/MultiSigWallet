FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive

# Run update && install as one command:
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#apt-get
RUN apt-get -qy update && apt-get install -y \
      gcc \
      make \
      nodejs \
      npm \
      pkg-config \
      time \
      tree \
      netcat-openbsd \
      moreutils \
      git \
      curl \
      tmux \
      screen \
      libusb-1.0-0-dev \
      libhidapi-dev

RUN useradd --shell /bin/bash --create-home user

RUN mkdir /home/user/multisigwallet
RUN chown 1000:1000 /home/user/multisigwallet

USER user
WORKDIR /home/user/multisigwallet

COPY --chown=user:user ./css/ /home/user/multisigwallet/css/
COPY --chown=user:user ./build/ /home/user/multisigwallet/build/
COPY --chown=user:user ./less/ /home/user/multisigwallet/less/
COPY --chown=user:user ./src/ /home/user/multisigwallet/src/
COPY --chown=user:user ./tests/ /home/user/multisigwallet/tests/
COPY --chown=user:user ./Gruntfile.js /home/user/multisigwallet/
COPY --chown=user:user ./Readme.md /home/user/multisigwallet/
COPY --chown=user:user ./config.karma.js /home/user/multisigwallet/
COPY --chown=user:user ./package.json /home/user/multisigwallet/
COPY --chown=user:user ./testrpc.sh /home/user/multisigwallet/

RUN npm install grunt-cli
RUN npm install .

EXPOSE 8282

ENTRYPOINT npx grunt
