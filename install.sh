#! /bin/bash
#
# check for root
#check for root
IAM=$(whoami)
if [ ${IAM} != "root" ]; then
    echo "You must be root to use this script"
    exit 1
fi
yum -y update
yum -y install epel-release
yum -y install mc unzip zip
sed 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux
