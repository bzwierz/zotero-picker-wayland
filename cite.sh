#!/bin/bash

CAYW_URL="http://127.0.0.1:23119/better-bibtex/cayw?format=pandoc&brackets=true"
citation=$(curl -s "$CAYW_URL")

if [[ -n $citation ]]; then
    sudo ydotool type --delay 100 "$citation"
fi

