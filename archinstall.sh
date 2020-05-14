install script for arch linux

ping -c 2 www.archlinux.org
yes | sudo pacman -S reflector
sudo reflector --verbose --latest 200  --sort rate --save /etc/pacman.d/mirrorlist
lsblk
(echo g; echo n; echo 1; echo ""; echo +500M; echo t; echo 1; echo n; echo 2; echo ""; echo +5G; echo n; echo 3); echo ""; echo ""; echo p; echo w | fdisk /dev/sda
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda3
mount /dev/sda2 /mnt
mkdir/mnt/home
mount /dev/sda3 /mnt/home
df -h
mkdir /mnt/etc
genfstab -U -p /mnt >> /mnt/etc/fstab
pacstrap -i /mnt base
arch-chroot /mnt
pacman -S linux linux-headers NetworkManager sudo grup efibootmgr dosfstools mtools
