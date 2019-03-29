FROM hypriot/rpi-alpine:3.6
ENV Traefik_VERSION 2.0.0-alpha2
ADD https://github.com/containous/traefik/releases/download/v$Traefik_VERSION/traefik_v${Traefik_VERSION}_linux_armv7.tar.gz /var/traefik/traefik_v${Traefik_VERSION}_linux_armv7.tar.gz  
RUN tar -zxf /var/traefik/traefik_v${Traefik_VERSION}_linux_armv7.tar.gz -C / \  
    && rm /var/traefik/traefik_v${Traefik_VERSION}_linux_armv7.tar.gz 
RUN apk upgrade --no-cache &&\  
    apk add --no-cache ca-certificates &&\  
    chmod +x /traefik
EXPOSE 80 8080 443
ENTRYPOINT ["/traefik"]
