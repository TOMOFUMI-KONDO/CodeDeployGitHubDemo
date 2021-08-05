#!/bin/bash

cd /app && NODE_ENV=production yarn start > /dev/null 2> /dev/null < /dev/null &
