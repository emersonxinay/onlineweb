class HomeController < ApplicationController
  respond_to :html, :json

  def create
    @products = Product.all
  end

  def index
    @products = Product.all
  end

  def show
    @products = Product.all
  end

  def edit

  end

  def new
    @home = Home.new
    respond_to do |format|
    format.html # show.html.erb
    format.json
    format.js
    end
  end
end
