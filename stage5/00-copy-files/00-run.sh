#!/bin/bash -e

install -v -m 0777 -o 1000 -g 1000 files/TIPPTHEK.RaspberryPi.AppImage "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}"/apps/
install -v -m 0666 -o 1000 -g 1000 files/tippthek.desktop "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}"/apps/.config/autostart/
