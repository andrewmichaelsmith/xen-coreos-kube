rm master1.bin
rm node1.bin
rm node2.bin
rm node3.bin
rm tempfile


cp coreos_production_xen_image.bin master1.bin
cp coreos_production_xen_image.bin node1.bin
cp coreos_production_xen_image.bin node2.bin
cp coreos_production_xen_image.bin node3.bin

#TODO: Undoubtedly a better way than this
dd if=/dev/zero of=tempfile bs=1G count=2

cat tempfile >> master1.bin
cat tempfile >> node1.bin
cat tempfile >> node2.bin
cat tempfile >> node3.bin


mkisofs -R -V config-2 -o master1-config.iso master1/
mkisofs -R -V config-2 -o node1-config.iso node1/
mkisofs -R -V config-2 -o node2-config.iso node2/
mkisofs -R -V config-2 -o node3-config.iso node3/

ssh-keygen -f "/root/.ssh/known_hosts" -R 192.168.122.254
ssh-keygen -f "/root/.ssh/known_hosts" -R 192.168.122.2
ssh-keygen -f "/root/.ssh/known_hosts" -R 192.168.122.3
ssh-keygen -f "/root/.ssh/known_hosts" -R 192.168.122.4
