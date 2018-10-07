#!/bin/bash

for conf in /etc/nginx/templates/*.conf; do
    mv $conf "/etc/nginx/sites-available/"$(basename $conf) > /dev/null
done


. /root/scripts/run-openssl.sh