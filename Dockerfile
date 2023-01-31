FROM ubuntu:23.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
  python3 python3-pip \
  firefox-geckodriver \
  xvfb \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir selenium
