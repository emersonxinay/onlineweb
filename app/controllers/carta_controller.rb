class CartaController < ApplicationController
  def index
    @products = Product.all
  end
end
