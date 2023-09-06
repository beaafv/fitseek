require "open-uri"
puts "working to destroy"
Booking.destroy_all
Workout.destroy_all
Instructor.destroy_all
User.destroy_all

puts "destroyed previous entries"
pic1 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693751396/tgpks3ak5x3dn74834zm.jpg')
user1 = User.create(
  email: "ahah@gmail",
  password: "123456",
  first_name: "Miguel",
  last_name: "Figueiredo",
  bio: "Really cool",
  birthdate: "20/01/2020",
  favourite_activities: "Outdoors"
)
user1.photo.attach(io: pic1, filename: "miguel.jpg", content_type: "image/png")
user1.save!

pic2 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693990046/IMG_7870_mxrenk.jpg')
user2 = User.create(
  email: "maariyaah@gmail.com",
  password: "123456",
  first_name: "Maariyaah",
  last_name: "Afzal",
  bio: "FitSeek is my life",
  birthdate: "20/01/2020",
  favourite_activities: "Mobility"

)
user2.photo.attach(io: pic2, filename: "maria.jpg", content_type: "image/png")
user2.save!

puts "creating instructor"
file1a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693837769/Jos%C3%A9%20-%20Instructor%201.jpg')
instructor1 = Instructor.create(
  name: "José",
  bio: "José is a running and fitness expert and adventurepreneur who inspires every day mortals to run their best lives.",
  years_experience: "10",
  certifications: "Bachelor’s Degree in Education and Health Promotion and a Master’s Degree in Exercise Science",
  area_of_expertise: "Ashtanga Yoga",
  image: "jkkjk"
)
instructor1.photo.attach(io: file1a, filename: "yoga.jpg", content_type: "image/png")
instructor1.save!

puts "creating workout"
file = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693569015/612fe5fa9ef1e50018f94959_vtgnzs.jpg')
workout_one = Workout.new(
  name: "Ashtanga Yoga",
  category: "Mobility",
  subcategory: "Yoga",
  description: "Unwind after a long day with a soothing Ashtanga Yoga class designed to relax and destress.",
  address: "36 St Mary at Hill, London EC3R 8DU, United Kingdom",
  image: "hkkhk",
  available_class_times: "19",
  duration: 1,
  contact: "916337934",
  instructor: instructor1,
  cost: 200
)
workout_one.photo.attach(io: file, filename: "yoga.jpg", content_type: "image/png")
workout_one.save!
puts "creating instructor no 2"
file2a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693837952/Manuel%20Instructor%202.jpg')
instructor2 = Instructor.create(
  name: "Manuel",
  bio: "I have been coaching since studying Exercise Physiology at university and love using my knowledge of sports science to help my athletes’ achieve their goals.",
  years_experience: "10",
  certifications: "Master in Exercise Physiology",
  area_of_expertise: "gyms",
  image: "jkkjk"
)
instructor2.photo.attach(io: file2a, filename: "yoga.jpg", content_type: "image/png")
instructor2.save!

puts "creating workout 2"
file2 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693568788/men-women-biking-gym-exercising-legs-doing-cardio-workout-cycling-bikes-spinning-health-club-wearing-tracksuit-sportive-outfit_183219-5220_mkniic.jpg')
workout_two = Workout.new(
  name: "Soul Cycle",
  category: "Cardio",
  subcategory: "Spin",
  description: "SoulCycle is more than just a workout. It’s a sanctuary. We ride together as a pack in candlelit studios to the rhythm of one-of-a-kind playlists. We’re coached by legendary instructors who motivate and challenge us. With more than 60 studios, our inspiring indoor cycling class is available across the U.S. and the UK. Riders come to us to experience breakthroughs and unlock their full potential—on and off the bike. Let’s get you ready for class!",
  address: "3-4 Great Marlborough St, London W1F 7HH, United Kingdom",
  image: "x",
  available_class_times: "20",
  duration: 1,
  contact: "916337934",
  instructor: instructor2,
  cost: 200
)
workout_two.photo.attach(io: file2, filename: "yoga.jpg", content_type: "image/png")
workout_two.save!


puts "creating instructor3"
file3a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693838039/Kenneth%20Instructor%203.jpg')
instructor3 = Instructor.create(
  name: "Kenneth",
  bio: "Kenneth has over 35 years of experience coaching boxers of all ability levels.",
  years_experience: "10",
  certifications: "BS in Biology, MS in Exercise Physiology",
  area_of_expertise: "Boxing and Pilates",
  image: "jkkjk"
)
instructor3.photo.attach(io: file3a, filename: "yoga.jpg", content_type: "image/png")
instructor3.save!

puts "creating workout 3"

file3 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693568596/IMG_3269_bn1r7r.jpg')
workout_three = Workout.new(
  name: "Rumble Boxing",
  category: "Strength",
  subcategory: "Boxing",
  description: "Rumble is group fitness for the individual, and we believe that working out should be fun and effective. Rumble Boxing is an all-level, 45-minute boxing and strength training workout powered by a mega-watt sound system and custom playlists available only at Rumble. 10 rounds, 2 fists, 0 experience necessary.",
  address: "16 Eccleston Yards, Eccleston Place, London SW1W 9NF, London, SW1W 9NF",
  image: "x",
  available_class_times: "10",
  duration: 1,
  contact: "916337934",
  instructor: instructor3,
  cost: 200
)
workout_three.photo.attach(io: file3, filename: "yoga.jpg", content_type: "image/png")
workout_three.save!

file4a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693567657/IMG_5876_kbhwiv.jpg')
instructor4 = Instructor.create(
  name: "Miguel",
  bio: "I believe scary goals can become achievable goals through consistency and smart training. You do not have to sacrifice your entire life to be a successful climber. I celebrate my achievements on rooftops with a bottle of wine.",
  years_experience: "10",
  certifications: "B.S. Biology, UESCA",
  area_of_expertise: "Rock climbing, Bouldering",
  image: "jkkjk"
)
instructor4.photo.attach(io: file4a, filename: "yoga.jpg", content_type: "image/png")
instructor4.save!

file4 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693568210/IMG_5876_ogfhd4.jpg')
workout_four = Workout.new(
  name: "Rockclimbing",
  category: "Outdoors",
  subcategory: "Rock climbing",
  description: "At City Bouldering we are passionate about climbing and making sure you, our customer, have fun. We are committed to building a community where everyone can enjoy climbing, regardless of background and skill level! We have additional social nights, courses and programs to help you start or to develop what you already have. Come climb with us and join the City Bouldering community!",
  address: "33 Aldgate High Street, London, EC3N 1AH",
  image: "x",
  available_class_times: "14",
  duration: 1,
  contact: "916337934",
  instructor: instructor4,
  cost: 200
)
workout_four.photo.attach(io: file4, filename: "yoga.jpg", content_type: "image/png")
workout_four.save!

file5a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693837603/Megan%20Instructor%205.jpg')
instructor5 = Instructor.create(
  name: "Megan",
  bio: "Megan is a passionate yoga instructor who has been teaching for the past 5 years. Her classes are a combination of Hatha and Yin styles and may include elements of meditation and chanting. Megan is known for her attention to detail and her ability to make yoga accessible to beginners.",
  years_experience: "8",
  certifications: "200 HR Yoga Certfication",
  area_of_expertise: "Yoga",
  image: "jkkjk"
)
instructor5.photo.attach(io: file5a, filename: "yoga.jpg", content_type: "image/png")
instructor5.save!

file5 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693474667/r4gf4psyydaahazqqrjq_fjba6t.jpg')
workout_five = Workout.new(
  name: "Yoga",
  category: "Mobility",
  subcategory: "Yoga",
  description: "Switch off, tune in and find your flow in this popular Vinyasa practice, focusing on syncing breath to movement in a flow designed to build heat, endurance, flexibility and strength. ",
  address: "7 Chivers Passage, Ram Quarter, Wandsworth, London, SW18 1UP",
  image: "x",
  available_class_times: "19",
  duration: 1,
  contact: "808175556",
  instructor: instructor5,
  cost: 200
)
workout_five.photo.attach(io: file5, filename: "yoga.jpg", content_type: "image/png")
workout_five.save!

puts "5 instructors and workouts created"

file6a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693838235/Michele%20Instructor%206.jpg')
instructor6 = Instructor.create(
  name: "Michele",
  bio: "Michele is a 2x Olympic Trials qualifier in the marathon and a 4x USATF National Champion in the mountain and ultra trail events also representing the US at the World and NACAC Championships multiple times and distances.",
  years_experience: "18",
  certifications: "Michele graduated from the University of Nevada Las Vegas in May of 2005 where she earned a degree in Kinesiological Sciences with a concentration in fitness management.",
  area_of_expertise: "Running",
  image: "jkkjk"
)
instructor6.photo.attach(io: file6a, filename: "yoga.jpg", content_type: "image/png")
instructor6.save!

file6 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693475925/xcjtgcvw69mngsiafalq_dtloo4.jpg')
workout_six = Workout.new(
  name: "Onetrack - Orchard Place",
  category: "Cardio",
  subcategory: "Running",
  description: "The session lasts for 1 hour and is designed as an easy run to suit all levels of runners. After meeting, a coach will guide you through a warm-up and running drills.",
  address: "8 Orchard Place, London, SW1H 0BF",
  image: "x",
  available_class_times: "17",
  duration: 1,
  contact: "807175556",
  instructor: instructor6,
  cost: 200
)
workout_six.photo.attach(io: file6, filename: "yoga.jpg", content_type: "image/png")
workout_six.save!

file7a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693838660/Sean%20Instructor%207.jpg')
instructor7 = Instructor.create(
  name: "Sean",
  bio: "Sean has received his education in the Advanced Personal Training program at the Swedish Institute of Health Sciences and is a New York State Licensed Massage Therapist with over 17 years of experience. ",
  years_experience: "17",
  certifications: "Certified Fitness and Youth Fitness Trainer with ISSA (International Sports Sciences Association).",
  area_of_expertise: "Strength",
  image: "jkkjk"
)
instructor7.photo.attach(io: file7a, filename: "yoga.jpg", content_type: "image/png")
instructor7.save!

file7 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693477091/aqabawbbm9dvauieuhzr_p0xglw.jpg')
workout_seven = Workout.new(
  name: "F45 Training",
  category: "Strength",
  subcategory: "Group workouts",
  description: "F45 Training is a revolutionary fitness program that combines cutting-edge technology with high-intensity group workouts to deliver maximum results. ",
  address: "2a Little Portland St, London, W1W 7JA",
  image: "x",
  available_class_times: "18",
  duration: 1,
  contact: "897175444",
  instructor: instructor7,
  cost: 200
)
workout_seven.photo.attach(io: file7, filename: "yoga.jpg", content_type: "image/png")
workout_seven.save!


file8a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693838768/Scott%20Instructor%208.jpg')
instructor8 = Instructor.create(
  name: "Scott",
  bio: "Scott is an accomplished strength, performance and conditioning coach, as well as a former elite cyclist who competed across Europe.",
  years_experience: "17",
  certifications: "EXOS - Performance Coach, CFSC - Certified Functional Strength Coach",
  area_of_expertise: "Strength & Conditioning",
  image: "jkkjk"
)
instructor8.photo.attach(io: file8a, filename: "yoga.jpg", content_type: "image/png")
instructor8.save!

file8 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693478018/xiosc0e2pkl87uumzssd_ztbdt3.jpg')
workout_eight = Workout.new(
  name: "POWER at Be Military Fit",
  category: "Outdoors",
  subcategory: "Group workouts",
  description: "Power combines strength training, plyometric movements, and endurance conditioning to create the ultimate workout. ",
  address: "St. James's Park, London SW1A 2BJ",
  image: "x",
  available_class_times: "17",
  duration: 1,
  contact: "877156444",
  instructor: instructor8,
  cost: 200
)
workout_eight.photo.attach(io: file8, filename: "yoga.jpg", content_type: "image/png")
workout_eight.save!

file9a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693838342/Andreea%20instructor%209.jpg')
instructor9 = Instructor.create(
  name: "Andreea",
  bio: "In her career, Andreea has assisted a wide range of clients in achieving everything from simple improvements in health to becoming the strongest, fittest version of themselves. Besides coaching, she used her knowledge and skills to win multiple medals in female bodybuilding and powerlifting competitions.",
  years_experience: "4",
  certifications: "Level 3 Personal Trainer with a BSc in Nutrition and Dietetics, a qualification in pre and post natal training and over 4 years experience in 1 to 1 personal training sessions.",
  area_of_expertise: "Mobility & Conditioning",
  image: "jkkjk"
)
instructor9.photo.attach(io: file9a, filename: "yoga.jpg", content_type: "image/png")
instructor9.save!

file9 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693479314/mobility-1_iay8qn.jpg')
workout_nine = Workout.new(
  name: "Mobility at Fitness Lab",
  category: "Mobility",
  subcategory: "Group workouts",
  description: "While being flexible is great, our focus as personal trainers is to improve your mobility. We want a good range of motion in each joint, as well as the ability to master control of your body.",
  address: "9-12 St Anne’s Court W1F 0BB London",
  image: "x",
  available_class_times: "21",
  duration: 1,
  contact: "809156454",
  instructor: instructor9,
  cost: 200
)
workout_nine.photo.attach(io: file9, filename: "yoga.jpg", content_type: "image/png")
workout_nine.save!

file10a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693838424/Traci%20Instructor%2010.jpg')
instructor10 = Instructor.create(
  name: "Traci",
  bio: "Traci was hooked after taking her first Spin class. Her love of this challenging workout led her to become an indoor cycling instructor and to eventually open her own studio. Traci's goal is to create an upbeat environment with a friendly staff that encourages positive thinking and positive results.",
  years_experience: "4",
  certifications: "Traci is certified in indoor cycling by Madd Dog Athletics and by Keiser.",
  area_of_expertise: "Cardio, Cycling",
  image: "jkkjk"
)
instructor10.photo.attach(io: file10a, filename: "yoga.jpg", content_type: "image/png")
instructor10.save!

file10 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693480796/SETTING_UP_vuzdcf.webp')
workout_ten = Workout.new(
  name: "SoulCycle Session",
  category: "Cardio",
  subcategory: "Group workouts",
  description: "Each SoulCycle class is like a party on a bike, with high-intensity interval cardio and focused toning. The flow is designed to raise your heart rate and your metabolic rate, for a healthier, stronger you.",
  address: "3-4 Great Marlborough St, London W1F 7HH",
  image: "x",
  available_class_times: "19",
  duration: 1,
  contact: "819156754",
  instructor: instructor10,
  cost: 200
)
workout_ten.photo.attach(io: file10, filename: "yoga.jpg", content_type: "image/png")
workout_ten.save!

puts "10 instructors and workouts created- woohoo halfway there"

file11a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693838910/Matt%20instructor%2011.jpg')
instructor11 = Instructor.create(
  name: "Matt",
  bio: "Matt previously worked at London Pierce College where he was responsible for the athletic development of 12 teams as the Head Strength and Conditioning Coach.",
  years_experience: "21",
  certifications: "Matt is a Certified Strength and Conditioning Specialist with the National Strength and Conditioning Association (NCSA).",
  area_of_expertise: "Strength and Conditioning",
  image: "jkkjk"
)
instructor11.photo.attach(io: file11a, filename: "yoga.jpg", content_type: "image/png")
instructor11.save!

file11 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693481637/sa7yekhimgthwosryqhq_ww0gza.jpg')
workout_eleven = Workout.new(
  name: "Barry's",
  category: "Strength",
  subcategory: "Group workouts",
  description: "Barry’s is a 50 - 60 minute cardio and strength-building workout designed to help your body burn up to 1,000 calories thanks to their carefully crafted program that is as effective as it is fun.",
  address: "16 Eccleston Yards, Eccleston Place, London SW1W 9NF, London, SW1W 9NF",
  image: "x",
  available_class_times: "15",
  duration: 1,
  contact: "824156754",
  instructor: instructor11,
  cost: 200
)
workout_eleven.photo.attach(io: file11, filename: "yoga.jpg", content_type: "image/png")
workout_eleven.save!

file12a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693839363/Dana%20Instructor%2012.png')
instructor12 = Instructor.create(
  name: "Dana",
  bio: "Dana has been a BC coach since 2005. She started as a whitewater kayaker and only got convinced to try SUP in 2018. She hasn’t done much kayaking since…",
  years_experience: "18",
  certifications: "Certified SUP Specialist with the National SUP Association.",
  area_of_expertise: "SUP instructor",
  image: "jkkjk"
)
instructor12.photo.attach(io: file12a, filename: "yoga.jpg", content_type: "image/png")
instructor12.save!


file12 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693487746/Gallery_01_ooov4x.jpg')
workout_twelve = Workout.new(
  name: "Paddle Board at Kew Bridge",
  category: "Outdoors",
  subcategory: "Group workouts",
  description: "You can learn paddleboarding skills and how to use the Thames Tideway safely. We run a comprehensive programme at this base throughout the year. ",
  address: "Kew Bridge Arches Strand on the Green London, W4 3NG",
  image: "x",
  available_class_times: "14",
  duration: 1,
  contact: "833356754",
  instructor: instructor12,
  cost: 200
)
workout_twelve.photo.attach(io: file12, filename: "yoga.jpg", content_type: "image/png")
workout_twelve.save!

file13a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693839564/Caoimhe%20Instructor%2013.jpg')
instructor13 = Instructor.create(
  name: "Caoimhe",
  bio: "Caoimhe left behind a career as a City lawyer to set up Digme in 2015, when she was on maternity leave with her first son, Alex. Inspired by the quality of fantastic gym classes in the States, she set about writing a business plan to bring something similar to the UK while on holiday in France. ",
  years_experience: "18",
  certifications: "Certified instructor by Keiser.",
  area_of_expertise: "Running, yoga, mobility",
  image: "jkkjk"
)
instructor13.photo.attach(io: file13a, filename: "yoga.jpg", content_type: "image/png")
instructor13.save!


file13 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693489176/1628773387_Dep8k_Intro-800x500_jghrmn.jpg')
workout_thirteen = Workout.new(
  name: "Digme Barre",
  category: "Mobility",
  subcategory: "Group workouts",
  description: "Simply the best and friendliest fitness studios in the City of London. With all of our CYCLE, HIIT, STRENGTH, YOGA and BARRE sessions, we've got something for you.",
  address: "40 Coleman Street London EC2R 5EH",
  image: "x",
  available_class_times: "14",
  duration: 1,
  contact: "893356731",
  instructor: instructor13,
  cost: 200
)
workout_thirteen.photo.attach(io: file13, filename: "yoga.jpg", content_type: "image/png")
workout_thirteen.save!

file14a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693839775/Juliette%20Instructor%2014.jpg')
instructor14 = Instructor.create(
  name: "Juliette",
  bio: "Juliette has taught a variety of classes, for a broad range of participants, including teaching in Okinawa, Japan.  She teaches Boot Camp, Circuit, Cycle, Step, and Strength & Cardio. ",
  years_experience: "7",
  certifications: "Certified Group Fitness Instructor",
  area_of_expertise: "Circuit, Cycle, Cardio",
  image: "jkkjk"
)
instructor14.photo.attach(io: file14a, filename: "yoga.jpg", content_type: "image/png")
instructor14.save!

file14 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693490361/Spin_2B3_qprgpx.jpg')
workout_fourteen = Workout.new(
  name: "Spin Cycling",
  category: "Cardio",
  subcategory: "Group workouts",
  description: "London Fields Fitness Studio offers a huge variation of drop-in PAYG fitness classes starting from £6 at the door, no strings attached. ",
  address: "379 Mentmore Terrace, London, E8 3PH, UK",
  image: "x",
  available_class_times: "21",
  duration: 1,
  contact: "883355131",
  instructor: instructor14,
  cost: 200
)
workout_fourteen.photo.attach(io: file14, filename: "yoga.jpg", content_type: "image/png")
workout_fourteen.save!

file15a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693839900/Luke%20Instructor%2015.jpg')
instructor15 = Instructor.create(
  name: "Luke",
  bio: "I am quite a relaxed trainer, of course results are the main priority but I don't need to be Mr motivator to get the most out of you. I always make sure we get everything done that's planned for that session and I will always be honest about training and how I think your getting on.  ",
  years_experience: "6",
  certifications: "Certified Booty Instructor",
  area_of_expertise: "Booty strength",
  image: "jkkjk"
)
instructor15.photo.attach(io: file15a, filename: "yoga.jpg", content_type: "image/png")
instructor15.save!


file15 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693491307/unspecified-2_a576r6.jpg')
workout_fifteen = Workout.new(
  name: "Booty Camp",
  category: "Strength",
  subcategory: "Group workouts",
  description: "Our Booty Camp, name checked by Evening Standard as one of the best targeted workouts in London, is a cheeky bums, tums and guns class, great to bring a friend to, great for a laugh. ",
  address: "350 Mentmore Terrace, London, E8 3PH, UK",
  image: "x",
  available_class_times: "17",
  duration: 1,
  contact: "827355131",
  instructor: instructor15,
  cost: 200
)
workout_fifteen.photo.attach(io: file15, filename: "yoga.jpg", content_type: "image/png")
workout_fifteen.save!

file16a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693840039/Brittany%20Instructor%2016.jpg')
instructor16 = Instructor.create(
  name: "Brittany",
  bio: "Brittany is passionate about living without judgment and letting go of expectations. With a background in Clinical Psychology Brittany recognizes the role that yoga has in developing body awareness and enjoys the elements of the practice that aid mental clarity. ",
  years_experience: "9",
  certifications: "Master in Clinical Psychology",
  area_of_expertise: "Vinyasa",
  image: "jkkjk"
)
instructor16.photo.attach(io: file16a, filename: "yoga.jpg", content_type: "image/png")
instructor16.save!

file16 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693492778/cfonkx7ngfqm7hwzsqek_jttrbe.jpg')
workout_sixteen = Workout.new(
  name: "Studio Society",
  category: "Outdoors",
  subcategory: "Group workouts",
  description: "Forget everything you know about fitness studios, the revolution is here. Studio Society is an immersive gym combining sight, sound, smell and innovative classes to bring you the most effective, stimulating and compelling group exercise experience on the market.",
  address: "37 Fortune Green Road, West Hampstead, London, NW6 1DR",
  image: "x",
  available_class_times: "17",
  duration: 1,
  contact: "827355131",
  instructor: instructor16,
  cost: 200
)
workout_sixteen.photo.attach(io: file16, filename: "yoga.jpg", content_type: "image/png")
workout_sixteen.save!

file17a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693840150/Vina%20Instructor%2017.jpg')
instructor17 = Instructor.create(
  name: "Vina",
  bio: "Already holding extensive experience as a personal trainer and Pilates instructor, Vina completed a degree in Sports & Exercise Rehabilitation then qualified as an Athletic Therapist before taking on her Master’s in Osteopathy.",
  years_experience: "6",
  certifications: "Degree in Sports & Exercise Rehabilitation",
  area_of_expertise: "Pilates",
  image: "jkkjk"
)
instructor17.photo.attach(io: file17a, filename: "yoga.jpg", content_type: "image/png")
instructor17.save!


file17 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693493822/Body-Machine-Performance-Studio-Kensington-London-TRX-Workout-Class-Core-Mobility_ryg8pe.jpg')
workout_seventeen = Workout.new(
  name: "Mobility for bad backs",
  category: "Mobility",
  subcategory: "Group workouts",
  description: "At Movement Clinic, we have a world-class team of physical wellness professionals here to help with a range of conditions - from sports injuries right through to the kind of occupational issues that come from sitting at a desk all day.",
  address: "9-12 St Anne’s Court, W1F 0BB, London",
  image: "x",
  available_class_times: "13",
  duration: 1,
  contact: "827355131",
  instructor: instructor17,
  cost: 200
)
workout_seventeen.photo.attach(io: file17, filename: "yoga.jpg", content_type: "image/png")
workout_seventeen.save!

file18a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693840299/Jack%20Instructor%2018.jpg')
instructor18 = Instructor.create(
  name: "Jack",
  bio: "Jack is part of the personal training team and one of the founders at our sister business, Fitness Lab. ",
  years_experience: "12",
  certifications: "UKSCA Accredited Strength and Conditioning Coach, Level 3 Personal Trainer with a degree in Sports Psychology and Coaching Sciences",
  area_of_expertise: "Strength and conditioning",
  image: "jkkjk"
)
instructor18.photo.attach(io: file18a, filename: "yoga.jpg", content_type: "image/png")
instructor18.save!

file18 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693494818/Events_p5tyzw.jpg')
workout_eighteen = Workout.new(
  name: "BOOST CLUB",
  category: "Cardio",
  subcategory: "Group workouts",
  description: "You’ve probably never sweated as fast in a club as you have here. Our Boost Club demands a lot from you – but you’ll get something in return.",
  address: "90 Liverpool Street EC2M 2AT London",
  image: "x",
  available_class_times: "18",
  duration: 1,
  contact: "829355132",
  instructor: instructor18,
  cost: 200
)
workout_eighteen.photo.attach(io: file18, filename: "yoga.jpg", content_type: "image/png")
workout_eighteen.save!

puts "18 done... two more to go...almost there yay"

file19a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693840414/James%20Instructor%2019.jpg')
instructor19 = Instructor.create(
  name: "James",
  bio: "James’ approach to training is founded upon his scientific background, implementing the latest research to achieve efficient, effective and safe results for your benefit.",
  years_experience: "11",
  certifications: "BSc in sports science and MSc in Strength & Conditioning",
  area_of_expertise: "Strength and conditioning",
  image: "jkkjk"
)
instructor19.photo.attach(io: file19a, filename: "yoga.jpg", content_type: "image/png")
instructor19.save!

file19 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693497413/Image-207_8dafad3cdd0d49a5867f11edd61bcc13_bafyge.jpg')
workout_nineteen = Workout.new(
  name: "Climb to the beat",
  category: "Strength",
  subcategory: "Group workouts",
  description: "The high intensity low impact workout! Sweat by BXR has developed the most effective calorie-burning strength and cardiovascular group training sessions in the world.",
  address: "24 PADDINGTON ST MARYLEBONE LONDON W1U 5QY",
  image: "x",
  available_class_times: "17",
  duration: 1,
  contact: "829355132",
  instructor: instructor19,
  cost: 200
)
workout_nineteen.photo.attach(io: file19, filename: "yoga.jpg", content_type: "image/png")
workout_nineteen.save!

file20a = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693840553/Fabrizio%20Instructor%2020.jpg')
instructor20 = Instructor.create(
  name: "Fabrizio",
  bio: "I'm a private personal trainer, and I've been working in the fitness industry for the last 8 years, mainly in the UK and Australia.",
  years_experience: "8",
  certifications: "Certified Personal Trainer",
  area_of_expertise: "Strength and cardio",
  image: "jkkjk"
)
instructor20.photo.attach(io: file20a, filename: "yoga.jpg", content_type: "image/png")
instructor20.save!

file20 = URI.open('https://res.cloudinary.com/dxl592x6b/image/upload/v1693498374/08_edited_zpnxji.jpg')
workout_twenty = Workout.new(
  name: "Be Fearsome Fit",
  category: "Outdoors",
  subcategory: "Group workouts",
  description: "Our Outdoors fitness classes in Hyde Park combine three simple ingredients; dedicated members, THE BEST instructors AND central Londons greatest gym, Hyde Park.",
  address: "63 Hatton Garden, London EC1N 8LE",
  image: "x",
  available_class_times: "16",
  duration: 1,
  contact: "879355175",
  instructor: instructor20,
  cost: 200
)
workout_twenty.photo.attach(io: file20, filename: "yoga.jpg", content_type: "image/png")
workout_twenty.save!
