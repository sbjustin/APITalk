class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.integer :office_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
