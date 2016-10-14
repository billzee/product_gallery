class Product < ApplicationRecord
  validates :name, presence: true
  belongs_to :category
  validates :category_id, presence: true
  has_many :images
end
