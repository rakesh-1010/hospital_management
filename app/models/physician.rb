class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  validates :name, :medical_license_id, presence: true
end
