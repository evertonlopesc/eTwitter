class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :followers, foreign_key: "followed_id", class_name: "Relationship" 
  has_many :following, foreign_key: "follower_id", class_name: "Relationship" 
  has_many :notifications, dependent: :destroy

  validates :username, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :search_for, ->(name) { where("lower(username) like '%#{name}%'") }
end
