require 'carrierwave/orm/activerecord'

class Product < ApplicationRecord
  validates :name, presence: true
  mount_uploaders :images, ImageUploader

  validates :category_id, presence: true
end
