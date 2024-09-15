#!/bin/bash

# hping/test_nginx.sh
TARGET="nginx"
PORT=80
DURATION=30

echo "Starting hping3 test against $TARGET:$PORT for $DURATION seconds"

hping3 -S -p $PORT -i u10000 $TARGET &
HPING_PID=$!

sleep $DURATION

kill $HPING_PID

echo "hping3 test completed"