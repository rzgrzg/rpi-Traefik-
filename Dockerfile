FROM resin/rpi-raspbian
ENV Traefik_VERSION 2.0.0-alpha2
ADD https://github.com/containous/traefik/releases/download/v$Traefik_VERSION/traefik_v${Traefik_VERSION}_linux_armv7.tar.gz /var/traefik/traefik_v${Traefik_VERSION}_linux_armv7.tar.gz  
RUN tar -zxf /var/traefik/traefik_v${Traefik_VERSION}_linux_armv7.tar.gz traefik -C / \  
    && rm /var/traefik/traefik_v${Traefik_VERSION}_linux_armv7.tar.gz 
RUN chmod +x /traefik
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
EXPOSE 80 8080 443
CMD ["/traefik"]
