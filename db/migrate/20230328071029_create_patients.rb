class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.datetime :date_of_birth
      t.text :contact_information
      
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
