class BillingsController < ApplicationController
  before_action :authenticate_user!
  def pre_pay
    orders = current_user.orders.where(payed: false) #todas las órdenes del usuario que no han sido pagadas
    #total = orders.pluck("price * quantity").sum() #de las ordenes solo tomamos el precio y la cantidad
    total = orders.map{|order| order.product.price}.sum

    items = orders.map do |order|
      item = {}
      item[:name] = order.product.name
      item[:sku] = order.id.to_s
      item[:price] = order.product.price.to_s
      item[:currency] = 'USD'
      item[:quantity] = 1 #order.quantity
      item
  end
  def execute
  paypal_payment = PayPal::SDK::REST::Payment.find(params[:paymentId])

  if paypal_payment.execute(payer_id: params[:PayerID])
    # get orders
    # corregir
    @billing = Billing.new
      @billing.user = current_user
      @billing.code = 1
      @billing.payment_method = paypal_payment.payer.payment_method
      @billing.amount = 100
      @billing.currency = 'CLP'
    @billing.save

    orders = current_user.orders.where(payed: false)
    orders.each do |o|
      o.payed = true
      o.save
    end

    redirect_to historial_orders_path(@billing.code)
    # render plain: ":)"

  else
    render plain: ":()"
  end
end

  @payment = PayPal::SDK::REST::Payment.new({
  :intent =>  "sale",
  :payer =>  {
    :payment_method =>  "paypal" },
  :redirect_urls => {
    :return_url => "http://localhost:3000/billings/execute",
    :cancel_url => "http://localhost:3000/" },
  :transactions =>  [{
    :item_list => {
      :items => items
    },
    :amount =>  {
      :total =>  total,
      :currency =>  "USD" },
    :description =>  "Carro de compra" }]})

    if @payment.create
      redirect_url = @payment.links.find{|v| v.method == "REDIRECT"}.href
      redirect_to redirect_url
    else

      @payment.error  # Error Hash

      # :(
    end
  end
end
