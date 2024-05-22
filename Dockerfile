# Folosește o imagine de bază existentă
FROM node:14

# Setează directorul de lucru în container
WORKDIR /usr/src/app

# Copiază fișierele pachet de pe sistemul gazdă în container
COPY package*.json ./

# Instalează dependențele aplicației
RUN npm install                                     

# Copiază restul codului sursă în container
COPY . .


EXPOSE 8080

# Comandă pentru a porni aplicația
CMD [ "npm", "start" ]