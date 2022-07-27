# Executing a WordCount MapReduce program in Hadoop

```
Step 1 : Compilation of a java program

$ javac -classpath $HADOOP_CLASSPATH WordCount.java
```
```
Step 2 : Creation of jar file
$ jar -cvf wc.jar *.class
```
```
Step 3 : Creation of directories
$ hdfs dfs -mkdir /user
$ hdfs dfs -mkdir /user/wc
$ hdfs dfs -mkdir /user/wc/input
```
```
Step 4 : Copying inputfiles from local directory to Hadoop
$ hadoop fs -copyFromLocal wcinput1.txt /user/wc/input
$ hadoop fs -copyFromLocal wcinput2.txt /user/wc/input
```
```
Step 5 : Executing job in hadoop
$ hadoop jar wc.jar WordCount /user/wc/input /user/wc/output
```
```
Step 6 : Copying output files from Hadoop to local directory
$ hadoop fs -copyToLocal /user/wc/output/*
```
```
Step 7 : Viewing the output file
$ gedit part-r-00000
```
```
Step 8 : Remove the output filles and directory from hadoop
$ hdfs dfs -rm /user/wc/output/*
$ hdfs dfs -rmdir /user/wc/output
```
