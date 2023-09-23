FROM ubuntu:16.04 AS stage1
WORKDIR /app

RUN apt update
RUN apt install build-essential -y
RUN mkdir out
COPY file/Makefile /app/