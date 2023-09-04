class Instructor < ApplicationRecord
  has_many :classes
  validates :name, :bio, :years_experience, :certifications, :area_of_expertise, :image, presence: true
  has_one_attached :photo
end
