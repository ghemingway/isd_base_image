# Base Docker Image for ISD

### Requirements

* Start with Debian Bullseye-Slim
* Add Cmake 3.15.4
* Add 

sudo pip3 install conan -y

apt
- ubuntu-toolchain-r-test
- llvm-toolchain-trusty-8
packages
- clang-format-8
- libstdc++-9-dev
- clang-8
- g++-9
- boost
- openssl


# docker pull debian:bullseye-slim
# docker pull debian:stable-slim
# docker run -it debian:stable-slim /bin/bash
