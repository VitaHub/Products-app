class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:name).includes(:sample_product)
  end
end
