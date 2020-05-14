class UserMailerController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  respond_to :html, :json

  def user_mailer
    @users = User.all
  end

  def index
    @products = Product.all
  end

  def show
    @products = Product.all
  end
end
