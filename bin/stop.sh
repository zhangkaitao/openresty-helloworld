#!/bin/bash

sudo /export/servers/nginx/sbin/nginx  -t -p /export/App/nginx-app
sudo /export/servers/nginx/sbin/nginx  -s quit -p /export/App/nginx-app

echo "nginx stop"
echo -e "===========================================\n\n"
tail -f /export/servers/openresty/nginx/logs/error.log

