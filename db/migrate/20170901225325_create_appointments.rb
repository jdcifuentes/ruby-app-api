class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :doctor_name
      t.string :pacient_name
      t.string :date
      t.string :time
      t.string :clinic_name

      t.timestamps
    end
  end
end
