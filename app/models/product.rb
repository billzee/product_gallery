require 'carrierwave/orm/activerecord'

class Product < ApplicationRecord
  mount_uploaders :images, ImageUploader

  validates :name, presence: true
  validates :images, presence: true
  validates :category_id, presence: true
end
