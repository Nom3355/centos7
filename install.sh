#! /bin/bash
#
# check for root
#check for root
IAM=$(whoami)
if [ ${IAM} != "root" ]; then
    echo "You must be root to use this script"
    exit 1
fi
