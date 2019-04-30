#!/bin/bash

# Set custom webroot
if [ ! -z "$WEBROOT" ]; then
    sed -i "s#root /var/www/html;#root ${WEBROOT};#g" /etc/nginx/sites-available/default
fi

if [ ! -z "$PROROOT" ]; then
    sed -i "s#/var/www/beiwen-client-backend#${PROROOT}#g" /etc/supervisor/conf.d/service.conf
fi

/usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf