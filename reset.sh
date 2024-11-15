#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this as root, dumbass."
    exit
fi

echo "Injecting aids back into your chromebook..."
sleep 1
echo "Making the chromebook crash out..."
sleep 2
echo "MANGO MANGO MANGO"


sleep 1

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
echo '{
}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
sleep 5
echo "Why'd you do that."
