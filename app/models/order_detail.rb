class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  validates :quantity, presence: true
  validates :total, presence: true
  
  def total
    product.price * quantity
  end
end
