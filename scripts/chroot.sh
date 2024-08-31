mount /dev/disk/by-uuid/5ff8be5e-507b-4500-8ecf-f30d07f9cb0d /mnt
mount /dev/disk/by-uuid/75DB-82AF /mnt/boot
# needed for DNS
mount -o bind /dev /mnt/dev
mount -o bind /proc /mnt/proc
mount -o bind /sys /mnt/sys
mount -o bind /etc/resolv.conf /mnt/etc/resolv.conf
chroot /mnt /nix/var/nix/profiles/system/activate
chroot /mnt /run/current-system/sw/bin/bash