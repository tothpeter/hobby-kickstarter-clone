# Kickstarter clone

This is a hobby project to practice web development.

## Local dev env

The local development env is dockerized.

Run it the first ime: `bin/setup`

### Start

- docker-compose up
- open http://localhost:3000/

### Tests

```bash
docker exec -it `docker ps -aqf "name=kickstarter-clone-web-1"` rails test
```

### Useful commands

#### To connect to the running web container

```bash
docker exec -it `docker ps -aqf "name=kickstarter-clone-web-1"` bash
```

#### To open up a rails console

```bash
docker exec -it `docker ps -aqf "name=kickstarter-clone-web-1"` rails c
```

#### To restart the app server withouth restarting the whole stack

```bash
docker exec -it `docker ps -aqf "name=kickstarter-clone-web-1"` pumactl restart
```
