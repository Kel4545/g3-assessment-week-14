class Medication < ActiveRecord::Base
belongs_to :patient

validates :medication, presence: true
validates :dosage, presence: true
validates :schedule, presence: true
validates :starts_on, presence: true
validates :ends_on, presence: true

end