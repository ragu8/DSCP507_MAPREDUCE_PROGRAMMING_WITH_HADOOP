#! /bin/bash

sudo nano ~/.bashrc
sudo source ~/.bashrc
sudo nano /usr/local/hadoop/etc/hadoop/hadoop-env.sh
sudo mkdir -p /app/hadoop/tmp
sudo chown ragu:hadoop /app/hadoop/tmp
sudo nano /usr/local/hadoop/etc/hadoop/core-site.xml

sudo nano /usr/local/hadoop/etc/hadoop/mapred-site.xml
sudo mkdir -p /usr/local/hadoop_store/hdfs/namenode
sudo mkdir -p /usr/local/hadoop_store/hdfs/datanode
sudo chown -R ragu:hadoop /usr/local/hadoop_store
sudo nano /usr/local/hadoop/etc/hadoop/hdfs-site.xml
hadoop namenode -format
sudo nano /usr/local/hadoop/etc/hadoop/yarn-site.xml
start-all.sh
jps

