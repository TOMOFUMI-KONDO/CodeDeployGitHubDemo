#!/bin/bash

PID=$(ps -C node -o pid=)
if [ ! "$PID" = "" ] ; then kill -9 "###$PID###" ; fi
