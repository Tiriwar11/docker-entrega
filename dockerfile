# Usa la imagen oficial de Node.js como base
FROM node:14

# Establece el directorio de trabajo en la aplicación
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json (si existe)
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de la aplicación
COPY . .

# Expone el puerto 3000 (puedes cambiarlo según la configuración de tu aplicación)
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
