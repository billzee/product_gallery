require 'carrierwave/orm/activerecord'

class Product < ApplicationRecord
  mount_uploaders :images, ImageUploader

  validates :name, presence: true
  validates :images, presence: true
  validates :category_id, presence: true

  validates_length_of :images, :maximum => 6
end
