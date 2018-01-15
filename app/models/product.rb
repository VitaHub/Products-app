class Product < ApplicationRecord
  belongs_to :category
  validates :name, :image, :score, :price, :url, :category, presence: true
end
