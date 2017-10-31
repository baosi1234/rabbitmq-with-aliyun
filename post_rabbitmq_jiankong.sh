#!/bin/sh
# 定义全局变量
userId=$ALIYUN_USER_ID
metricName=RabbitMQ_queue_size
# 获取RabbitMQ队列信息
for queue in `sudo rabbitmqctl list_queues|grep "[0-9]$"`
do
  if [ ! -n "$queueName" ]; then
    queueName=$queue;
  else
    sh aliyun-jiankong.sh $userId $metricName $queue queue_name=$queueName
    unset queueName;
  fi
done
