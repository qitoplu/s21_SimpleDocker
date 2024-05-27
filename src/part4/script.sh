#!/bin/sh
spawn-fcgi -p 8080 ./fastcgi && nginx -g 'daemon off;'
