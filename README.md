# Icecast

Docker container to run an Icecast server

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
