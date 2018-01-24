class ChangeMobileNumberInPatient < ActiveRecord::Migration[5.1]
  def change
    change_column :patients, :mobilenumber, :string
  end
end
