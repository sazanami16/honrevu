FactoryBot.define do
  factory :review do
    title    { 'タイトル1' }
    genre_id { 2 }
    text     { '面白かった' }
    rating   { 4.5 }
    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/test.png'), filename: 'test.png')
    end
  end
end
