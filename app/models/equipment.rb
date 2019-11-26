class Equipment < ApplicationRecord

  CATEGORY = ['Ski', 'Chaussures de ski', 'Batons de ski', 'Snowboard', 'Boots']

  belongs_to :owner, class_name: 'User'
  has_many :bookings
end
