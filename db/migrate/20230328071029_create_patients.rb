class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :username
      t.string :email
      t.text :password_digest
      t.datetime :date_of_birth
      t.text :contact_information

      t.timestamps
    end
  end
end
