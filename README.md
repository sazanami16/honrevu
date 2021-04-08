## アプリケーション名
### 「HonRevu」

## アプリケーション概要
### 読書要約共有アプリ
- 読み終わった瞬間の気持ちを思い出すアプリです。
- 感銘を受けた文章、好きな文章を共有してください。
- 読んだ後、すぐに内容を忘れてしまう人におすすめです。

## 本番環境URL（Heroku）
- https://honrevu.herokuapp.com/

## テスト用アカウント
- E-Mail：test1@com
- PassWord：111111

## 利用方法
- 新規登録またはログインします。
- 画像、タイトル、ジャンル、文章、レビューを入力して記事を投稿することができます。
- 投稿した記事に対して、「いいね（♡）」を押すことができます。
- 投稿した記事を編集、削除できます。
- 投稿詳細ページの下部にてコメントできます。

## 作成した背景と目指した課題解決
### 【作成背景】
- 社会人になってから本を読むようになり、自身の感性を共有し、他の人の感性を覗き見したいと思ったので作成しました。

### 【課題解決】
- 文章の要約を苦手としている人に対し、アウトプット環境を提供し、要約力を養います。
- 本が好きな人に対し、情報共有の場を設けて色んな人の感性に触れてもらうことで感性を養います。

## 洗い出した要件
### 【 機能要件 】
- ログイン、ログアウト機能 
- ユーザー新規登録機能     ：同じメールアドレスは使用不可
- 記事投稿機能（画像も含む）：制限文字200字以内 
- 投稿編集（画像も含む）：投稿したユーザーのみ投稿可能
- 投稿削除（画像も含む）：投稿したユーザーのみ削除可能
- コメント投稿機能 ：ログインユーザーのみ投稿可能
- コメント削除機能 ：コメント投稿したユーザーのみ削除可能
- いいね機能 ：投稿した記事に対して「いいね」可能
- 星レビュー機能 ：投稿時に５段階評価でレビュー可能 

## 実装機能についての画像とその説明

[![Image from Gyazo](https://i.gyazo.com/716f922140e26aa151a0ddecc5f0992c.png)](https://gyazo.com/716f922140e26aa151a0ddecc5f0992c)



[![Image from Gyazo](https://i.gyazo.com/bdb1d1b86782d384dd255e075abe1745.png)](https://gyazo.com/bdb1d1b86782d384dd255e075abe1745)


## 今後実装予定の機能
- ユーザー編集機能 
- ユーザー削除機能
- 投稿検索機能
- 本以外の共有カテゴリーを作成

## データベース設計

[![Image from Gyazo](https://i.gyazo.com/e9374b2ecdbb529a42abeb63283757a0.png)](https://gyazo.com/e9374b2ecdbb529a42abeb63283757a0)

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :reviews
- has_many :comments

## reviews テーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------  |
| title    | string     | null: false       |
| genre_id | integer    | null: false       |
| text     | text       | null: false       |
| rating   | float      | null: false       |
| user     | references | foreign_key: true |


### Association

- belongs_to :user
- has_many   :comments

## comments テーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| text     | text       | null: false       |
| user     | references | foreign_key :true |
| review   | references | foreign_key :true |

### Association

- belongs_to :user
- belongs_to :review

## books テーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| user     | references | foreign_key :true |
| review   | references | foreign_key :true |

### Association

- belongs_to :user
- belongs_to :review


## 開発環境
- HTML
- CSS
- JavaScript
- Ruby（2.6.5)
- Ruby on Rails(6.0.0)
- RSpec
- Visual Studio Code
