require "open-uri"

Workout.destroy_all

file = URI.open('')
workout_one = Workout.new(
  name: "Ashtanga Yoga",
  category: "Mobility",
  subcategory: "Yoga",
  description: "Unwind after a long day with a soothing Ashtanga Yoga class designed to relax and destress.",
  address: "Rua de Conde",
  image: "",
  available_class_times: "20",
  duration: 1,
  contact: "916337934",
  instructor_id: ""
)
workout_one.photo.attach(io: file, filename:"yoga.jpg", content_type:"image/png")
workout_one.save
