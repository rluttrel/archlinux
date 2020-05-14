install script for arch linux

ping -c 2 www.archlinux.org
yes | sudo pacman -S reflector
sudo reflector --verbose --latest 200  --sort rate --save /etc/pacman.d/mirrorlist
lsblk
(echo g; echo n; echo p; echo 1; echo ""; echo +64M; echo n; echo p; echo 2; echo ""; echo ""; echo w; echo q) | fdisk /dev/$(echo $Output_Device)
