class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient

  validates :appointment_date, :patient_id, :physician_id,  presence: true
  validate :appointment_date_cannot_be_in_past

  private

  def appointment_date_cannot_be_in_past
    if self.appointment_date.present? && self.appointment_date < Date.today
      self.errors.add(:appointment_date,"can't be in past")
    end
  end
end
