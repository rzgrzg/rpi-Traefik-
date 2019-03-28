# rpi-Traefik-
Traefik  docker file for rpi

usage:
docker build -t rzgrzg/rpi-Traefik https://github.com/rzgrzg/rpi-Traefik-.git 

docker run -d --name Traefik \ 
-p 8080:8080 \ 
-p 80:80 \ 
-p 443:443 \ 
-v ~/traefik/traefik.toml:/etc/traefik/traefik.toml \ 
rzgrzg/rpi-Traefik 
