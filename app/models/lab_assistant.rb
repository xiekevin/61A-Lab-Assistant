# == Schema Information
#
# Table name: lab_assistants
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#  teaching_assistant_id :integer
#  first_name            :string(255)
#  last_name             :string(255)
#  email                 :string(255)
#

class LabAssistant < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable, :trackable
  belongs_to :teaching_assistant

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true
end
