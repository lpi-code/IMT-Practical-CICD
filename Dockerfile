# npm instal
FROM node:14.15.4-alpine3.12 as build
WORKDIR /app
COPY package.json ./package.json
RUN npm install
COPY . .
EXPOSE 8080
CMD ["npm", "start"]