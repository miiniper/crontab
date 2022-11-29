#!/bin/bash

token=${WEIXIN_TOKEN}
now=`date "+%F %H:%M:%S" -d 8hours`

# test
# todo

curl -X POST 'https://qyapi.weixin.qq.com/cgi-bin/webhook/send?key='$token --header 'Content-Type:application/json' --data '{"msgtype":"text","text":{"content":"生活小蜜提醒您现在是 '"$now"' ,您该喝水了，休息一下"}}'
