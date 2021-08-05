#!/bin/bash

cd /app && node . > /var/log/app/info.log 2> /var/log/app/error.log &
