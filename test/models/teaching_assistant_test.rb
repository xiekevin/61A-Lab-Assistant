# == Schema Information
#
# Table name: teaching_assistants
#
#  id                     :integer          not null, primary key
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)
#  encrypted_password     :string(255)
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  confirmation_token     :string(255)
#  unlock_token           :string(255)
#  first_name             :string(255)
#  last_name              :string(255)
#

require 'test_helper'

class TeachingAssistantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
