FROM ubuntu:20.04
LABEL maintainer="mendonca.marcos@live.com"
RUN apt-get update && apt-get install nginx -y && rm -rf /var/lib/apt/lists/*
COPY index.html /var/www/html/
WORKDIR /var/www/html/
EXPOSE 80
ENTRYPOINT [ "nginx" ]
CMD [ "-g","daemon off;" ]