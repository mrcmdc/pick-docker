
# PICK - docker




## Autores

- [@mrcmdc](https://www.github.com/mrcmdc)

- LINUXtips
## Licença


[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)

## Arquivos do Treinamento

### Day02 - Primeiro Dockerfile

```
FROM ubuntu:20.04
RUN apt-get update && apt-get install nginx -y && rm -rf /var/lib/apt/lists/*
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
```

### Day02 - Dockerfile com Entrypoint

```
ROM ubuntu:20.04
LABEL maintainer="mendonca.marcos@live.com"
RUN apt-get update && apt-get install nginx -y && rm -rf /var/lib/apt/lists/*
COPY index.html /var/www/html/
WORKDIR /var/www/html/
EXPOSE 80
ENTRYPOINT [ "nginx" ]
CMD [ "-g","daemon off;" ]
```
### Day02 - Dockerfile MultiStage
Nesse não há MultiStage:

```
FROM golang:1.18
WORKDIR /app
COPY . ./
RUN go mod init hello
RUN go build -o /app/hello
CMD [ "/app/hello" ]
```

Quando a imagem é produzida fica com 967MB de tamanho.

Agora o Dockerfile está configurando a imagem do go como builder:

```
FROM golang:1.18 as builder
WORKDIR /app
COPY . ./
RUN go mod init hello
RUN go build -o /app/hello

FROM alpine:3.15.9
COPY --from=builder /app/hello /app/hello
CMD [ "/app/hello" ]
```
Agora, o tamanho da imagem caiu para 7,35MB.




