#!/bin/bash

while true; do
        clear

        echo " System Resource Monitoring"
        echo "---------------------------"

        #Display CPU usage
        echo "CPU Usage: "
        top -n 1 -b | grep -ir "CPU"

        #Display Memory Usage
        echo -e "\nMemoru Usage: "
        free -h

        #Dispaly Disk space
        echo -e "\nDisk Space: "
        df -h

        sleep -5
done
~
