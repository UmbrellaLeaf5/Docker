FROM mcr.microsoft.com/devcontainers/cpp:ubuntu-24.04

# [Optional] Uncomment this section to install additional vcpkg ports.
# RUN su vscode -c "${VCPKG_ROOT}/vcpkg install <your-port-name-here>"

# [Optional] Uncomment this section to install additional packages.
RUN apt-get update &&\
  export DEBIAN_FRONTEND=noninteractive &&\
  apt-get -y install --no-install-recommends git python3 python3-ipykernel
