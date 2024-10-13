FROM ubuntu:latest

RUN apt install -y curl
RUN apt install -y ffmpeg=7:4.4.2-0ubuntu0.22.04.1
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
RUN apt install -y nodejs

COPY ./app .env package*.json *.js ./
RUN npm ci
CMD ["node", "./bot.js"]