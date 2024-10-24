FROM ubuntu:20.04
RUN apt-get update && apt-get install nginx -y && rm -rf /var/lib/apt/listis/*
EXPOSE 80
CMD [ "nginx","-g","daemon off;" ]