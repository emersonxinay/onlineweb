class HomeController < ApplicationController
  respond_to :html, :json
  def index
    @products = Product.all

  end
  def show

  end
  def edit

  end

  def new
    @home = Home.new
    respond_to do |format|
    format.html # show.html.erb
    format.js
    end
  end
end
