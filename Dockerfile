FROM alpine:3.9

LABEL maintainer="Ben Speakman <ben@3sq.re>"

ARG UID=1000
ARG GID=1000

RUN apk -q update \
    && apk -q --no-progress add icecast \
    && rm -rf /var/cache/apk/*

VOLUME ["/icecast"]

RUN mkdir -p /var/log/icecast \
    && chown -R $UID:$GID /usr/share/icecast \
    && chown -R $UID:$GID /var/log/icecast

EXPOSE 8000

USER $UID:$GID

ENTRYPOINT ["icecast", "-c", "/icecast/icecast.xml"]
