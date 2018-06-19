class Order < ApplicationRecord
  has_many :order_details
  has_many :products, through: :order_details

  validates :total_price, presence: true
  validates :payment, presence: true
  validates :status, presence: true
end
