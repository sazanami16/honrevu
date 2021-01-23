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

| Column  | Type        | Options          |
| ------- | ---------- | ----------------  |
| title   | string     | null: false       |
| text    | string     | null: false       |
| user    | references | foreign_key: true |

### Association

- belongs_to :user
- has_many   :comments

## comments テーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| text     | string     | null: false       |
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

## ○ 機能要件
## ・ログイン、ログアウト
## ・ユーザー登録
## ・ユーザー編集
## ・ユーザー削除
## ・要約投稿（画像も含む）：制限文字800字以内
## ・投稿編集（画像も含む）
## ・投稿削除（画像も含む）：制限枚数 1枚
## ・コメント機能
## ・コメント編集
## ・コメント削除
## ・いいねボタン

## ※ フロントにReact使用(APIでつなげる）
## ※ ログイン、ログアウトはdevice使用
## ※ 画像はActiveStorageを使用