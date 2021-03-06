# == Schema Information
#
# Table name: check_in_forms
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  SID                :string(255)
#  event              :integer
#  created_at         :datetime
#  updated_at         :datetime
#  teaching_assistant :string(255)
#

class CheckInForm < ActiveRecord::Base
  enum event: [ :lab, :office_hours, :guerilla_section, :hw_project_party ]

  validates :name, presence: true
  validates :SID, presence: true
  validates :event, presence: true

end
	
