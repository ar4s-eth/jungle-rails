class Admin::DashboardController < ApplicationController
  # http_basic_authenticate_with name: ENV["ADMIN"], password: ENV["PASSWORD"]

  def show
    @product_counts = Product.count(:id)
    @category_counts = Category.count(:id)
  end
  
end
