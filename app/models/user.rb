# == Schema Information
#
# Table name: users
#
#  id                       :integer          not null, primary key
#  name                     :string
#  mail                     :string
#  password_digest          :string           not null
#  encrypted_remember_token :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :mail, uniqueness: true, presence: true
  validates :encrypted_remember_token, uniqueness: true
  before_create :save_new_remember_token

  class << self
    def create_remember_token
      SecureRandom.urlsafe_base64
    end

    def encrypt(token)
      Digest::SHA256.hexdigest(token.to_s)
    end
  end

  private
  def save_new_remember_token
    self.encrypted_remember_token = User.encrypt(User.create_remember_token)
  end
end
