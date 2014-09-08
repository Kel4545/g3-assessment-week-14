class Prescription < ActiveRecord::Base
belongs_to :medication
belongs_to :patient 

validates :dosage, presence: true
validates :schedule, presence: true
validates :starts_on, presence: true
validates :ends_on, presence: true

def medication_name(id)
  Medication.find(id).name
end
end