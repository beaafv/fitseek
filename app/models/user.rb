class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :workouts, through: :bookings
  has_one_attached :photo
  validates :first_name, :last_name, :bio, :birthdate, :favourite_activities, :image, presence: true
end
