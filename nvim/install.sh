#!/bin/bash

if  hash ag 2>/dev/null; then
	echo "ag already installed. Done!"
	exit 1
fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	sudo apt install silversearcher-ag
elif [[ "$OSTYPE" == "darwin"* ]]; then
	brew install the_silver_searcher
fi
