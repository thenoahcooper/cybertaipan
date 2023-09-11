#!/bin/bash
if [ "$user" != 'root' ]; then
    echo 'Please run this as root!'
    echo "Current user: $user"
    exit 1
fi
apt-get update
apt-get install clamav clamtk rkhunter git -y
git clone https://github.com/CISOfy/lynis
