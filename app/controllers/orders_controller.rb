class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.status = :pending
    @order.save

    flash[:notice] = 'Order created'
    redirect_to root_path
  end

  private

  def order_params
    params.permit(:product_id)
  end
end
