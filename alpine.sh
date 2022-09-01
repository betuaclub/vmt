pkg install x11-repo
pkg install unstable-repo
pkg install qemu-system-x64_64 qemu-utils
pkg install curl
curl http://dl-cdn.alpinelinux.org/alpine/v3.10/releases/x86_64/alpine-virt-3.10.1-x86_64.iso -o alpine.iso
qemu-img create -f qcow2 alpine.img 5g
qemu-system-x86_64 -hda alpine.img -cdrom alpine.iso -boot d -m 512

