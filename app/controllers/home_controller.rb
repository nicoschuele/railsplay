class HomeController < ApplicationController
  def index
    @companies_count = Company.count
    @categories_count = Category.count
    @products_count = Product.count
  end

  def gemfile
    @gemfile = ""
    File.open("#{Rails.root}/Gemfile.lock", 'r') do |f|
      f.each_line do |line|
        @gemfile << line
      end
    end
  end
end
