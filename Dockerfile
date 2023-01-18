FROM debian:stable-slim

# update and install dependencies
RUN apt-get update \
    && apt-get install -y software-properties-common --no-install-recommends \
    && apt-add-repository "deb http://httpredir.debian.org/debian sid main" && apt-get update \
    && apt-get install -y make cmake git g++ libstdc++-12-dev clang clang-format --no-install-recommends \
    && apt-get install -y libssl-dev libboost-all-dev --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*


# From project root directory
# docker build .
# docker images
# docker tag XXXHASHXXX nashtrash/isd-base
# docker push nashtrash/isd-base
# docker save nashtrash/isd-base > image.tar
# scp ./image.tar heminggs@asfiled.com:~/
# docker load < image.tar
