class Product < ApplicationRecord
  has_many :comments, ->{where parent_id: nil}, dependent: :destroy
  has_many :order_details
  has_many :orders, through: :order_details
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :image, presence: true
end
