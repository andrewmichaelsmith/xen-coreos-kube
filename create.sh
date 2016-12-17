./gen.sh

virt-install \
  --connect qemu:///system \
  --import \
  --name master1 \
  --ram 3072 \
  --vcpus 1 \
  --os-type=linux \
  --os-variant=virtio26 \
  --disk path=/var/lib/libvirt/images/coreos/master1.qcow2,format=qcow2,bus=virtio \
  --filesystem /var/lib/libvirt/images/coreos/master1/,config-2,type=mount,mode=squash \
  --filesystem /data/master1,persistent,type=mount,target=persistent \
  --network bridge=virbr0,mac=52:54:00:00:00:03 \
  --vnc \
  --noautoconsole \
  --hvm

virt-install \
  --connect qemu:///system \
  --import \
  --name node1 \
  --ram 3072 \
  --vcpus 1 \
  --os-type=linux \
  --os-variant=virtio26 \
  --disk path=/var/lib/libvirt/images/coreos/node1.qcow2,format=qcow2,bus=virtio \
  --filesystem /var/lib/libvirt/images/coreos/node1/,config-2,type=mount,mode=squash \
  --filesystem /data/node1,persistent,type=mount,target=persistent \
  --network bridge=virbr0,mac=52:54:00:00:00:00 \
  --vnc \
  --noautoconsole \
  --hvm

virt-install \
  --connect qemu:///system \
  --import \
  --name node2 \
  --ram 3072 \
  --vcpus 1 \
  --os-type=linux \
  --os-variant=virtio26 \
  --disk path=/var/lib/libvirt/images/coreos/node2.qcow2,format=qcow2,bus=virtio \
  --filesystem /var/lib/libvirt/images/coreos/node2/,config-2,type=mount,mode=squash \
  --filesystem /data/node2,persistent,type=mount,target=persistent \
  --network bridge=virbr0,mac=52:54:00:00:00:01 \
  --vnc \
  --noautoconsole \
  --hvm

virt-install \
  --connect qemu:///system \
  --import \
  --name node3 \
  --ram 3072 \
  --vcpus 1 \
  --os-type=linux \
  --os-variant=virtio26 \
  --disk path=/var/lib/libvirt/images/coreos/node3.qcow2,format=qcow2,bus=virtio \
  --filesystem /var/lib/libvirt/images/coreos/node3/,config-2,type=mount,mode=squash \
  --filesystem /data/node3,persistent,type=mount,target=persistent \
  --network bridge=virbr0,mac=52:54:00:00:00:02 \
  --vnc \
  --noautoconsole \
  --hvm

virsh autostart master1
virsh autostart node1
virsh autostart node2
virsh autostart node3

