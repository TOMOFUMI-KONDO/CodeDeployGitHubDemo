#!/bin/bash

PID=$(ps -C node -o pid=)
kill "$PID"