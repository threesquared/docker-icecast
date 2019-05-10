# Icecast

![Docker Build Status](https://img.shields.io/docker/cloud/build/threesquared/icecast.svg)
![Docker Pulls](https://img.shields.io/docker/pulls/threesquared/icecast.svg)
[![](https://images.microbadger.com/badges/image/threesquared/icecast.svg)](https://microbadger.com/images/threesquared/icecast)

> Docker container to run an [Icecast](http://icecast.org/) server

### Usage

```json
docker create \
--name=icecast \
-p 8000:8000
-v </path/to/config>:/icecast \
threesquared/icecast
```

Or with a `docker-compose.yml` file:

```json
version: '2.1'
services:
  icecast:
    image: threesquared/icecast:latest
    container_name: icecast
    ports:
      - 8000:8000
    volumes:
      - "/path/to/config:/icecast"
```
