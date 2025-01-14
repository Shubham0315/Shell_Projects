#!/bin/bash

FREE_SPACE=$(free -m | grep "Mem" | awk '{print $4}')
TH=1000          

if [[ $FREE_SPACE -lt $TH ]]
then
        echo "WARNING, RAM is low"
else
        echo "RAM is sufficient - $FREE_SPACE"
fi
