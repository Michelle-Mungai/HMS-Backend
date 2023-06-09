class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :phone_number
      t.string :medical_specialties
      t.integer :medical_license_number
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
