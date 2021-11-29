#!/bin/bash -e

wget https://digitalvisions.blob.core.windows.net/tippthek-app-releases/tippthek-app.armv7l.AppImage -P files
install -v -m 0777 -o 1000 -g 1000 files/tippthek-app.armv7l.AppImage "${ROOTFS_DIR}"/home/"${FIRST_USER_NAME}"/.local/share/applications/

wget https://digitalvisions.blob.core.windows.net/staticdata/bg-tippthek-raspberry.jpg -P files
install -v -m 0644 -o 1000 -g 1000 files/bg-tippthek-raspberry.jpg "${ROOTFS_DIR}"/usr/share/rpd-wallpaper/