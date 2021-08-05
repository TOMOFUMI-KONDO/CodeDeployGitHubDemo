#!/bin/bash

PID=$(ps -C node -o pid=)
kill -9 "$PID"