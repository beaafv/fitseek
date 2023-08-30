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
  image: "https://res.cloudinary.com/dxt5xabdb/image/upload/v1693325490/samples/man-portrait.jpg"
)

user1.save!

instructor1 = Instructor.create(
  name: "José",
  bio: "jnnewqhfew",
  years_experience: "10h",
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
  address: "The Light Centre Monument, 36 St Mary at Hill, London EC3R 8DU, United Kingdom",
  image: "hkkhk",
  available_class_times: "19h",
  duration: 1,
  contact: "916337934",
  instructor: instructor1
)
workout_one.photo.attach(io: file, filename: "yoga.jpg", content_type: "image/png")
workout_one.save!

instructor2 = Instructor.create(
  name: "Manuel",
  bio: "jnnewqhfew",
  years_experience: "10",
  certifications: "very",
  area_of_expertise: "gyms",
  image: "jkkjk"
)

file2 = URI.open('https://res.cloudinary.com/dxt5xabdb/image/upload/v1693326647/cardio.jpg')
workout_two = Workout.new(
  name: "Soul Cycle",
  category: "Cardio",
  subcategory: "Spin",
  description: "SoulCycle is more than just a workout. It’s a sanctuary. We ride together as a pack in candlelit studios to the rhythm of one-of-a-kind playlists. We’re coached by legendary instructors who motivate and challenge us. With more than 60 studios, our inspiring indoor cycling class is available across the U.S. and the UK. Riders come to us to experience breakthroughs and unlock their full potential—on and off the bike. Let’s get you ready for class!",
  address: "3-4 Great Marlborough St, London W1F 7HH, United Kingdom",
  image: "x",
  available_class_times: "20h",
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
  name: "Rumble Boxing",
  category: "Strength",
  subcategory: "Boxing",
  description: "Rumble is group fitness for the individual, and we believe that working out should be fun and effective. Rumble Boxing is an all-level, 45-minute boxing and strength training workout powered by a mega-watt sound system and custom playlists available only at Rumble. 10 rounds, 2 fists, 0 experience necessary.",
  address: "16 Eccleston YardsEccleston Place, London SW1W 9NF, London, SW1W 9NF",
  image: "x",
  available_class_times: "10h",
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
  name: "Rockclimbing",
  category: "Outdoors",
  subcategory: "Rocklimbing",
  description: "At City Bouldering we are passionate about climbing and making sure you, our customer, have fun. We are committed to building a community where everyone can enjoy climbing, regardless of background and skill level! We have additional social nights, courses and programs to help you start or to develop what you already have. Come climb with us and join the City Bouldering community!",
  address: "33 Aldgate High Street, London, EC3N 1AH",
  image: "x",
  available_class_times: "14",
  duration: 1,
  contact: "916337934",
  instructor: instructor4
)
workout_four.photo.attach(io: file4, filename: "yoga.jpg", content_type: "image/png")
workout_four.save!
