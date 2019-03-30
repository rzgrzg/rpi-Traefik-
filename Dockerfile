FROM resin/rpi-raspbian
ENV Traefik_VERSION 1.7.10
ADD https://github.com/containous/traefik/releases/download/vTraefik_VERSION/traefik_linux-arm /traefik
RUN chmod +x /traefik
EXPOSE 80 8080 443
CMD ["/traefik"]
