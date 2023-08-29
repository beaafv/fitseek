require "open-uri"

Workout.destroy_all
Instructor.destroy_all

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


instructor2 = Instructor.create(
  name: "manuel",
  bio: "jnnewqhfew",
  years_experience: "10",
  certifications: "very",
  area_of_expertise: "gyms",
  image: "jkkjk"
)

file2 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693309450/pkg4cpxcc0amlzhmhlyy.jpg')
workout_two = Workout.new(
  name: "Ashtanga Yoga",
  category: "Cardio",
  subcategory: "Yoga",
  description: "Unwind after a long day with a soothing Ashtanga Yoga class designed to relax and destress.",
  address: "Rua de Conde",
  image: "hkkhk",
  available_class_times: "20",
  duration: 1,
  contact: "916337934",
  instructor: instructor2
)
workout_two.photo.attach(io: file2, filename: "yoga.jpg", content_type: "image/png")
workout_two.save!



instructor3 = Instructor.create(
  name: "Kenneth",
  bio: "jnnewqhfew",
  years_experience: "10",
  certifications: "very",
  area_of_expertise: "gyms",
  image: "jkkjk"
)


file3 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693309450/pkg4cpxcc0amlzhmhlyy.jpg')
workout_three = Workout.new(
  name: "Ashtanga Yoga",
  category: "Strenght",
  subcategory: "Yoga",
  description: "Unwind after a long day with a soothing Ashtanga Yoga class designed to relax and destress.",
  address: "Rua de Conde",
  image: "hkkhk",
  available_class_times: "20",
  duration: 1,
  contact: "916337934",
  instructor: instructor3
)
workout_three.photo.attach(io: file3, filename: "yoga.jpg", content_type: "image/png")
workout_three.save!




instructor4 = Instructor.create(
  name: "Alfredo",
  bio: "jnnewqhfew",
  years_experience: "10",
  certifications: "very",
  area_of_expertise: "gyms",
  image: "jkkjk"
)


file4 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693309450/pkg4cpxcc0amlzhmhlyy.jpg')
workout_four = Workout.new(
  name: "Ashtanga Yoga",
  category: "Outdoors",
  subcategory: "Yoga",
  description: "Unwind after a long day with a soothing Ashtanga Yoga class designed to relax and destress.",
  address: "Rua de Conde",
  image: "hkkhk",
  available_class_times: "20",
  duration: 1,
  contact: "916337934",
  instructor: instructor1
)
workout_four.photo.attach(io: file4, filename: "yoga.jpg", content_type: "image/png")
workout_four.save!
