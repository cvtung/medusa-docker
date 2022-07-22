# References:
Backend: https://docs.medusajs.com/quickstart/quick-start

Storefront: https://docs.medusajs.com/starters/gatsby-medusa-starter/

Admin: https://docs.medusajs.com/admin/quickstart
# TO-DO:
## Find backend IP address
https://stackoverflow.com/questions/17157721/how-to-get-a-docker-containers-ip-address-from-the-host
```
docker ps
docker inspect <backend_container_ID>
```

## Update /storefront/.env.developement
```
GATSBY_MEDUSA_BACKEND_URL=http://<backend_container_IP>:9000
```

## Build docker images before running containers
```
docker compose up --build
```

# Testing

## Admin
Email: `admin@medusa-test.com`

Password: `supersecret`