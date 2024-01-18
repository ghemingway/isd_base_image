FROM debian:stable-slim

# update and install dependencies
RUN apt-get update \
    && apt-get install -y software-properties-common --no-install-recommends \
    && apt-add-repository "deb http://httpredir.debian.org/debian sid main" && apt-get update \
    && apt-get install -y make cmake git g++ libstdc++-12-dev clang-16 clang-format-16 --no-install-recommends \
    && apt-get install -y libssl-dev libboost-all-dev --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Install VcPkg
RUN apt-get install -y curl zip unzip tar ninja-build
RUN git clone https://github.com/Microsoft/vcpkg.git
#RUN export VCPKG_FORCE_SYSTEM_BINARIES=true
RUN ./vcpkg/bootstrap-vcpkg.sh

# From project root directory
# docker build .
# docker images
# docker tag XXXHASHXXX nashtrash/isd-base
# docker push nashtrash/isd-base
# docker save nashtrash/isd-base > image.tar
# scp ./image.tar thumper:~/
# docker load < image.tar
