# Usa una imagen de Node.js basada en alpine como base
FROM node:14-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia primero solo los archivos necesarios para instalar las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm ci --only=production

# Copia todo el código fuente al directorio de trabajo del contenedor
COPY . .

# Cambiado de CMD a ENTRYPOINT para permitir el paso de argumentos
ENTRYPOINT ["npm", "run", "build"]

# Ajustado el puerto para reflejar el puerto correcto de tu aplicación
EXPOSE 3000
