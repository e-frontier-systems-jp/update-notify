# update-notify

## 概要

アップデートがあるか確認しある場合はDiscordに通知を送信するスクリプトです。
以下のユーティリティが含まれています。
- 設定ファイルサンプル
- セットアップスクリプト
- cronで使用する設定ファイル

## インストール方法

1. GitHubからclone

```bash:クローン
git clone https://github.com/e-frontier-systems-jp/update-notify.git
```

2. 通知先DiscordのWebHook URLを入手する

3. 設定ファイルを変更する

`update-notify.sample.config`を開き、DiscordのWebHook URLを設定する

4. インストーラを起動する

以下のようにインストーラーを実行しセットアップを行う
```bash
sudo chmod +x ./setup.sh
sudo ./setup.sh
```

**※セットアップ終了後、クローンしたファイルはフォルダごと削除しても問題ありません。**

5. 定時に実行されるか確認

デフォルトの設定では05:00にアップデートチェックが起動しDiscordに通知が届きます。
