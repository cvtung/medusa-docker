FROM node:17.1.0

WORKDIR "/home"
RUN npm install -g @medusajs/medusa-cli
RUN medusa new my-medusa-store --seed
WORKDIR "/home/my-medusa-store"
ENTRYPOINT ["./develop.sh", "develop"]