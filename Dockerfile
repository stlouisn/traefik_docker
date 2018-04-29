FROM stlouisn/ubuntu:rolling

COPY rootfs /

RUN \

#    export DEBIAN_FRONTEND=noninteractive && \
#
#    # Create traefik group
#    groupadd \
#        --system \
#        --gid 9999 \
#        openvpn && \
#
#    # Create traefik user
#    useradd \
#        --system \
#        --no-create-home \
#        --shell /sbin/nologin \
#        --comment traefik \
#        --gid 9999 \
#        --uid 9999 \
#        traefik && \
#
#COPY --chown=traefik:traefik userfs /

COPY userfs /

VOLUME /etc/traefik

ENTRYPOINT ["/usr/local/bin/docker_entrypoint.sh"]
