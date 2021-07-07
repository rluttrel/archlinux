ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime
hwclock --systohc
locale-gen
sed -i 's/#en_US./en_US/g' /etc/locale.gen
#need to put something in /etc/hostname
#need to put something in /etc/hosts
#127.0.0.1  localhost
#::1        localhost
#127.0.1.1  archkru2.localdomain archkru2
(echo ""; echo "") | pacman -S linux linux-headers networkmanager sudo vi nano grub efibootmgr dosfstools mtools
systemctl enable dhcpd
systemctl enable NetworkManager
sleep 2
#not sure if mkinitcpio is necessarry(taken care of during pacstrap command)
#mkinitcpio -p linux
grub-install /dev/sda
mkdir /boot/grub
mkdir /boot/grub/locale
grub-mkconfig -o /boot/grub/grub.cfg
sed -i 's/#% wheel/%wheel /g' /etc/sudoers
sleep 5
passwd
useradd -m  -g users -G wheel rluttrel
passwd

#this is the next part with xorg and window NetworkManager
#login as rluttrel
#pacman -S base-devel git xf86-video-fbdev xorg xorg-init nitrogen picom firefox alacritty leftwm fish?
#git clone https://aur.archlinux.org/yay-git
makepkg -si 
yay -S 

