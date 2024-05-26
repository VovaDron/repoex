#!/bin/bash

sed -i 's|%OWNER%|'"$OWNER"'|g' /var/www/html/index.html
sed -i 's|%TYPE%|'"$TYPE"'|g' /var/www/html/index.html

echo "So goodest"

nginx -g 'daemon off;'
