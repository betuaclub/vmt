#!/usr/bin/bash
echo "Wellcome To Linux installed: $(date)"
echo "Linux User Name: $whoami"
echo -e "This is qemu virt.\n"
pkg install x11-repo
echo -n  "This is one more line"
pkg install unstable-repo
echo -n  "This is one more line"
pkg install qemu-system-x86_64-headless
echo -e "\033[1;31mNow we are good with usage of echo command\033[0m"
pkg install qemu-system-x86_64
echo -n  "This is one more line"
pkg install curl
echo -n  "This is one more line"
curl http://dl-cdn.alpinelinux.org/alpine/v3.10/releases/x86_64/alpine-virt-3.10.1-x86_64.iso -o alpine.iso
echo -n  "This is one more line"
qemu-img create -f qcow2 alpine.img 5g
echo -n  "This is one more line"
qemu-system-x86_64 -hda alpine.img -cdrom alpine.iso -boot d -m 512

