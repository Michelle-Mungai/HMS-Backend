class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.string   :reason_for_visit


      t.timestamps
    end
  end
end
