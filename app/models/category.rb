class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :name, presence: true

  scope :select_category, -> {select :id, :name}
end
