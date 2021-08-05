#!/bin/bash

PID=$(ps -C node -o pid=)
echo "$PID"
if [ ! "$PID" = "" ] ; then kill -9 "$PID" ; fi