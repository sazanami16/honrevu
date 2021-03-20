# テーブル設計

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

##  機能要件
## ・ログイン、ログアウト 済
## ・ユーザー登録 済
## ・ユーザー編集 済
## ・ユーザー削除
## ・要約投稿（画像も含む）：制限文字400字以内
## ・投稿編集（画像も含む） 済
## ・投稿削除（画像も含む） 済
## ・投稿検索機能
## ・コメント機能 済
## ・コメント編集 
## ・コメント削除
## ・いいねボタン 済
## ・星レビュー機能 済

## ※ ログイン、ログアウトはdevice使用
## ※ 画像はActiveStorageを使用
## ※ 星レビュー機能はjQuery使用
## ※ フロントはscssを使用

