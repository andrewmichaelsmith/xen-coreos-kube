rm master1.qcow2
rm node1.qcow2
rm node2.qcow2
rm node3.qcow2

qemu-img create -f qcow2 -b coreos_production_qemu_image.img master1.qcow2
qemu-img create -f qcow2 -b coreos_production_qemu_image.img node1.qcow2
qemu-img create -f qcow2 -b coreos_production_qemu_image.img node2.qcow2
qemu-img create -f qcow2 -b coreos_production_qemu_image.img node3.qcow2

ssh-keygen -f "/root/.ssh/known_hosts" -R 192.168.122.254
ssh-keygen -f "/root/.ssh/known_hosts" -R 192.168.122.2
ssh-keygen -f "/root/.ssh/known_hosts" -R 192.168.122.3
ssh-keygen -f "/root/.ssh/known_hosts" -R 192.168.122.4
