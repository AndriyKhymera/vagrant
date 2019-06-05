#!/bin/sh
yum check-update
curl -fsSL https://get.docker.com/ | sh
systemctl start docker
systemctl enable docker

yum install maven -y

yum install wget -y
wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie"   "http://download.oracle.com/otn-pub/java/jdk/11.0.2+9/f51449fcd52f4d52b93a989c5c56ed3c/jdk-11.0.2_linux-x64_bin.rpm"
rpm -Uvh jdk-11.0.2_linux-x64_bin.rpm

yum install unzip -y

cd /vagrant/vagrant_data