FROM debian:buster-slim

EXPOSE 22

RUN apt-get -y update && apt-get install -y \
    microcom openssh-client openssh-server gpiod bmap-tools screen \
    && apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
