class Admin::DashboardController < ApplicationController

  def show
    @product_counts = Product.count(:id)
    @category_counts = Category.count(:id)
  end
  
end
