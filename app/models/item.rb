class Item < ApplicationRecord
  validates :code, presence: true, length: { maximum: 255 }
  validates :name, presence: true, length: { maximum: 255 }
  validates :url, presence: true, length: { maximum: 255 }
  validates :image_url, presence: true, length: {maximum: 255 }
  
  has_many :wants
  has_many :want_users, through: :wants, source: :user
end
