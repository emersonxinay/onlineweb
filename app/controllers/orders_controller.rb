class OrdersController < ApplicationController
  def create
    params[:products].each do |product_id|
      Order.create(:user => current_user, :product => Product.find(product_id), :state_order_id => 1, :delivery_date => Date.today )

    end
  end

  def show
  end
end
