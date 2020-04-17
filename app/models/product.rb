class Product < ApplicationRecord
  belongs_to :category
  has_many :orders
  mount_uploader :photo, ImageUploader

end
