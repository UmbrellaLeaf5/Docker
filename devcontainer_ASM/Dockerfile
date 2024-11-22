FROM mcr.microsoft.com/devcontainers/cpp:ubuntu-24.04

# [Optional] Uncomment this section to install additional vcpkg ports.
# RUN su vscode -c "${VCPKG_ROOT}/vcpkg install <your-port-name-here>"

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update &&\
  export DEBIAN_FRONTEND=noninteractive &&\
  apt-get -y install --no-install-recommends clang gcc clang-format cmake git\
  # libfontconfig1-dev freeglut3-dev mesa-common-dev binutils-dev libtool\
  libboost-all-dev\
  libfltk-dev libxinerama-dev libxft-dev libglu1-mesa-dev
# libgl1-mesa-dev libglu1-mesa libglu1-mesa-dev libx11-dev libxext-dev libxrender-dev\
