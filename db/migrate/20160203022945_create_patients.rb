class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.string :address
      t.string :phone_number
      t.string :emergency_contact

      t.timestamps
    end
  end
end
