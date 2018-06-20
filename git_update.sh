#!/bin/bash

echo "##### Centos 7 升級為 git2 #####"
sleep 1

#####
read -p "Continue ? [請再次確認是否要繼續執行] ( 1 = 繼續 or 0 = 離開 ) : " GO_CONTINUE
# Continue
sleep 1
if [ $GO_CONTINUE -eq 0 ]; then
    echo " "
    echo "Bye! Bye!"
    echo " "
    exit
else
    echo " "
    echo "Go! Continue!"
    echo " "
fi

#####
echo " 1. 若本來已有安裝 git，須先將之移除："
sudo yum remove git -y
sleep 2

echo " 2. 安裝 epel-release repository 以免找不到必要的相依套件："
sudo yum install epel-release -y
sleep 2

echo " 3. 安裝 IUS repository (for RHEL/CentOS 7)："
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sleep 2

echo " 4. 安裝 git2u："
sudo yum install -y git2u
sleep 2

#####
GIT_VER=$(git --version)
echo " "
echo "git version --- ( $GIT_VER ) !"
echo " "
echo "git 升級更新完成 !"
echo " "
