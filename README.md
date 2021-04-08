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

## ① ログインページ
###  ・ゲストログイン機能を実装しているので、新規登録なしで内容をみていただくことができます。

[![Image from Gyazo](https://i.gyazo.com/8a5715192c8bba0c24512b754d23c6a8.gif)](https://gyazo.com/8a5715192c8bba0c24512b754d23c6a8)

## ② 投稿一覧ページ（メインページ）
### ・ログインすると投稿一覧ページに遷移します。
### ・右上の「投稿する」ボタンを押すとレビュー投稿ページへ遷移します。

[![Image from Gyazo](https://i.gyazo.com/ff30cd6d4c066b0881818c07455a311c.gif)](https://gyazo.com/ff30cd6d4c066b0881818c07455a311c)

## ③ レビュー投稿ページ
### ・画像、本のタイトル、レビュー記事、星レビューを入力することができます。星レビュー機能は「0.5」単位で入力することが可能です。
### ・レビュー記事は、短く要約してもらうために200文字の字数制限を設けています。
### ・文字数カウント機能は今後実装予定です。

[![Image from Gyazo](https://i.gyazo.com/bdb1d1b86782d384dd255e075abe1745.png)](https://gyazo.com/bdb1d1b86782d384dd255e075abe1745)

## ④ 投稿完了後、メインページに遷移
### ・投稿した記事は、メインページに表示されます。
### ・投稿一覧には最新の投稿記事が一番上に表示されるように実装しています。
### ・投稿した記事左下にて「いいね（♡）」を押すことができます。
[![Image from Gyazo](https://i.gyazo.com/ca15f6e2b92e436bfe21600879b01068.gif)](https://gyazo.com/ca15f6e2b92e436bfe21600879b01068)

[![Image from Gyazo](https://i.gyazo.com/66c6c2c754a60bc667284a69277cde52.png)](https://gyazo.com/66c6c2c754a60bc667284a69277cde52)

## ⑤ 投稿詳細ページ
### ・投稿記事右下の「Show Review」を押すと投稿詳細ページへ遷移します。
### ・メインページの投稿一覧は最新の投稿記事が一番上に表示されるように実装しています。

[![Image from Gyazo](https://i.gyazo.com/7cb64ae6c4ca06ea45207a0f18f729c9.png)](https://gyazo.com/7cb64ae6c4ca06ea45207a0f18f729c9)

## ⑥ 投稿詳細ページ
### ・詳細ページの下にて投稿した記事に対してコメントすることができます。
### ・投稿したコメントは削除することができます。

[![Image from Gyazo](https://i.gyazo.com/7753d121afa9ad2cb674b1a608b3ae5d.png)](https://gyazo.com/7753d121afa9ad2cb674b1a608b3ae5d)

[![Image from Gyazo](https://i.gyazo.com/f8f2e6ad384a66f153a2a5aa0d917813.gif)](https://gyazo.com/f8f2e6ad384a66f153a2a5aa0d917813)

## ⑦ 投稿編集ページ
### ・記事を投稿したユーザーのみ記事の編集または削除ができます。
### ・編集または削除後、メインページへ遷移します。

## 今後実装予定の機能
- 投稿記事の文字数カウント機能
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
