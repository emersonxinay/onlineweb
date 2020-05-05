class LocalController < ApplicationController
  

  def index
    @products = Product.all
  end
end
