
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



