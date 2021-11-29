#!/bin/bash -e

#hide cursor
sed -i 's+#xserver-command=X+xserver-command=X -nocursor+g' "${ROOTFS_DIR}"/etc/lightdm/lightdm.conf

# set wallpapers
sed -i 's+wallpaper=/usr/share/rpd-wallpaper/temple.jpg+wallpaper=/usr/share/rpd-wallpaper/bg-tippthek-raspberry.jpg+g' "${ROOTFS_DIR}"/etc/xdg/pcmanfm/LXDE-pi/desktop-items-0.conf
sed -i 's+wallpaper=/usr/share/rpd-wallpaper/temple.jpg+wallpaper=/usr/share/rpd-wallpaper/bg-tippthek-raspberry.jpg+g' "${ROOTFS_DIR}"/etc/xdg/pcmanfm/LXDE-pi/desktop-items-1.conf

# hide trash
sed -i 's+show_trash=1+show_trash=0+g' "${ROOTFS_DIR}"/etc/xdg/pcmanfm/LXDE-pi/desktop-items-0.conf
sed -i 's+show_trash=1+show_trash=0+g' "${ROOTFS_DIR}"/etc/xdg/pcmanfm/LXDE-pi/desktop-items-1.conf

# hide mounts
sed -i 's+show_mounts=1+show_mounts=0+g' "${ROOTFS_DIR}"/etc/xdg/pcmanfm/LXDE-pi/desktop-items-0.conf
sed -i 's+show_mounts=1+show_mounts=0+g' "${ROOTFS_DIR}"/etc/xdg/pcmanfm/LXDE-pi/desktop-items-1.conf

# autostart: disable screensaver
echo "@xset s off" >> "${ROOTFS_DIR}"/etc/xdg/lxsession/LXDE-pi/autostart
echo "@xset -dpms" >> "${ROOTFS_DIR}"/etc/xdg/lxsession/LXDE-pi/autostart
echo "@xset s noblank" >> "${ROOTFS_DIR}"/etc/xdg/lxsession/LXDE-pi/autostart

# autostart: start tippthek
echo "@/home/${FIRST_USER_NAME}/.local/share/applications/tippthek-app.armv7l.AppImage" >> "${ROOTFS_DIR}"/etc/xdg/lxsession/LXDE-pi/autostart