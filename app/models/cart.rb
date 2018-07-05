class Cart < ApplicationRecord
  has_many :order_details

  def current_cart? cart
    self == cart
  end

  def add_product product
    current_item = order_details.find_by product_id: product.id
    if current_item
      current_item.quantity += 1
    else
      current_item = order_details.build product_id: product.id
    end
    current_item
  end

  def total_price
    sum = 0
    order_details.each do |o|
      sum += o.total
    end
  end
end
