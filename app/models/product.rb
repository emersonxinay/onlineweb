class Product < ApplicationRecord
  belongs_to :category
  has_many :orders
  has_many :users, through: :orders
  has_many :orders, dependent: :delete_all
  mount_uploader :photo, ImageUploader

  def orders_count(user_id)
    cantidad = Order.where(product_id: id).where(user_id: user_id).count
    return cantidad


  end

end
