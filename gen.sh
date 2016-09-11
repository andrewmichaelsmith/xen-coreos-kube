KEY=$(cat ~/.ssh/id_rsa.pub)
sed "s#SSH_KEY#$KEY#g" < master1/openstack/latest/user_data.tmpl > master1/openstack/latest/user_data
sed "s#SSH_KEY#$KEY#g" < node1/openstack/latest/user_data.tmpl > node1/openstack/latest/user_data
sed "s#SSH_KEY#$KEY#g" < node2/openstack/latest/user_data.tmpl > node2/openstack/latest/user_data
sed "s#SSH_KEY#$KEY#g" < node3/openstack/latest/user_data.tmpl > node3/openstack/latest/user_data

#cp master1/openstack/latest/user_data.tmpl master1/openstack/latest/user_data
sed -i $'/CA.PEM/ {r certs/ca.pem\n d}' master1/openstack/latest/user_data
sed -i $'/APISERVER.PEM/ {r certs/apiserver.pem\n d}' master1/openstack/latest/user_data
sed -i $'/APISERVER-KEY.PEM/ {r certs/apiserver-key.pem\n d}' master1/openstack/latest/user_data

