class HomeController < ApplicationController
  def index
    @companies_count = Company.count
    @categories_count = Category.count
    @products_count = Product.count
  end
end
