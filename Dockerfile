# Use a imagem Node na versão lts-alpine3.19 como base
FROM node:lts-alpine3.19

# Utilize o usuário node para executar a aplicação
USER node

# Defina o diretório de trabalho como /app-money
WORKDIR /app-money

# Copie todos os diretórios e arquivos da sua aplicação para o Container
COPY --chown=node:node . .

# Exponha a porta adequada para que a aplicação seja acessível
EXPOSE 3000

# Instale as dependências da aplicação
RUN npm install

# Configure o comando padrão para executar seu App NodeJS
CMD ["node", "server.js"]
