#!/bin/bash

if [ "$#" -ne 3 ]; then
	echo "$0 <image:version> <container_name> <8080:80>"
	exit
fi

image=$1
name=$2
port=$3

# --initつけないと停止に時間を要する
docker run -d --init --name ${name} -p ${port} ${image}
