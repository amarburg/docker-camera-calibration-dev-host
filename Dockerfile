FROM ubuntu:16.04

ENV BUILDDEPS="g++ cmake libopencv-dev libboost-all-dev \
            libeigen3-dev libtclap-dev libgomp1 \
            libsuitesparse-dev git libglew-dev \
            libglm-dev autoconf libtool freeglut3-dev libxmu-dev libxi-dev \
            libtinyxml2-dev ca-certificates"

RUN     apt-get -yqq update && \
        apt-get install -yq --no-install-recommends ${BUILDDEPS} && \
        rm -rf /var/lib/apt/lists/*
