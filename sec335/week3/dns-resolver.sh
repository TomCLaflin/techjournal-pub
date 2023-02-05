#!/bin/bash

host=$1
dns=$2

echo "dns resolution for $host/24"

for i in $(seq 1 254); do
	nslookup $host.$i $dns | grep "name" 
done 
