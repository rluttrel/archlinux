ping -c 2 www.archlinux.org
sed -i 's/#ParallelDownloads = 5/ParallelDownloads = 5/g' /etc/pacman.conf
sed -i 's/#NoProgressBar/Color/g' /etc/pacman.conf
sed -i 's/#VerbosePkgLists/ILoveCandy/g' /etc/pacman.conf
lsblk
sleep 5
(echo o; echo n; echo p; echo 1; echo ""; echo ""; echo a; echo p; echo w) | fdisk /dev/sda
sleep 5
mkfs.ext4 /dev/sda1
sleep 5
mount /dev/sda1 /mnt
df -h
mkdir /mnt/etc
genfstab -U -p /mnt >> /mnt/etc/fstab
cp grubinstall2.sh /mnt
sleep 2
yes | pacstrap -i /mnt base
(echo './grubinstall2.sh') | arch-chroot /mnt
