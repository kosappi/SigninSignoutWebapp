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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
