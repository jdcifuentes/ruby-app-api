class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.string :pacient_name
      t.string :profesional_name
      t.string :observation
      t.string :instructions

      t.timestamps
    end
  end
end
