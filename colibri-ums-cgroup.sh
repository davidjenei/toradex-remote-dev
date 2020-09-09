#!/bin/sh

echo b $1:$2 rwm | tee /sys/fs/cgroup/devices/docker/$(docker inspect --format="{{.Id}}" $4)/devices.$3
