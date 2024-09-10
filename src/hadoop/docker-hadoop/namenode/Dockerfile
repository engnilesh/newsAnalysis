FROM bde2020/hadoop-base:2.0.0-hadoop3.2.1-java8

MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

# Comment by nileshp
# Here, we are checking health of server localhost at port 9870, but this port is not valid in case of "/home/nileshp/hadoop/docker-hadoop/docker-compose-v3.yml" file(i.e. Hadoop deployment with this docker compose file), because as we can see in this *-v3.yml file, the namenode service is listening at port 50070. Therefore, if we try to deploy Hadoop by using the *-v3.yml, the namenode service do not get started because this HEALTHCHECK command itself get fail due to invalid port number(i.e. 9870), in order to deploy Hadoop with the *-v3.yml file we need to change the port from 9870 to 50070 and respective we need to do this change in every other Docker Files for other services(datanode/Dockerfile, nodemanager/Dockerfile etc.)
HEALTHCHECK CMD curl -f http://localhost:9870/ || exit 1

ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
RUN mkdir -p /hadoop/dfs/name
VOLUME /hadoop/dfs/name

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 9870

CMD ["/run.sh"]
