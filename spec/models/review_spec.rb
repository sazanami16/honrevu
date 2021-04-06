require 'rails_helper'

RSpec.describe Review, type: :model do
  before do
    @review = FactoryBot.build(:review)
    @review.image = fixture_file_upload('public/test.png')
  end

  describe '投稿の保存' do
    context '投稿が保存できる場合' do
      it '必要事項が入力されていれば投稿は保存される' do
        expect(@review).to be_valid
      end
    end

    context '投稿の保存がうまくいかないとき' do
      it '画像が空だと登録できない' do
        @review.image = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Image can't be blank")
      end
      it 'タイトルが空だと保存できない' do
        @review.title = ''
        @review.valid?
        expect(@review.errors.full_messages).to include("Title can't be blank")
      end
      it 'ジャンルが未選択だと保存できない' do
        @review.genre_id = 1
        @review.valid?
        expect(@review.errors.full_messages).to include("Genre must be other than 1")
      end
      it '投稿文が空だと保存できない' do
        @review.text = ""
        @review.valid?
        expect(@review.errors.full_messages).to include("Text can't be blank")
      end
      it 'レビューが空だと保存できない' do
        @review.rating = nil
        @review.valid?
        expect(@review.errors.full_messages).to include("Rating can't be blank")
      end
      it 'ユーザーが紐付いていないと投稿は保存できない' do
        @review.user = nil
        @review.valid?
        expect(@review.errors.full_messages).to include('User must exist')
      end
    end
  end
end
