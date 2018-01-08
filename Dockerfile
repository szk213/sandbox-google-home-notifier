FROM node:9.3

WORKDIR /usr/src/app
COPY package*.json ./
COPY . .

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install avahi-daemon avahi-discover libnss-mdns
RUN apt-get -y install libavahi-compat-libdnssd-dev
RUN npm install -S google-home-notiier


# EXPOSE 8080
# CMD [ "npm", "start" ]