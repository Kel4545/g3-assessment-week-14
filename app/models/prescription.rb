class Prescription < ActiveRecord::Base
belongs_to :medication
belongs_to :user

validates :dosage, presence: true
validates :schedule, presence: true
validates :starts_on, presence: true
validates :ends_on, presence: true
end