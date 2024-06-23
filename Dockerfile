FROM alpine:latest

COPY . /app
WORKDIR /app
RUN apk add --update --no-cache nodejs && \
    npm install

EXPOSE 3000
CMD ["npm" "run" "dev"]