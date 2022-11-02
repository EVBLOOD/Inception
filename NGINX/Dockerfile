FROM debian:buster



RUN apt update -y && apt upgrade -y \ 
    && apt install nginx -y \
    && apt install openssl && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj="/C=MA/ST=none/O=./CN=localhost"

COPY ./tools/default /etc/nginx/sites-available/default

CMD ["daemon off;"]

ENTRYPOINT ["nginx", "-g"]
