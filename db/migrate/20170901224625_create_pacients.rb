class CreatePacients < ActiveRecord::Migration[5.1]
  def change
    create_table :pacients do |t|
      t.string :name
      t.string :lastname
      t.string :din
      t.string :email

      t.timestamps
    end
  end
end
