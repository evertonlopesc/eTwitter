class Notification < ApplicationRecord
  belongs_to :relationship
  belongs_to :user
end
