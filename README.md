# README

Railsのデフォルト状態に、手作りでユーザ認証システム(登録、編集、ログイン、ログアウト)を追加したものです。

## 動作環境

* Ruby Version

## 起動まで

まずは clone してください。

```
$ git clone git@github.com:kosappi/SigninSignoutWebapp.git
```

次に、bundle install してください。

```
$ cd ./SigninSignoutWebapp
$ bundle install --path vendor/bundler
```

起動の前に、マイグレーションを実行してください。

```
$ bundle exec rake db:migrate
```

最後に、rails コマンドでウェブサーバを起動してください。

```
$ bundle exec rails server
```
