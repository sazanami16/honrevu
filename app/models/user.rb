class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :reviews,  dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :marked_reviews, through: :book_marks, source: :review

  has_many :reviews
  has_many :comments


  validates :name, presence: true
end
