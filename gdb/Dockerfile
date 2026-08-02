ARG UBUNTU_VERSION=24.04 # lts
FROM ubuntu:$UBUNTU_VERSION

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    gdb gdbserver \
    && rm -rf /var/lib/apt/lists/*