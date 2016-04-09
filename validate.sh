curl 'https://validate.core-os.net/validate' -X PUT --data-binary '@master1/openstack/latest/user_data' | python -mjson.tool
curl 'https://validate.core-os.net/validate' -X PUT --data-binary '@node1/openstack/latest/user_data' | python -mjson.tool
curl 'https://validate.core-os.net/validate' -X PUT --data-binary '@node2/openstack/latest/user_data' | python -mjson.tool
curl 'https://validate.core-os.net/validate' -X PUT --data-binary '@node3/openstack/latest/user_data' | python -mjson.tool

