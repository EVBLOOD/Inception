FROM debian:buster
RUN apt-get update -y && apt-get upgrade -y
COPY ./script.sh /tmp/s.sh
EXPOSE 9000
ENTRYPOINT ["/bin/sh", "/tmp/s.sh"]