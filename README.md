# README
  
## アプリ名
* POKEYARU

## 概要
* 自分の持っているポケモンカードのコレクションを作る事が出来るアプリ。
* 管理人は写真やデータの保存、修正、削除が出来ます。
* それ以外のユーザーはコレクション情報を閲覧する事が可能です。

## デプロイ
* URL : https://pokeyaru.herokuapp.com/
<!-- * ID test@test
* PW testtest2 -->

## 制作背景
* ポケモンカードのネット販売（Ebay、メルカリ、ヤフオク等）をするにあたり、海外などに出品する際に英名や必要な情報を出品する度にカードの情報を検索するのが手間だった為、
* 出品時に必要なデータの記録や情報をカード毎に纏めて記録しておけるアプリを作りました。

## 工夫したポイント
* activeadminというgemを使い管理者ページを作成した事。

## 使用技術
* 管理者ページ
* ポケモンカード情報の登録・変更・削除
* カード検索機能

## 使用技術一覧
|種別|名称|
|----|----|
|開発言語|Ruby(ver 2.5.1)|
|フレームワーク|Ruby on Rails(ver 5.2.4.1)|
|マークアップ|HTML(Haml),CSS(Sass)|
|フロントエンド|bootstrap4,JavaScript(jQuery)|
|DB|MySQL|
|本番環境|heroku|
|画像アップロード|carrierwave, AWS S3|
|ユーザー管理|devise|
|管理者ページ|active_admin|
|検索機能|ransack|

## 課題や今後実装したい機能
### 機能
* コレクションカードの販売機能
* ボックスやジャンルからカードを検索出来る機能
* 一般ユーザーが登録してあるカードを持っているかどうかが分かる機能
* csvでの一括登録
### 課題
* activeadmin上でimageモデルから他モデルで使う事が上手くいかなかった
* 画面解像度を変えた時ビューが意図せず崩れてしまう


## pokeca
|Column|Type|Options|
|------|----|-------|
|image|string|
|name|string|
|detail|text|
|price|string|
|box|references|foreign_key:|
|genre|references|foreign_key:|
|rare|references|foreign_key:|
## Association
- belongs_to :box
- belongs_to :genre
- belongs_to :rare

## rare
|Column|Type|Options|
|------|----|-------|
|rarity|string|
## Association
- has_many :pokecas

## box
|Column|Type|Options|
|------|----|-------|
|name|string|
|place|string|
|release|date|
## Association
- has_many :pokecas

## genre
|Column|Type|Options|
|------|----|-------|
|name|string|
## Association
- has_many :pokecas