require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'should create a new username that is valid' do
      @user = User.create(
        name: 'Steve Jobs',
        email: 'sjobs@apple.com',
        password: 'iheartUX',
        password_confirmation: 'iheartUX'
        )
        expect(@user).to be_valid
    end

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

  end
end


