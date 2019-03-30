FROM resin/rpi-raspbian
ENV Traefik_VERSION 1.7.10
RUN apt-get update && apt-get install wget -y 
RUN wget https://github.com/containous/traefik/releases/download/v$Traefik_VERSION/traefik_linux-arm -O /traefik
RUN chmod +x /traefik
EXPOSE 80 8080 443
CMD ["/traefik"]
