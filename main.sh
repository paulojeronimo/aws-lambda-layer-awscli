#!/bin/bash

PATH=$PATH:/opt/awscli

echo "---[payload]---"
stdin=$(test -s /dev/stdin && cat -)

if [ "${stdin}X" != "X" ]; then
    # got stdin
    payload="$stdin"
else
    payload="$1"
fi

echo $payload

instanceId=$(echo $payload | jq -r .instanceId)
echo "---[/payload]---"
echo "instanceId=$instanceId"

# your business logic here to handle $instanceId
#aws --version 2>&1

exit 0
