class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.order(id: :desc).all
  end

   def new
    @category = Category.new
  end

   def create
    @category = Category.new(category_params)
  end

end