#!/bin/sh

DIR=`pwd`

# CLone RES
git clone git@github.com:honestbleeps/Reddit-Enhancement-Suite.git tmp --depth 1

# Base directory for JS
BD="tmp/RES.safariextension"

# Concatenate files together
touch unprocessed.js
cat $BD/jquery-1.6.4.min.js >> unprocessed.js
cat $BD/guiders-1.2.8.js >> unprocessed.js
cat $BD/jquery.dragsort-0.4.3.min.js >> unprocessed.js
cat $BD/jquery-fieldselection.min.js >> unprocessed.js
cat $BD/tinycon.min.js >> unprocessed.js
cat $BD/jquery.tokeninput.js >> unprocessed.js
cat $BD/snuownd.js >> unprocessed.js
cat tmp/lib/reddit_enhancement_suite.user.js >> unprocessed.js

rm -rf tmp

echo "Now pack the file with http://dean.edwards.name/packer/."
