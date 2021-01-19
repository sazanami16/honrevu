class BookMark < ApplicationRecord
  validates :user_id,   presence: true
  validates :review_id, presence: true
end
