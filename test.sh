#!/bin/bash

if [ $(id -u) -ne 0 ]; then
    echo "Run this as root, dumbass."
    exit
fi

echo "test"


sleep 1

mkdir -p /tmp/overlay/etc/opt/chrome/policies/managed
echo '{
  "ExtensionAllowedTypes": null,
  "ExtensionInstallAllowlist": null,
  "ExtensionInstallBlocklist": null,
}' > /tmp/overlay/etc/opt/chrome/policies/managed/policy.json
cp -a -L /etc/* /tmp/overlay/etc 2> /dev/null
mount --bind /tmp/overlay/etc /etc

echo ""
sleep 1
echo "Why'd you do that."
