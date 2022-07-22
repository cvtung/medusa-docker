FROM node:17.1.0

WORKDIR "/home"
RUN git clone https://github.com/medusajs/admin medusa-admin
WORKDIR "/home/medusa-admin"
RUN apt-get update
RUN npm install -g npm@latest
RUN npm install sharp
RUN npm install -g gatsby-cli
RUN npm install
RUN npm run build
ENTRYPOINT [ "gatsby", "develop", "-H", "0.0.0.0",  "-p", "7000" ]