class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :lastname
      t.string :area
      t.string :email
      t.string :profesional_id

      t.timestamps
    end
  end
end
