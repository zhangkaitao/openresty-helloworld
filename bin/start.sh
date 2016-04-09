#!/bin/bash

ps -fe|grep nginx |grep -v grep
if [ $? -ne 0 ] 
then
  sudo /export/servers/openresty/nginx/sbin/nginx  -t -c /export/App/nginx-app/config/nginx.conf
  sudo /export/servers/openresty/nginx/sbin/nginx  -c /export/App/nginx-app/config/nginx.conf
  echo "nginx start"
else
  sudo /export/servers/openresty/nginx/sbin/nginx  -t -c /export/App/nginx-app/config/nginx.conf
  sudo /export/servers/openresty/nginx/sbin/nginx  -s reload -c /export/App/nginx-app/config/nginx.conf
  echo "nginx reload"
fi
echo -e "===========================================\n\n"
tail -f /export/servers/openresty/nginx/logs/error.log
