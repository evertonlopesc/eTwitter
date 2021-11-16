require 'rails_helper'

RSpec.describe Post, type: :model do
  context "when create a new post" do
    it 'is valid' do
      post = build(:post)

      expect(post).to be_valid
    end

    it 'cannot save with title and empty body.' do
      post = build(:post)
      post.title = ''
      post.body = ''

      expect(post).not_to be_valid
    end
  end
end
