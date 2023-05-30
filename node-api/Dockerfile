FROM node:20-alpine3.16
EXPOSE 3000
WORKDIR /app
COPY src .
RUN npm install
CMD ["node", "index.js"]