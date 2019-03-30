FROM resin/rpi-raspbian
ENV Traefik_VERSION 1.7.10
RUN apt-get update && apt-get install -y 
RUN wget https://github.com/containous/traefik/releases/download/vTraefik_VERSION/traefik_linux-arm -O /traefik
RUN chmod +x /traefik
EXPOSE 80 8080 443
CMD ["/traefik"]
