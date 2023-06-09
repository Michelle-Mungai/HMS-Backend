class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.text :password_digest, null: false
      t.string :image_url
      t.text :bio
      t.integer :options, null: false, default: 1

      t.timestamps
    end
  end
end
