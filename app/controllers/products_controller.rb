class ProductsController < ApplicationController
  before_action :find_product, only: :show

  def index
    @products = Product.order_desc
    @products = Product.select_attr.paginate page: params[:page],
      per_page: Settings.product.p_page
  end

  def show
  end

  private

  attr_reader :product

  def find_product
    @product = Product.find_by id: params[:id]
    return if product
    flash[:warning] = t("no_product")
    redirect_to products_path
  end
end
