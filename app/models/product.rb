class Product < ApplicationRecord
  validates :name, presence: true
  has_many :images
  # validates :images, presence: true
end
