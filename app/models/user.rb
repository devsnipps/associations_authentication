class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_secure_password

  has_many :emergencies, class_name: 'Emergency'
  has_many :friends, class_name: 'Friend'
end
