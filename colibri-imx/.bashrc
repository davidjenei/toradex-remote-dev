alias imx-reset='echo Resetting Colibri imx6... && gpioset 0 12=0 && sleep 0.1 && gpioset 0 12=1 && echo Done!'
alias imx-serial='microcom -s 115200 -p /dev/colibri-imx-console'

echo "How to use:"
echo
echo "Connect to SSH:"
echo "  # ssh colibri-imx"
echo
echo "Attach to debug serial:"
echo "  # imx-serial"
echo
echo "Reset board:"
echo "  # imx-reset"
echo "  Resetting Colibri imx6..."
echo "  Done!"
echo
echo "Attach UMS:"
echo "  uboot:# ums 0 mmc 0"
echo "  # mknod colibri-imx-ums b 8 0"
echo
echo "TODO: USB loader"
