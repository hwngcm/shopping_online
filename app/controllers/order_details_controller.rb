class OrderDetailsController < ApplicationController
  before_action :find_product, only: :create
  before_action :find_item, only: [:update, :destroy]

  def create
    @order_item = cart.add_product product_added
    order_item.save
  end

  def update
  end

  def destroy
    item.destroy
  end

  private

  attr_reader :product_added, :order_item, :item

  def find_product
    @product_added = Product.find_by id: params[:product_id]
    return if product_added
    redirect_to root_path
    flash[:danger] = "no_product"
  end

  def find_item
    @item = OrderDetail.find_by id: params[:id]
    return if item
    redirect_to root_path
    flash[:danger] = t "not_exist"
  end
end
