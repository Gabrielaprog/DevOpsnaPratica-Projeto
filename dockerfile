# Usar imagem base do Node.js
FROM node:18-alpine

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o package.json
COPY package.json .

# Instalar as dependências
RUN npm install

# Copiar todos os arquivos da aplicação
COPY . .

# Exponha a porta 8080
EXPOSE 8080

# Executar o servidor http-server
CMD ["npm", "run", "dev"]