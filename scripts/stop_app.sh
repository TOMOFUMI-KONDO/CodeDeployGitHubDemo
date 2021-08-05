#!/bin/bash

PID=$(pgrep -f "/usr/bin/node .")
if [[ $PID != "" ]] ; then kill -9 "$PID" ; fi
