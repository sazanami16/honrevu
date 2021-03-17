class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :books, dependent: :destroy
  has_one_attached :image
 
  with_options presence: true do
    validates :image
    validates :title
    validates :text
    validates :genre_id, numericality: { other_than: 1 } 
    # validates :rating, numericality: {
    # less_than_or_equal_to: 5,
    # greater_than_or_equal_to: 1
  # }
  end

  def was_attached?
    image.attached?
  end
  
end
