FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# Cambiado de RUN a CMD para ejecutar durante la ejecución del contenedor
CMD ["npm", "run", "build"]

# Ajustado el puerto para reflejar el puerto correcto de tu aplicación
EXPOSE 3000
