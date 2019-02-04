class Api::OrdersController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]

  def index
    if current_user
      @orders = current_user.orders
      render 'index.json.jbuilder' 
    end  
  end

  def create
    product = Product.find(params[:product_id])
    calculated_subtotal = params[:quantity].to_i * product.price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_tax + calculated_subtotal

    @order = Order.new(
                            user_id: current_user.id,
                            subtotal: calculated_subtotal,
                            tax: calculated_tax,
                            total: calculated_total
                          )

    if @order.save
      purchased_items = CartedProduct.all.where(user_id: current_user.id, status: "carted")
      purchased_items.each do 
      end  
      render 'show.json.jbuilder'
    else
      render json: {errors: @order.errors.full_messages}, status: :unprocessable_entity
    end      
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end
end
