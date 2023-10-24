#!/bin/sh

# Change the working directory
cd /logs

# Check if usage.csv exists and if its size exceeds 10MB
# If so, rename it to usage_<timestamp>.csv
if [ -e usage.csv ] && [ $(stat -c %s usage.csv) -gt 10485760 ]; then
    mv usage.csv "usage_$(date +%Y%m%d%H%M%S).csv"
fi

# If usage.csv does not exist, create it and add the header
if [ ! -e usage.csv ]; then
    echo "timestamp,container_name,cpu_percentage,mem_usage" > usage.csv
fi

# Greps each container name, CPU usage in %, and memory usage in MB
docker stats --no-stream | grep "taxi" | awk -v now=$(date +%s) '{print now","$2","$3","$4}' >> usage.csv