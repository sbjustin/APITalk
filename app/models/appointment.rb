class Appointment < ActiveRecord::Base
  belongs_to :patient
  has_one :office

  attr_accessible :date_time, :patient_id, :office_id
end
