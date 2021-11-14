class Post < ApplicationRecord
  belongs_to :user

  scope :search_for, ->(name) { joins(:user).where("lower(users.username) like '#{name}%'") }
end
