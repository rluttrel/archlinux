(echo ""; echo "") | pacman -S linux linux-headers networkmanager sudo vi nano grub dosfstools mtools
systemctl enable NetworkManager
sleep 2
mkinitcpio -p linux
sed -i 's/#en_US./en_US/g' /etc/locale.gen
# locale-gen
sleep 2
passwd
useradd -m  -g users -G wheel rluttrel
passwd
mkdir /boot/EFI
sed -i 's/#% wheel/%wheel /g' /etc/sudoers
sleep 5
mount /dev/sda1 /boot/EFI
grub-install --target=i386-pc /dev/sda1
sleep 5
mkdir /boot/grub
mkdir /boot/grub/locale
cp /usr/share/locale/en@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo
sleep 5
grub-mkconfig -o /boot/grub/grub.cfg
