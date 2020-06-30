# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# stop process
/opt/mapr/hadoop/hadoop-2.7.4/sbin/stop-dfs.sh
/opt/mapr/hadoop/hadoop-2.7.4/sbin/stop-yarn.sh
/opt/mapr/hadoop/hadoop-2.7.4/sbin/stop-all.sh

# clear data directories
mkdir -p /usr/local/hdfs/namenode/
mkdir -p /usr/local/hdfs/datanode/
rm -fr /usr/local/hdfs/namenode/*
rm -fr /usr/local/hdfs/datanode/*

# remove related logs
rm -fr /opt/hadoop-2.6.5/logs/*

# hdfs format
/opt/mapr/hadoop/hadoop-2.7.4/bin/hdfs namenode -format

# restart hdfs
/opt/mapr/hadoop/hadoop-2.7.4/sbin/start-dfs.sh

# restart yarn
/opt/mapr/hadoop/hadoop-2.7.4/sbin/start-yarn.sh

# restart spark
/opt/mapr/spark/spark-2.2.1/sbin/start-all.sh
