# Use uma imagem base oficial do Node.js
FROM node:16

# Defina o diret�rio de trabalho dentro do cont�iner
WORKDIR /app

# Copie o package.json e package-lock.json para o diret�rio de trabalho
COPY package*.json ./

# Instale as depend�ncias do projeto
RUN npm install

# Copie o restante dos arquivos do projeto para o diret�rio de trabalho
COPY . .

# Exponha a porta que o aplicativo ir� rodar
EXPOSE 3000

# Defina o comando para iniciar o aplicativo
CMD ["node", "app.js"]
