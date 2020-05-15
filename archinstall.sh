install script arch linux

ping -c 2 www.archlinux.org
yes | sudo pacman -S reflector
sudo reflector --country "United States" --verbose --latest 25  --sort rate --save /etc/pacman.d/mirrorlist
sleep 5
lsblk
sleep 5
(echo g; echo n; echo 1; echo ""; echo +500M; echo t; echo 1; echo n; echo 2; echo ""; echo +5G; echo n; echo 3; echo ""; echo ""; echo p; echo w) | fdisk /dev/sda
sleep 5
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mkfs.ext4 /dev/sda3
sleep 5
mount /dev/sda2 /mnt
mkdir /mnt/home
mount /dev/sda3 /mnt/home
sleep 20
df -h
mkdir /mnt/etc
genfstab -U -p /mnt >> /mnt/etc/fstab
sleep 20
yes | pacstrap -i /mnt base
arch-chroot /mnt
yes | pacman -S linux linux-headers NetworkManager sudo grup efibootmgr dosfstools mtools
systemctl enable NetworkManager
sleep5
mkinitcpio -p linux
sed -i 's/#en_US./en_US/g' /etc/local.gen

