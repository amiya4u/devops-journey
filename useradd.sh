#!/bin/bash

echo "User Name:" $1

if [ -z "$1" ]; then
  echo "Enter Username to add"
  exit 1
fi

echo "Creating user $1"   
useradd -m $1

if [ $? -eq 0 ]; then
    echo "User $1 created successfully"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - User $1 created" >> /var/log/useradd_script.log
else
    echo "Error: failed to create user $1"
    exit 1
fi

