#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo "$0 <tag:ver>"
	exit
fi

arg=$1

docker build -t ${arg} ./
