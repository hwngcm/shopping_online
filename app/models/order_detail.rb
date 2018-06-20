class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :quantity, presence: true
  validates :total, presence: true
end
