class SearchsController < ApplicationController
  def index
    if params[:search]
      @search_products = Product.search(params[:search]).paginate page: params[:page],
        per_page: Settings.product.p_page
    end
  end

  private

  def search_params
    params.require(:product).permit :name, :price
  end
end
