class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--ジャンルを選択--' },
    { id: 2, name: '小説・評論' },
    { id: 3, name: 'ビジネス・経済' },
    { id: 4, name: '歴史・古典' },
    { id: 5, name: '政治・社会' },
    { id: 6, name: '建築・デザイン' },
    { id: 7, name: '暮らし・料理' },
    { id: 8, name: 'サイエンス・テクノロジー' },
    { id: 9, name: '教育・自己啓発' },
    { id: 10, name: '旅行・紀行' },
    { id: 11, name: '絵本・児童書' },
    { id: 12, name: 'コミックス' },
    { id: 13, name: 'ノンフィクション' }
  ]

    include ActiveHash::Associations
    has_many :reviews
  end
