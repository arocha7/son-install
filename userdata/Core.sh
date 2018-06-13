#!/bin/bash
sed -i -e 's/Defaults    requiretty/Defaults   !requiretty/g' /etc/sudoers
yum update
#yum install python-pip python-setuptools python-wheel
yum install git nmap tree sysstat
yum install epel-release
yum install htop

