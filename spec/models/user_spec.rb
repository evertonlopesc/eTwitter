require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = build(:user)
  end

  context 'when save new user' do
    it 'with username' do
      expect(@user).to be_valid
    end

    it 'without username' do
      @user.username = ''

      expect(@user).not_to be_valid
    end

    it 'without password' do
      @user.password = ''

      expect(@user).not_to be_valid
    end

    it 'password with less than six digits' do
      @user.password = '1g23h'

      expect(@user).not_to be_valid
    end

    it 'username not save duplicate' do
      @user.username = 'Tarzan'
      user = create(:user)
      user.username = 'Tarzan'

      expect(user.errors[:username]).to include("has already been taken")
    end
  end
end
