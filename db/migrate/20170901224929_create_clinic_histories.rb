class CreateClinicHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :clinic_histories do |t|
      t.string :doctor_name
      t.string :clinic_name
      t.string :age_paciente
      t.string :diagnosis

      t.timestamps
    end
  end
end
