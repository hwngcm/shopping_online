class CategoriesController < ApplicationController
  def index
    @categories = Category.select_category.includes :products
  end

  def show
    @category = Category.find_by id: params[:id]
    if category.present?
      @products = category.products.paginate page: params[:page],
        per_page: Settings.category.c_page
    else
      redirect_to root_path
    end
  end

  private

  attr_reader :category
end
