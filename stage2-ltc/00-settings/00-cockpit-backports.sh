#!/bin/bash -e

on_chroot << EOF
echo "deb http://deb.debian.org/debian bookworm-backports main" > \
    /etc/apt/sources.list.d/backports.list
curl -O http://http.us.debian.org/debian/pool/main/d/debian-archive-keyring/debian-archive-keyring_2023.4_all.deb

dpkg -i debian-archive-keyring_2023.4_all.deb
apt update
apt install -t bookworm-backports cockpit cockpit-podman
EOF