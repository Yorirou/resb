#!/bin/sh

DIR=`pwd`

# CLone RES
git clone git@github.com:honestbleeps/Reddit-Enhancement-Suite.git tmp --depth 1

# Base directory for JS
BD="tmp/RES.safariextension"

# Concatenate files together
touch bookmarklet.debug.js
cat $BD/jquery-1.6.4.min.js >> bookmarklet.debug.js
cat $BD/guiders-1.2.8.js >> bookmarklet.debug.js
cat $BD/jquery.dragsort-0.4.3.min.js >> bookmarklet.debug.js
cat $BD/jquery-fieldselection.min.js >> bookmarklet.debug.js
cat $BD/tinycon.min.js >> bookmarklet.debug.js
cat $BD/jquery.tokeninput.js >> bookmarklet.debug.js
cat $BD/snuownd.js >> bookmarklet.debug.js
cat tmp/lib/reddit_enhancement_suite.user.js >> bookmarklet.debug.js

rm -rf tmp

jsmin < bookmarklet.debug.js > bookmarklet.min.js
