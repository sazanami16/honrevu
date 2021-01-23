class Review < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :books

  validates :title, presence: true
  validates :text, presence: true
  
end
