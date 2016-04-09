#!/bin/bash

sudo /export/servers/openresty/nginx/sbin/nginx  -t -c /export/App/nginx-app/config/nginx.conf
sudo /export/servers/openresty/nginx/sbin/nginx  -s quit -c /export/App/nginx-app/config/nginx.conf

echo "nginx stop"
echo -e "===========================================\n\n"
tail -f /export/servers/openresty/nginx/logs/error.log
