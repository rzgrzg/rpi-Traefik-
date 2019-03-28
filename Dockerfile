
FROM hypriot/rpi-alpine:3.6
ENV FRP_VERSION 2.0.0

ADD https://github.com/containous/traefik/releases/download/v2.0.0-alpha2/traefik_v2.0.0-alpha2_linux_armv7.tar.gz
ADD https://github.com/containous/traefik/releases/download/v1.3.8/traefik_linux-arm /traefik
RUN apk upgrade --no-cache &&\
    apk add --no-cache ca-certificates &&\
    chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
