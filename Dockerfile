FROM ubuntu:latest

RUN apt-get update
RUN apt-get -qq -y install curl
RUN apt install ffmpeg
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
RUN apt-get -y install nodejs

COPY ./app .env package*.json *.js ./
RUN npm ci
CMD ["node", "./bot.js"]