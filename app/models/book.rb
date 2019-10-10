class Book < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :author, presence: true
  validates :title, presence: true
end
