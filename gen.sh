cp master1/openstack/latest/user_data.tmpl master1/openstack/latest/user_data
sed -i $'/CA.PEM/ {r certs/ca.pem\n d}' master1/openstack/latest/user_data
sed -i $'/APISERVER.PEM/ {r certs/apiserver.pem\n d}' master1/openstack/latest/user_data
sed -i $'/APISERVER-KEY.PEM/ {r certs/apiserver-key.pem\n d}' master1/openstack/latest/user_data

