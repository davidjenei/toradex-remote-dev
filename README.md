```
udevadm info -a -n /dev/sda | less
sudo udevadm test -a add $(udevadm info -q path /dev/sda ) 2>&1 | less
sudo udevadm control --reload
```
