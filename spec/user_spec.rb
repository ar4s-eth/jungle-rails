require 'rails_helper'

RSpec.describe User, type: :model do

  it 'should create a new username that is valid' do
    @user = User.create(
      name: 'Steve Jobs',
      email: 'sjobs@apple.com',
      password: 'iheartUX',
      password_confirmation: 'iheartUX'
      )
      expect(@user).to be_valid
  end

  it 'should error if an email already exists' do
    @user = User.create(
      name: 'Steve Jobs',
      email: 'sjobs@apple.com',
      password: 'iheartUX',
      password_confirmation: 'iheartUX'
      )

    @user.save

    @user = User.create(
      name: 'Steve Juabs',
      email: 'sjobs@apple.com',
      password: 'iheartUI',
      password_confirmation: 'iheartUI'
      )
    @user.save
    expect(@user.errors.full_messages).to include("Email has already been taken")

  end

  it 'should create a user when all fields are entered correctly' do 
    @user = User.create(
      name: 'Larry Bird',
      email: 'birdman@nba.com',
      password: 'bball',
      password_confirmation: 'bball'
    )
    @user.save
    expect(@user.name).to include("Larry Bird")
  end

  it 'should error if passwords do not match' do 
    @user = User.create(
      name: 'Larry Bird',
      email: 'birdman@nba.com',
      password: 'bball',
      password_confirmation: 'bal'
    )
    @user.save
    expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
  end


end
