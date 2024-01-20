#!/bin/bash


if [ "$(id -u)" -ne 0 ]; then
    echo "このスクリプトはsudoで実行する必要があります。"
    exit 0
fi


PWD=`echo $(cd $(dirname $0) && pwd)`

echo
echo "update-notifyのセットアップをします。"
echo
echo "あらかじめ「update-notify.sample.config」の設定を済ませておいてください"
echo 
read -p "セットアップを続行するには、Enterキーを押下してください。"
echo

echo 
echo "実行ファイルをコピーしています..."
cp ${PWD}/update-notify /usr/local/sbin/update-notify
chmod 755 /usr/local/sbin/update-notify

if [ ! -f "/usr/local/etc/update-notify.config" ]; then
    echo
    echo "設定ファイルをコピーしています..."
    cp ${PWD}/update-notify.sample.config /usr/local/etc/update-notify.config
    chmod 600 /usr/local/etc/update-notify.config
fi

echo
echo "cron.dailyにファイルをコピーしています"
cp ${PWD}/update-notify-trigger /etc/cron.daily/update-notify-trigger
chmod 755 /etc/cron.daily/update-notify-trigger

echo 
echo "done."
