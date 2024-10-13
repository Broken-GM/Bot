FROM node:20-alpine

RUN apk add --no-cache ffmpeg

COPY ./app .env package*.json *.js ./
RUN npm ci
CMD ["node", "./bot.js"]