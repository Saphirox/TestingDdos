#!/bin/bash

TARGET="nginx"
PORT=80
DURATION=10000

echo "Starting hping3 test against $TARGET:$PORT for $DURATION seconds"

# Http flood
#hping3 -i u1 -p 80 -S -V --data "GET / HTTP/1.1\r\nHost: nginx\r\n\r\n" nginx &
#kill $HPING_PID

# Ping of death
#ping nginx -s 65500 -t 1 -n 1

# ICMP flood
hping3 -1 --flood -p 80 -V nginx

sleep $DURATION



echo "hping3 test completed"