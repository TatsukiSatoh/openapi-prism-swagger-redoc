FROM node:14
WORKDIR /app
RUN npm install -g @stoplight/prism-cli
COPY . .
CMD ["prism", "mock", "/app/openapi.yml", "-h", "0.0.0.0", "-p", "3030"]
