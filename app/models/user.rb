class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :mail, uniqueness: true, presence: true
end
