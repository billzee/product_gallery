class Product < ApplicationRecord
  validates :name, presence: true
  
  validates :category_id, presence: true
  has_many :images
end
