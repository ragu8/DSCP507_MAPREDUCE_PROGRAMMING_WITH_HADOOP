#! /bin/bash

cd Hadoop
tar xvzf hadoop-2.6.5.tar.gz
sudo mkdir -p /usr/local/hadoop
cd hadoop-2.6.5
sudo mv * /usr/local/hadoop
sudo chown -R ragu:hadoop /usr/local/hadoop
