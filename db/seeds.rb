require "open-uri"

Workout.destroy_all
Instructor.destroy_all

User.destroy_all

user1 = User.create(
  email: "ahah@gmail",
  password: "123456",
  first_name: "Miguel",
  last_name: "Figueiredo",
  bio: "Really cool",
  birthdate: "20/01/2020",
  favourite_activities: "surfing",
  image: "https://images.unsplash.com/photo-1495360010541-f48722b34f7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2F0fGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60"
)

user1.save!



instructor1 = Instructor.create(
  name: "José",
  bio: "jnnewqhfew",
  years_experience: "10",
  certifications: "very",
  area_of_expertise: "gyms",
  image: "jkkjk"
)


file = URI.open('https://res.cloudinary.com/dxt5xabdb/image/upload/v1693325804/mobility.jpg')
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

file2 = URI.open('https://res.cloudinary.com/dxt5xabdb/image/upload/v1693326647/cardio.jpg')
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


file3 = URI.open('https://res.cloudinary.com/dxt5xabdb/image/upload/v1693325784/outdoors.jpg')
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


file4 = URI.open('https://res.cloudinary.com/dxt5xabdb/image/upload/v1693325791/outdoors1.jpg')
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
