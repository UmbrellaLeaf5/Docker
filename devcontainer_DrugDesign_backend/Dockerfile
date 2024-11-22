FROM mcr.microsoft.com/devcontainers/cpp:ubuntu-24.04

# [Optional] Uncomment this section to install additional vcpkg ports.
# RUN su vscode -c "${VCPKG_ROOT}/vcpkg install <your-port-name-here>"

ENV DEBIAN_FRONTEND=noninteractive

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update &&\
  apt-get -y install --no-install-recommends clang gcc clang-format cmake make git\
  libboost-all-dev 

