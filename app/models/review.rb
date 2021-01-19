class Review < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :users, through: :book_marks

  validates :title, presence: true
  validates :text, presence: true
  
end
