FROM debian:buster

COPY ./tools/script.sh /tmp/s.sh

ENTRYPOINT ["./tmp/s.sh"]

CMD ["php7.3-fpm -F"]