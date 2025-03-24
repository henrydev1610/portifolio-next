# Usar uma imagem leve do Node.js
FROM node:20-alpine

# Definir o diretório de trabalho no contêiner
WORKDIR /app

# Copiar apenas os arquivos essenciais
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar todo o restante do projeto
COPY . .

# Expor a porta do Next.js (3000 por padrão)
EXPOSE 3000

# Iniciar o servidor Next.js em modo de desenvolvimento
CMD ["npm", "run", "dev"]
