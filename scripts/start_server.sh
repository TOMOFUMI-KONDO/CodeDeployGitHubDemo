#!/bin/bash

cd /app && yarn start > /var/log/app/info.log 2> /var/log/app/error.log &