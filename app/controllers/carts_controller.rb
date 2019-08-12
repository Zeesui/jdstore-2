class CartsController < ApplicationController
   before_action :authenticate_user!

  def clean
    current_cart.clean!
    flash[:warning] = "清空购物车"
    redirect_to carts_path
  end

  def checkout
    @order = Order.new

  end
end
