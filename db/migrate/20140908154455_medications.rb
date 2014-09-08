class Medications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :dosage
      t.string :schedule
      t.datetime :starts_on
      t.datetime :ends_on
      t.string :prescribed_by
      t.string :patient_id
    end
  end
end

#Not sure if this table is right? 