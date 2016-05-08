KEY=$(cat ~/.ssh/id_rsa.pub)
sed "s#SSH_KEY#$KEY#g" < master1/openstack/latest/user_data.tmpl > master1/openstack/latest/user_data
sed "s#SSH_KEY#$KEY#g" < node1/openstack/latest/user_data.tmpl > node1/openstack/latest/user_data
sed "s#SSH_KEY#$KEY#g" < node2/openstack/latest/user_data.tmpl > node2/openstack/latest/user_data
sed "s#SSH_KEY#$KEY#g" < node3/openstack/latest/user_data.tmpl > node3/openstack/latest/user_data
