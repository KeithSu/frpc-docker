echo -e "[common] \ntoken=${SERVER_TOKEN} \nserver_addr = ${SERVER_HOST} \nserver_port = ${SERVER_PORT} \nadmin_addr = ${ADMIN_ADDR} \nadmin_port = ${ADMIN_PORT} \nadmin_user = ${ADMIN_USER} \nadmin_pwd = ${ADMIN_PWD}" > /etc/frp/frpc.ini
/usr/bin/frpc -c /etc/frp/frpc.ini
