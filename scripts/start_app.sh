#!/bin/bash

cd /app || exit 1
NODE_ENV=production yarn start > /var/log/app/info.log 2> /var/log/app/error.log < /dev/null &
