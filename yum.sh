#!/bin/bash

echo "##### Centos 7 yum #####"
sleep 1

#####
yum update -y
sleep 1

yum install -y yum-utils epel-release curl wget tar bzip2 unzip nmap-ncat vim-enhanced
sleep 1
yum install -y passwd sudo hostname net-tools rsync man libpng-devel libjpeg-devel
sleep 1
yum install -y gcc gcc-c++ git make automake cmake patch logrotate python-devel
sleep 1
yum install -y openssl-devel dstat tree telnet sysstat smem
sleep 1
yum install -y htop
sleep 1
yum install -y httpd-tools
sleep 1
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sleep 2

git clone https://github.com/tzuching/MyLearning.git
sleep 1
sh MyLearning/git_update.sh
sleep 1
rm -rf MyLearning/
sleep 1

#####
echo " "
echo "升級更新完成 !"
echo " "