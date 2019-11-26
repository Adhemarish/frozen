class Equipment < ApplicationRecord

  mount_uploader :picture, PhotoUploader

  CATEGORY = ['Ski', 'Chaussures de ski', 'Batons de ski', 'Snowboard', 'Boots']

  belongs_to :owner, class_name: 'User'
  has_many :bookings

  validates :title, presence: true
  validates :details, presence: true, length: { minimum: 10 }
  validates :material_category, presence: true, inclusion: { in: CATEGORY }
  validates :location, presence: true
  validates :picture, presence: true
  validates :price_per_day, presence: true
end
