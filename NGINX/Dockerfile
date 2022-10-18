FROM debian:buster

EXPOSE 80

RUN apt-get update -y && apt-get install nginx -y 

CMD ["daemon off;"]

ENTRYPOINT ["nginx", "-g"]
