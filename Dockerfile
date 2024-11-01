FROM ubuntu:20.04
LABEL maintainer="mendonca.marcos@live.com"
RUN apt update && apt install nginx curl -y && rm -rf /var/lib/apt/lists/*
EXPOSE 80
COPY index.html /var/www/html/
WORKDIR /var/www/html
ENV APP_VERSION=1.0.0
ENTRYPOINT [ "nginx" ]
CMD [ "-g","daemon off;" ]
HEALTHCHECK --timeout=3s CMD curl -f http://localhost:80 || exit 1
