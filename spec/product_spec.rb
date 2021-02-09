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
  end
end


