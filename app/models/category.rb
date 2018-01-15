class Category < ApplicationRecord
  has_many :products
  has_one :sample_product, -> { limit(1) }, class_name: 'Product'
  validates :name, presence: true, uniqueness: true
end
