#!/bin/bash

cd /app && NODE_ENV=production node . > /var/log/app/info.log 2> /var/log/app/error.log < /dev/null &
