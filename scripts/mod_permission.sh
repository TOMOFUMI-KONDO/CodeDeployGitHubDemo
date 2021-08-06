#!/bin/bash

cd /app || exit 1
chmod -R 700 dist && chown -R ec2-user:ec2-user dist
