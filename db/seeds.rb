require "open-uri"

Instructor.destroy_all
Workout.destroy_all

instructor1 = Instructor.create(
  name: "José",
  bio: "jnnewqhfew",
  years_experience: "10",
  certifications: "very",
  area_of_expertise: "gyms",
  image: "jkkjk"
)

file = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693309450/pkg4cpxcc0amlzhmhlyy.jpg')
workout_one = Workout.new(
  name: "Ashtanga Yoga",
  category: "Mobility",
  subcategory: "Yoga",
  description: "Unwind after a long day with a soothing Ashtanga Yoga class designed to relax and destress.",
  address: "Rua de Conde",
  image: "hkkhk",
  available_class_times: "20",
  duration: 1,
  contact: "916337934",
  instructor: instructor1
)
workout_one.photo.attach(io: file, filename: "yoga.jpg", content_type: "image/png")
workout_one.save!
