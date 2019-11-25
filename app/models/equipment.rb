class Equipment < ApplicationRecord

  CATEGORY = ['Ski', 'Chaussures de ski', 'Batons de ski', 'Snowboard', 'Boots']

  belongs_to :owner
  has_many :bookings

end
