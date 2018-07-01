class Product < ApplicationRecord
  has_many :comments, ->{where parent_id: nil}, dependent: :destroy
  has_many :order_details
  has_many :orders, through: :order_details
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :image, presence: true

  scope :select_attr, -> {select :id, :type_id, :name, :price, :description, :image}
  scope :order_desc, -> {order created_at: :desc}

  class << self
    def top_product
      Product.last(Settings.product.top_product)
    end

    def search search
      where("name LIKE ?", "%#{search}%")
    end
  end
end
