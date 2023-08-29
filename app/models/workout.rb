class Workout < ApplicationRecord
  belongs_to :instructor
  has_one_attached :photo
end
