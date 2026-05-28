#!/bin/bash

# https://gist.github.com/tebeka/b9720624946a0ddf7d7457e56932eca3

msg='Claude hey'

if [ "$(uname -o)" == "Darwin" ]; then
	say "$msg"
else
	(echo "$msg" | festival --tts) &
fi
