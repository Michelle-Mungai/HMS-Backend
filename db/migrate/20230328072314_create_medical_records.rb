class CreateMedicalRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_records do |t|
      t.belongs_to :patient, null: false, foreign_key: true
      t.text :medical_history
      t.text :diagnoses
      t.text :treatment

      t.timestamps
    end
  end
end
