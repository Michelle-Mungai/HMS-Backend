class AddContactInformationToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :contact_information, :string
  end
end
