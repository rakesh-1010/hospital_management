class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
  validates :name, :mobilenumber, presence: true
end
