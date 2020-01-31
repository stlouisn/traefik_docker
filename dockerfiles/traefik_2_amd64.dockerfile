FROM stlouisn/ubuntu:rolling

COPY rootfs /

COPY traefik-amd64 /usr/local/bin/traefik

VOLUME /config

ENTRYPOINT ["/usr/local/bin/docker_entrypoint.sh"]
