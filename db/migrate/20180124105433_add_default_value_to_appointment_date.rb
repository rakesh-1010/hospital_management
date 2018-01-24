class AddDefaultValueToAppointmentDate < ActiveRecord::Migration[5.1]
  def change
    change_column :appointments, :appointment_date, :datetime, default: Time.now
  end
end
