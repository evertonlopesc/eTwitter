class Post < ApplicationRecord
  belongs_to :user

  validates :title, :body, presence: true

  scope :users, ->(id) { where( user_id: id ) }
end
