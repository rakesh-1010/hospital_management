class CreatePhysicians < ActiveRecord::Migration[5.1]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :medical_license_id

      t.timestamps
    end
  end
end
