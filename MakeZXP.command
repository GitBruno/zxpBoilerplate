#!/bin/bash
# Go to current directory
cd ${0%/*}

# I command you to
make zxp

# As we opend a new term window it is nice to close it as well :)
read -p 'Press Return to close this window.'
osascript -e 'tell application "Terminal" to close (every window whose name contains "'$(basename $0)'")' & exit
