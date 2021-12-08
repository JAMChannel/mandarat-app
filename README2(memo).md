## AWS

### sshログイン
```
ssh -i jam-aws.pem ec2-user@54.65.145.16
```

kill
```
ps aux | grep unicorn

sudo kill $(cat tmp/pids/unicorn.pid)
```

### DB
```
sudo systemctl start mariadb
sudo systemctl status mariadb
```

## nginx
```
sudo systemctl restart nginx
```

## アセットファイルをコンパイル
```
rails assets:precompile RAILS_ENV=production
yarn install --ignore-engines
```



### MariaDB root パスワード
```
tuyoshi244
```


### secret_key_baseを環境変数に設定
sudo vim /etc/environment
```

#前章で設定したデータベースのrootユーザーのパスワードを入力
DATABASE_PASSWORD='tuyoshi244'
SECRET_KEY_BASE='420021028fa665c0337ed2a697159d9ed9ca050c1e1dd06e5e76d1e9a4cf47261c319ec27717c74bfdbce20c7415d7876a533822ca50166bbafb24740b879519'

# 「AWSに画像をアップロードする」でダウンロードしたCSVファイルを参考に値を入力
AWS_ACCESS_KEY_ID='ここにCSVファイルのAccess key IDの値をコピー'
AWS_SECRET_ACCESS_KEY='ここにCSVファイルのSecret access keyの値をコピー'

# Basic認証で設定したユーザー名とパスワードを入力
BASIC_AUTH_USER='設定したユーザー名'
BASIC_AUTH_PASSWORD='設定したパスワード'

# PAY.JPで設定した公開鍵と秘密鍵を入力
PAYJP_SECRET_KEY='sk_test_*************'
PAYJP_PUBLIC_KEY='pk_test_*************'
```

手動起動
```
RAILS_SERVE_STATIC_FILES=1 unicorn_rails -c config/unicorn.rb -E production -D
```

Elastic IP
```
http://54.65.145.16/
```