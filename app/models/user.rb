class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, PhotoUploader
  has_many :equipment
  has_many :owner_bookings, through: :equipment, source: :bookings

  has_many :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :avatar, presence: true
end

# current_user.equipment
# current_user.owner_bookings

# current_user.bookings
