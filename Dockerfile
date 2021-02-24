# Criando a imagem base direto do Dockerhub
FROM node:latest

# :)
LABEL maintainer="Renato Lucena <cpdrenato@gmail.com>"

LABEL version="1.0"

# Criando o diretório da aplicação
WORKDIR /app/re_api

# Copiando tudo o que precisa para dentro da imagem e rodar a aplicação
COPY . .

# Instalando as dependências
RUN yarn install

# Expondo a porta da aplicação
EXPOSE 3001

# Inicianizando a aplicação
CMD ["yarn", "dev:server"]