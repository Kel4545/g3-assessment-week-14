class Medications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
    end
  end
end

#Not sure if this table is right? 