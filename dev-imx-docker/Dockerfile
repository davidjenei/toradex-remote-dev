FROM debian:buster-slim

RUN apt-get -y update && apt-get install -y \
    wget unzip build-essential pkg-config libusb-1.0-0-dev

RUN wget https://github.com/boundarydevices/imx_usb_loader/archive/master.zip && unzip master.zip && \
    make -C ./imx_usb_loader-master && make -C ./imx_usb_loader-master install

FROM debian:buster-slim

EXPOSE 22

RUN apt-get -y update && apt-get install -y \
    microcom openssh-client openssh-server gpiod bmap-tools screen libusb-1.0-0 \
    && apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

COPY --from=0 /usr/bin/imx_usb /usr/bin/imx_uart /usr/bin/
COPY --from=0 /usr/etc/imx-loader.d /usr/etc/imx-loader.d

COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
