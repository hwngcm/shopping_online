class OrdersController < ApplicationController
  before_action :find_order, only: [:edit, :destroy]
  
  def new
    @order = Order.new
  end

  def create
    @order = Order.new order_params
    @order.save
    respond_to do |format|
      format.html { redirect_to @order }
    end
  end

  def update
    @order.update_attributes order_params
    respond_to do |format|
      format.html { redirect_to @order}
    end
  end

  def destroy
    session[:order_id] = nil
    @oder.destroy
    respond_to do |format|
      format.html { redirect_to @order }
    end
  end

  private
  
  def find_order
    @order = Order.find_by id: params[:id]
  end

  def order_params
    params.require[:order].permit :total_price
  end
end
