FROM node:18.18-bullseye

WORKDIR /app-ApiReserveAzureFinal

COPY package*.json ./

RUN npm install 

COPY . .

EXPOSE 3000

CMD ["npm","start"]
