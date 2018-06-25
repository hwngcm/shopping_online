class StaticPagesController < ApplicationController
  def home
    @product = Product.top_product
  end

  def about; end

  private

  attr_reader :product
end
