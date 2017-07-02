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

ルートパスにアクセスすると新規登録画面が出ます。

![1](http://i.imgur.com/MDdJ7WY.png?1)

新規登録画面とログイン画面は相互に移動できます。

![2](http://i.imgur.com/LMeEmRq.png?1)

新規登録を完了すると個人情報画面に飛びます。

![3](http://i.imgur.com/QKjQgzc.png?1)

自分の情報を編集できます。

![4](http://i.imgur.com/YKFu9uk.png?1)

ログインした状態でルートパスにアクセスした場合、新規登録フォームは出ません。
また、ログイン画面から　ログインした場合は、こちらの画面に飛びます。

![5](http://i.imgur.com/icOeImG.png?1)

## 認証機構

今回作成した認証機構について説明します。
認証の流れは下記のようになっています。

#### ログイン時

1. DBから、メールアドレスを持つユーザを探す
1. 該当するユーザの暗号済みパスワードと、リクエストのパスワードを暗号化したものを、比較する
1. 一致した場合は、新しいログイントークン発行し、cookieに保存する
1. ログイントークンを暗号化したものを、DBに保存する

#### ログイン中かどうかの判断

1. cookieの
自分の情報を編集できます。ログイン
自分の情報を編集できます。
