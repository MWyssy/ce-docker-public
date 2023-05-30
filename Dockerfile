FROM nginx:1.24.0-alpine-slim
COPY nginx-website /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]