FROM node:14-alpine as build

WORKDIR /app

RUN npm install -g redoc-cli
COPY openapi.yml /app/openapi.yml
RUN redoc-cli bundle /app/openapi.yml -o /app/index.html

FROM nginx:1.21-alpine
COPY --from=build /app/index.html /usr/share/nginx/html/index.html
