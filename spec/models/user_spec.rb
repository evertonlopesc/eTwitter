require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = build(:user)
  end

  context 'when save' do
    it 'with username is valid' do
      expect(@user).to be_valid
    end

    it 'without username is not valid' do
      @user.username = ''

      expect(@user).not_to be_valid
    end

    it 'password with less than six digits is not valid' do
      @user.password = '1g23h'

      expect(@user).not_to be_valid
    end
  end

  context 'when save duplicate' do
    it 'with username is invalid' do
      @user = create(:user)
      user = build(:user, username: 'Tarzan')

      expect(user).not_to be_valid
      expect(user.errors[:username]).to include("já está em uso")
    end
  end
end
