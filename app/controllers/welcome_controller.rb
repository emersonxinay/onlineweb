class WelcomeController < ApplicationController

  def index
    @products = Product.all
  end
  def contacto
    @contacts = Contact.new
  end

end
