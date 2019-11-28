class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :equipment

  validates :starting_date, presence: true
  validates :ending_date, presence: true

  validates_with DatesValidator
end
