#!/bin/bash
cd /var/www/ada/
cat main.* > tmp
cat tmp | sed "s/API-URL/${API_URL}/g" > main.*
rm -rf tmp
/etc/init.d/nginx start
tail -f /var/log/nginx/*.log