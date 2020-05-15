class Contact < ApplicationRecord
  validates :email, :description, :title, presence: true
  validates :title, length: {minimum: 5, too_shorts: "minimo #{count} caracteres"}
  validates :description, length: {minimum: 20, too_shorts: "minimo #{count} caracteres"}
end
