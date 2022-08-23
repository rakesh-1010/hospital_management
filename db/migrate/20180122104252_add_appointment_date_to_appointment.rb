class AddAppointmentDateToAppointment < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :appointment_date, :datetime
  end
end
