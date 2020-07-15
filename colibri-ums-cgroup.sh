#!/bin/sh

echo c $1:$2 rwm | tee /sys/fs/cgroup/devices/docker/$(docker inspect --format="{{.Id}}" $4)/devices.$3
