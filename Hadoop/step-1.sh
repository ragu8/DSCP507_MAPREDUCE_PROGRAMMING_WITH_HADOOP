#! /bin/bash
cd ~
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/dpkg/lock-frontend
sudo apt-get update  
sudo apt-get upgrade 
sudo apt-get install openjdk-8-jdk
sudo addgroup hadoop
sudo apt-get install ssh
ssh-keygen -t rsa -P ""
cat $HOME/.ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys
ssh localhost

