#!/usr/bin/bash
apt update&&apt upgrade
echo "Wellcome To Linux installed: $(date)"
echo "Linux User Name: $(whoami)"
echo -e "This is qemu virt.\n $(time)"
pkg install x11-repo unstable-repo qemu-utils qemu-system-x86_64-headless curl
apt update&&apt upgrade
echo -n  "download iso"
curl http://dl-cdn.alpinelinux.org/alpine/v3.10/releases/x86_64/alpine-virt-3.10.1-x86_64.iso -o alpine.iso
echo -n  "download complated"
qemu-img create -f qcow2 alpine.img 5g
echo -n  "qemu create 5gp "
qemu-system-x86_64 -hda alpine.img -cdrom alpine.iso -boot d -m 512
