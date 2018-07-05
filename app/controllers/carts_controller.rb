class CartsController < ApplicationController
  before_action :find_cart

  attr_reader :cart

  def show
  end

  def destroy
    cart.order_details.destroy_all
    session[:cart_id] = nil
    redirect_to root_path
  end

  private

  def find_cart
    @cart = Cart.find_by id: params[:id]
    current_cart = Cart.find_by id: session[:cart_id]
    return if cart && cart.current_cart? current_cart
    redirect_to root_path
    flash[:danger] = t("invalid")
  end
end
