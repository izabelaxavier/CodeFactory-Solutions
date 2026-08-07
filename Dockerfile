# Usa uma imagem leve do servidor Nginx para rodar o site
FROM nginx:alpine

# Copia os arquivos da nossa pasta 'src' para a pasta do servidor dentro do container
COPY ./src /usr/share/nginx/html

# Informa que o container vai usar a porta 80
EXPOSE 80

# Comando para iniciar o servidor
CMD ["nginx", "-g", "daemon off;"]
