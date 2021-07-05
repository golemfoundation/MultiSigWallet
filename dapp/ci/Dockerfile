FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive

# Run update && install as one command:
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#apt-get
RUN apt-get -qy update && apt-get install -y \
      python3

RUN useradd --shell /bin/bash --create-home user

RUN mkdir /home/user/multisigwallet
RUN chown 1000:1000 /home/user/multisigwallet

USER user

WORKDIR /home/user/multisigwallet

COPY --chown=user:user ./css/ /home/user/multisigwallet/css/
COPY --chown=user:user ./build/ /home/user/multisigwallet/build/
COPY --chown=user:user ./less/ /home/user/multisigwallet/less/
COPY --chown=user:user ./src/ /home/user/multisigwallet/src/

EXPOSE 8282

WORKDIR /home/user/multisigwallet/src

ENTRYPOINT python3 -m http.server 8282
