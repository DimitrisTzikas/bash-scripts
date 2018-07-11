#!/bin/bash

f=50
t=50
volume="=================================================="
spaces="                                                  "
while true; do
    clear
    echo "Set volume"
    echo "From:"
    echo "|${volume:f}${spaces:$((50-$f))}| Down:f Up:g"
    echo "To:"
    echo "|${volume:t}${spaces:$((50-$t))}| Down:h Up:j"
    read -t 1 -n 1 key
    if [[ "$key" == "g" && "$f" -ge 1 ]]; then
	f=$((f-=1))
    elif [[ "$key" == "f" && "$f" -le 49 ]]; then
	f=$((f+=1))
    elif [[ "$key" == "j" && "$t" -ge 1 ]]; then
	t=$((t-=1))
    elif [[ "$key" == "h" && "$t" -le 49 ]]; then
	t=$((t+=1))
    fi
done
