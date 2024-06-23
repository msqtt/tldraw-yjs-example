FROM alpine:latest

COPY . /app
WORKDIR /app
RUN apk add --update --no-cache nodejs npm && \
    npm install

EXPOSE 3000 4321
CMD ["npm", "run", "prod"]
