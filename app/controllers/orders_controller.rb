class OrdersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_order, only: [ :destroy]


    def create

      params[:products].each do |product_id|
        Order.create(:user => current_user, :product => Product.find(product_id), :state_order_id => 1, :delivery_date => Date.today, :payed => false )
        end
          redirect_to orders_path
    end

    def index
      @orders = Order.all
      respond_to do |format|
        format.html
        format.json
        # <--- la sigueinte linea es para ver en pdf --->
         format.pdf {render template: 'orders/detalle', pdf: 'detalle'}
        # <--- la sigueinte linea es para descargar en pdf --->
        # format.pdf do
        #   render pdf: @order.user_id + " CV",
        #      disposition: 'attachment'
        # end

      end
      #@orders =Order.where(user: current_user)
      #products_id = Order.select(:id).distinct.pluck(:product_id)
      products_id = current_user.orders.select(:id).distinct.pluck(:product_id)
      orders_id = []
      products_id.each do |pp|
        orders_id.push( Product.find(pp).orders.where(user: current_user).last.id )
      end
      @orders = Order.where(user: current_user).where(id: orders_id).where(payed: false)

    end
    def detalle

    end

    def historial
      products_id = current_user.orders.select(:id).distinct.pluck(:product_id)

      @orders = Order.where(user: current_user).where(payed: true)
    end

    def destroy
      @order.destroy
      respond_to do |format|
        format.html { redirect_to orders_path, notice: 'Product was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    def show
    end
    def pay_success
      @billing = Billing.where(code: params[:billing_code]).first

      render "pay/success"
    end

    def clean
      @orders = Order.where(user: current_user, payed: false)
      @orders.destroy_all
      redirect_to orders_path, notice: 'El carro se ha vaciado.'
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

end
