FROM node:20-alpine

RUN apk add --no-cache ffmpeg

COPY ./app .env package*.json ./
RUN npm ci
CMD ["node", "bot.js"]