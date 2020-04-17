class StateOrdersController < ApplicationController
  before_action :set_state_order, only: [:show, :edit, :update, :destroy]

  # GET /state_orders
  # GET /state_orders.json
  def index
    @state_orders = StateOrder.all
  end

  # GET /state_orders/1
  # GET /state_orders/1.json
  def show
  end

  # GET /state_orders/new
  def new
    @state_order = StateOrder.new
  end

  # GET /state_orders/1/edit
  def edit
  end

  # POST /state_orders
  # POST /state_orders.json
  def create
    @state_order = StateOrder.new(state_order_params)

    respond_to do |format|
      if @state_order.save
        format.html { redirect_to @state_order, notice: 'State order was successfully created.' }
        format.json { render :show, status: :created, location: @state_order }
      else
        format.html { render :new }
        format.json { render json: @state_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_orders/1
  # PATCH/PUT /state_orders/1.json
  def update
    respond_to do |format|
      if @state_order.update(state_order_params)
        format.html { redirect_to @state_order, notice: 'State order was successfully updated.' }
        format.json { render :show, status: :ok, location: @state_order }
      else
        format.html { render :edit }
        format.json { render json: @state_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_orders/1
  # DELETE /state_orders/1.json
  def destroy
    @state_order.destroy
    respond_to do |format|
      format.html { redirect_to state_orders_url, notice: 'State order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_order
      @state_order = StateOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def state_order_params
      params.require(:state_order).permit(:name)
    end
end
