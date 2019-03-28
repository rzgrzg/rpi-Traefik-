
FROM hypriot/rpi-alpine:3.6
ENV Traefik_VERSION 1.7.9
RUN apk update && apk add wget
RUN wget -SL --no-check-certificate https://github.com/containous/traefik/releases/download/v$Traefik_VERSION/traefik_linux-arm -O /traefik"
RUN apk upgrade --no-cache &&\
    apk add --no-cache ca-certificates &&\
    chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
