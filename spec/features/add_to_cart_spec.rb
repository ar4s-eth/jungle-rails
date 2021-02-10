require 'rails_helper'

RSpec.feature "FirstFeatureTests", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "Adds to cart successfully" do
    visit root_path
    click_button('Add', match: :first)
    page.should have_content('(1)')
  end
end