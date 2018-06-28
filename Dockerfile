FROM ubuntu:18.04

ENV BUILDDEPS="g++ git cmake ca-certificates \
            libopencv-dev libboost-all-dev \
            libeigen3-dev libtclap-dev libgsl-dev libceres-dev \
            libkyotocabinet-dev libcrypto++-dev"

ENV DEBIAN_FRONTEND=noninteractive

RUN     apt-get -yqq update && \
        apt-get install -yq --no-install-recommends ${BUILDDEPS} && \
        rm -rf /var/lib/apt/lists/*
