require 'rails_helper'
describe ReviewsController, type: :request do

  before do
    @review = FactoryBot.create(:review)
  end

  describe 'GET #index' do
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる' do 
      get root_path
      expect(response.status).to eq 200
    end
    it 'indexアクションにリクエストするとレスポンスに投稿済みのテキストの画像URLが存在する' do 
    end
    it 'indexアクションにリクエストするとレスポンスに投稿済みのテキストが存在する' do 
    end
  end
end
