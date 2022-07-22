FROM node:17.1.0

ENV NODE_ENV=development

WORKDIR "/home"
RUN npm install gatsby-cli -g
RUN npm install sharp
RUN gatsby new my-medusa-storefront https://github.com/medusajs/gatsby-starter-medusa
WORKDIR "/home/my-medusa-storefront"
RUN mv .env.template .env.development
COPY storefront/.env.development .env.development
RUN npm install --loglevel=error
ENTRYPOINT ["gatsby", "develop", "-H", "0.0.0.0", "-p", "8000" ]