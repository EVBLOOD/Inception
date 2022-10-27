FROM debian:buster

RUN apt update -y && apt upgrade -y && apt install redis -y
ENTRYPOINT redis-server --protected-mode no