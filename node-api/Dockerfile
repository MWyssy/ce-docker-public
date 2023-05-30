FROM node:20-alpine3.16 AS base
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY src .

FROM base as run
WORKDIR /app
EXPOSE 3000
CMD ["node", "index.js"]