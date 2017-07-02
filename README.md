# README

Rails 5.1.1 のデフォルト状態に、手作りでユーザ認証システム(登録、編集、ログイン、ログアウト)を追加したものです。

## 動作環境

* Ruby 2.4.1
* Bundler 1.15.1

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

## 画面説明

![登録](http://imgur.com/a/d9jSW)
