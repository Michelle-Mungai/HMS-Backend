class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.text :reason
      t.text :diagnosis
      t.text :prescription

      t.timestamps
    end
  end
end
