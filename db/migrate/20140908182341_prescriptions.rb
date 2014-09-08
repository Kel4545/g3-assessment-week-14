class Prescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
    t.string :dosage
    t.string :schedule
    t.datetime :starts_on
    t.datetime :ends_on
    t.string :prescribed_by
    t.string :patient_id
    t.string :medication_id
  end
  end
end