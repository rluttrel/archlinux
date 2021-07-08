echo "Color" >> ./etc/pacman.conf
sed -i 's/#ParallelDownloads = 5/ParallelDownloads = 5 Color ILoveCandy/g' /etc/pacman.conf


echo "ILoveCandy" >> ./etc/pacman.conf
echo "ParallelDownloads = 5" >> ./etc/pacman.conf
ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime
hwclock --systohc
locale-gen
sed -i 's/#en_US./en_US/g' /etc/locale.gen
echo "archkru2" >> /etc/hostname
echo "127.0.0.1  localhost" >> /etc/hosts
echo "::1        localhost" >> /etc/hosts
echo "127.0.1.1  archkru2.localdomain archkru2" >> /etc/hosts
(echo ""; echo "") | pacman -S linux linux-headers networkmanager sudo vi nano grub efibootmgr dosfstools mtools
systemctl enable dhcpd
systemctl enable NetworkManager
sleep 1
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
sed -i 's/#% wheel/%wheel /g' /etc/sudoers
useradd -m  -g users -G wheel rluttrel
echo "Change password for rluttrel and root"

echo #this is the next part with xorg and window NetworkManager
echo #login as rluttrel
echo #pacman -S base-devel git xf86-video-fbdev xorg xorg-init nitrogen picom firefox alacritty leftwm fish?
echo #git clone https://aur.archlinux.org/yay-git
echo #makepkg -si 
echo #yay -S 

