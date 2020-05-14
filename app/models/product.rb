class Product < ApplicationRecord
  belongs_to :category
  has_many :orders
  has_many :users, through: :orders
  has_many :orders, dependent: :delete_all
  mount_uploader :photo, ImageUploader

  scope :ultimos, -> {order("created_at DESC")}
  #scope :ult, -> {where(name: "Lomo Saltado")}
  scope :buscanombre, -> (name){where("name LIKE ?", "%#{name}%")}


  def orders_count(user_id, pagado)
    cantidad = Order.where(product_id: id).where(payed: pagado).where(user_id: user_id).count
    return cantidad


  end


end
