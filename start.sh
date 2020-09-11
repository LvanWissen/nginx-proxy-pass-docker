#!/bin/sh

HOST_SERVER=${HOST_SERVER:-\$host}

CONNECT_TIMEOUT=${CONNECT_TIMEOUT:-150}
SEND_TIMEOUT=${SEND_TIMEOUT:-100}
READ_TIMEOUT=${READ_TIMEOUT:-100}

/bin/sed -i "s/<proxy_pass_placeholder>/${TARGET_SERVER}/" /etc/nginx/conf.d/default.conf
/bin/sed -i "s/<host_placeholder>/${HOST_SERVER}/" /etc/nginx/conf.d/default.conf

/bin/sed -i "s/<connect_timeout_placeholder>/${CONNECT_TIMEOUT}/" /etc/nginx/conf.d/default.conf
/bin/sed -i "s/<send_timeout_placeholder>/${SEND_TIMEOUT}/" /etc/nginx/conf.d/default.conf
/bin/sed -i "s/<read_timeout_placeholder>/${READ_TIMEOUT}/" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
