#!/bin/sh

echo c $1:$2 rwm | tee /sys/fs/cgroup/devices/docker/$(docker ps -aqf 'name=colibri-imx-dev')*/devices.$3
