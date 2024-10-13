FROM ubuntu:latest

RUN apt-get update
RUN apt-get -qq -y install curl
RUN apt install -y -qq ffmpeg
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get -y install nodejs
RUN apt-get install build-essential

COPY ./app .env package*.json *.js ./
RUN npm ci
CMD ["node", "./bot.js"]