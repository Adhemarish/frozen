class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :equipment

  validates :starting_date, presence:true
  validates :starting_date, presence:true


end
