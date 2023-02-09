#!/bin/bash

# version 1.0.0

mkdir -p backup
for f in `ls images`;do grep $f ../slides/*.md >/dev/null || echo mv \"images/$f\" \"backup/$f\";done > list.sh
