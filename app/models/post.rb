class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { maximum: 64 }
  validates :body, presence: true, length: { maximum: 512 }
end
