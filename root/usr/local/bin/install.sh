#! /bin/sh

echo -e "\e[32m[INFO] Installing shadow \e[0m"
apk add --no-cache shadow

echo -e "\e[32m[INFO] Unpacking s6 overlay \e[0m"
gunzip -c /tmp/s6-overlay-amd64.tar.gz | tar -xf - -C /
rm -rf /tmp/*

echo -e "\e[32m[INFO] Creating folders \e[0m"
mkdir -p /config /defaults

echo -e "\e[32m[INFO] Creating user \e[0m"
useradd -u 1000 -U -d /config -s /sbin/nologin user