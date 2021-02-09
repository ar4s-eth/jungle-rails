require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it "should error if name is nil" do
      @category = Category.create(name: "Appliances")
      @product = Product.create(price: 599, quantity: 10, category: @category)
      expect(@product.errors.full_messages).to include "Name can't be blank"
    end

    it "should error if a price is missing" do
      @category = Category.create(name: "Fruits")
      @product = Product.create(name: "athousandants", quantity: 5, category: @category)
      expect(@product.errors.full_messages).to include "Price can't be blank"
    end

    it "should error if quantity is missing" do
      @category = Category.create(name: "Heavy Equipment")
      @product = Product.create(name: "Excavator", price: 499999, category: @category)
      expect(@product.errors.full_messages).to include "Quantity can't be blank"
    end

    it "should error if category is missing" do
      @category = Category.create(name: "Blankets")
      @product = Product.create(name: "Wool", price: 10, quantity: 1)
      expect(@product.errors.full_messages).to include "Category can't be blank"
    end

  end
end


