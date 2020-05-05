class PreguntasController < ApplicationController
  def index
    @products = Product.all
  end
end
