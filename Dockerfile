FROM stlouisn/ubuntu:rolling

COPY rootfs /

VOLUME /etc/traefik

ENTRYPOINT ["/usr/local/bin/docker_entrypoint.sh"]
