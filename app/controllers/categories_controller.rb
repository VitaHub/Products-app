class CategoriesController < ApplicationController
  def index
    @categories = Category.order(:name).includes(:sample_product)
                          .paginate(page: params[:page],
                                    per_page: Category::PER_PAGE)
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
  end
end
