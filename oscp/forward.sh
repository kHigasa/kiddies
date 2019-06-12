#!/bin/bash

$hostname = "microsoft.com"

for name in $(cat list.txt); do
    host $name.$hostname | grep "has address" | cut -d" " -f1,4
done
