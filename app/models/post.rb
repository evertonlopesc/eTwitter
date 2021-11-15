class Post < ApplicationRecord
  belongs_to :user

  scope :users, ->(id) { where( user_id: id ) }
end
