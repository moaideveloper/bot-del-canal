# Usa una imagen base de Node.js versión 20
FROM node:20

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación
COPY . .

# Exponer el puerto que tu aplicación utiliza
EXPOSE 3000

# Definir el comando para correr tu aplicación
CMD ["node", "index.js"]
