require 'carrierwave/orm/activerecord'

class Product < ApplicationRecord
  mount_uploaders :images, ImageUploader

  validates :name, length: { maximum: 60 }, presence: true
  validates :images, presence: true
  validates :category_id, presence: true
  validates :link, length: { maximum: 100 }
  
  validates_length_of :images, :maximum => 6
end
