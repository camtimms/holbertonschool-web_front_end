#!/bin/bash

filename=$(ls -1 | grep ^'[0-9]' | sort -V | tail -n 1)
prevNum=${filename%-index.html}
newNum=$((prevNum + 1))
cp $filename "${newNum}-index.html"
code "${newNum}-index.html"