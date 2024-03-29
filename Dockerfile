# syntax=docker/dockerfile:1

FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install 
COPY . .
EXPOSE 3000
cmd npm run build
cmd npm start