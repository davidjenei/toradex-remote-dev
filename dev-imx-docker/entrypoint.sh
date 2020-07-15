#!/bin/bash

mkdir -p /run/sshd

chmod 600 /root/.ssh/authorized_keys

/usr/sbin/sshd -D
