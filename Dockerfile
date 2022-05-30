FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    make \
    gcc-4.9 \
    g++-4.9 \
    gcc-4.9-multilib \
    g++-4.9-multilib \
    && rm -rf /var/lib/apt/lists/*
