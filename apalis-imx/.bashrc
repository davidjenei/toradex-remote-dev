alias imx-serial='microcom -s 115200 -p /dev/imx-console'

welcome(){
  echo "How to use:"
  echo
  echo "Connect to SSH:"
  echo "  # ssh imx"
  echo
  echo "Attach to debug serial:"
  echo "  # imx-serial"
  echo
  echo "Attach UMS:"
  echo "  uboot:# ums 0 mmc 0"
  echo "  # mknod colibri-imx-ums b 8 0"
  echo
  echo "TODO: USB loader"
  echo "  uboot:# bmode usb"
  echo "  #"
}

if [ -n "$PS1" ]; then
  welcome
fi;

