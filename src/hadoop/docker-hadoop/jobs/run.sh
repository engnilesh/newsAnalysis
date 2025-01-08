#!/bin/bash

$HADOOP_HOME/bin/hadoop  jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.2.1.jar \
-input /tmp/ \
-output /tmp/ \
-mapper $TEST_FILE \
-file $TEST_FILE
