#!/bin/bash

# Based on the 5 line http server from https://github.com/benrady/shinatra
DISPLAY_TEXT=$*

RES="HTTP/1.1 200OK\r\nConnection: keep-alive\r\n\r\n${DISPLAY_TEXT:-"Set your own text please $(hostname)"}\r\n"

while { echo -en "${RES}"; } | nc -l 8080; do
    echo "============================================"
done
