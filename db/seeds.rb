# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(first_name: "Ian", last_name: "Civgin", password: "test", location: "San Francisco", goal: "Muscle gain", weight: "160", height: "67", bfp: "12", bmi: "25", username: "icivgin", email: "ian@test.com", avatar: "http://cdn3.rd.io/user/no-user-image-square.jpg")
User.create(first_name: "Monika", last_name: "Chumber", password: "test", location: "San Francisco", goal: "Fat loss", weight: "135", height: "66", bfp: "17.5", bmi: "25", username: "xmonmon",  email: "monika@test.com", avatar: "http://cdn3.rd.io/user/no-user-image-square.jpg")
User.create(first_name: "Sean", last_name: "Hill", password: 'test', location: "San Francisco", goal: "Muscle gain", weight: "160", height: "67", bfp: "14", bmi: "25", username: "ckeeyz09", email: "sean@test.com", avatar: "http://cdn3.rd.io/user/no-user-image-square.jpg")
User.create(first_name: "Rakesh", last_name: "Shrestha", password: "test", location: "San Francisco", goal: "Muscle gain", weight: "160", height: "67", bfp: "13", bmi: "25", username: "rakesh87", email: "rakesh@test.com", avatar: "http://cdn3.rd.io/user/no-user-image-square.jpg")

Musclegroup.create(name: "Obliques", description: "The external oblique muscle (of the abdomen) (also external abdominal oblique muscle) is the largest and the most superficial (outermost) of the three flat muscles of the lateral anterior abdomen.")
Musclegroup.create(name: "Abdominals", description: " A large group of muscles in the front of the abdomen that assists in the regular breathing movement and supports the muscles of the spine while lifting and keeping abdominal organs such as the intestines in place.")
Musclegroup.create(name: "Quadriceps", description: "A large muscle in front of the thigh, the action of which extends the leg or bends the hip joint.")
Musclegroup.create(name: "Trapezius", description: "The trapezius is one of the major muscles of the back and is responsible for moving, rotating, and stabilizing the scapula (shoulder blade) and extending the head at the neck.")
Musclegroup.create(name: "Biceps", description: "Either of two flexor muscles, one (biceps brachii) located in the front of the upper arm and assisting in bending the arm, and the other (biceps femoris) located on the back of the thigh and assisting in bending the leg.")
Musclegroup.create(name: "Pectorals", description: "Each of the four large paired muscles that cover the front of the rib cage and serve to draw the forelimbs toward the chest.")
Musclegroup.create(name: "Deltoids", description: "Each of the three parts of a deltoid muscle, attached at the front, side, and rear of the shoulder.")
Musclegroup.create(name: "Forearms", description: "Anterior portion of the space enclosed by the antebrachial fascia, separated from the posterior compartment by the radius and ulna and by the intervening interosseous membrane; the spaces are demarcated superficially by the subcutaneous border of the ulna and the pulse of the radial artery.")
Musclegroup.create(name: "Tibialis Anterior", description: "One of the anterior crural muscles of the leg, situated on the lateral side of the tibia. It is a thick fleshy muscle proximally and tendinous distally. The muscle dorsiflexes and inverts the foot. Also called tibialis anticus.")

Workout.create(name: "Russian Twists", description: "Sit with your feet on the floor and knees bent. Hold your arms straight in front of you with the fingers entwined. Lean back approximately 45 degrees, and then twist side to side from your waist.", video_url: "https://www.youtube.com/watch?v=GBNowwdWXJQ")
Workout.create(name: "Hanging Leg Raises", description: "Grasp and hang from high bar with slightly wider than shoulder width overhand grip. Raise legs by flexing hips and knees until hips are completely flexed or knees are well above hips. Return until hips and knees are extended downward. Repeat.", video_url: "https://www.youtube.com/watch?v=C2o6fdtXU6I")
Workout.create(name: "Squats", description: "The width of your grip will be dependent on flexibility, but generally a narrower, grip will help create a meaty shelf for you to place the bar on out of the muscles in your upper back, the bar will end up sitting on your rear deltoids. If you lack the flexibility for the narrower grip, start out wider, then slowly bring it in as you get more flexible. Once the bar is on your back, stand up, brace your core, tighten your glutes and flex your stomach and step back. From here, set up just like you did for your bodyweight squat – feet slightly wider than hip width apart, toes slightly pointing outward, butt back, squat down slowly, drop so the tops of your legs are parallel or lower, and stand back up.", video_url: "https://www.youtube.com/watch?v=1xMaFs0L3ao")
Workout.create(name: "Tricep Dip", description: "Sit on inside of one of two benches placed parallel, slightly less than leg's length away. Place hands on edge of bench, straighten arms, slide rear end off of bench, and position heels on adjacent bench with legs straight. Lower body by bending arms until slight stretch is felt in chest or shoulder, or rear end touches floor. Raise body and repeat.", video_url: "https://www.youtube.com/watch?v=0326dy_-CzM")
Workout.create(name: "Bicep Curl", description: "Position two dumbbells to sides, palms facing in, arms straight. With elbows to sides, raise one dumbbell and rotate forearm until forearm is vertical and palm faces shoulder. Lower to original position and repeat with opposite arm. Continue to alternate between sides.", video_url: "https://www.youtube.com/watch?v=av7-8igSXTs")
Workout.create(name: "Dumbbell Flies", description: "Grasp two dumbbells. Lie supine on bench. Support dumbbells above chest with arms fixed in slightly bent position. Internally rotate shoulders so elbows point out to sides. Lower dumbbells to sides until chest muscles are stretched with elbows fixed in slightly bent position. Bring dumbbells together in hugging motion until dumbbells are nearly together. Repeat.", video_url: "https://www.youtube.com/watch?v=y_Z2LftZDvk")
Workout.create(name: "Dumbbell Press", description: "Position dumbbells to each side of shoulders with elbows below wrists. Press dumbbells upward until arms are extended overhead. Lower to sides of shoulders and repeat.", video_url: "https://www.youtube.com/watch?v=B-aVuyhvLHU")
Workout.create(name: "Seated Dumbbell Wrist Curl", description: "Sit and grasp dumbbell with underhand grip. Rest forearm on thigh with wrist just beyond knee. Allow dumbbell to roll out of palm down to fingers. Raise dumbbell back up by gripping and pointing knuckles up as high as possible. Lower and repeat.", video_url: "https://www.youtube.com/watch?v=7ac_qmBjkFI")
Workout.create(name: "Reverse Calf Raise", description: "Place barbell on power rack upper chest height and calf block under barbell. Position back of shoulders under barbell with both hands to sides. Position heels on forward edge of calf block. Lean barbell against rack and raise from supports by extending knees and hips. Support barbell against verticals with both hands to sides. Pull forefoot of both feet up toward body as far as possible. Return by extending feet until toes are pointed downward. Repeat.", video_url: "https://www.youtube.com/watch?v=f7tJLVELfZA")

Appointment.create(workout_id: "1", user_id: "1")
Appointment.create(workout_id: "2", user_id: "2")
Appointment.create(workout_id: "3", user_id: "3")
Appointment.create(workout_id: "4", user_id: "4")
Appointment.create(workout_id: "5", user_id: "1")
Appointment.create(workout_id: "6", user_id: "2")
Appointment.create(workout_id: "7", user_id: "3")
Appointment.create(workout_id: "8", user_id: "4")

# Supplement.create(supp_name: "Protein", desciption: "Lean Muscle Gain | Protein powder is one of the most lean sources of protein that you can consume. When taken at the appropriate time and with the correct dosage, it can help with fat loss and lean muscle gain.")
# Supplement.create(supp_name: "Thermogenic", desciption: "Fat Loss | Produces heat through metabolic stimulation causing the body to produce more sweat and burn more fat.")
# Supplement.create(supp_name: "BCAA", desciption: "Fat Loss and Muscle Gain | Aids in Branch Chain Amino Acids are the building blocks of protein. Sipping on your aminos during your workout will not only hydrate you, but it will aid in maintaining your muscle while burning fat.  Although aminos are extremely beneficial during your workout – they also help on your rest days. We recommend sipping your aminos in a gallon of water on your rest days to prevent any muscle loss.")
# Supplement.create(supp_name: "Muscle Gainer", desciption: "Muscle Gain and Weight Gain | Gainers are high in protein and are typically consumed both before and after your workout. Taking this supplement will help you put on lean muscle, if taken properly.")
# Supplement.create(supp_name: "Multi-Vitamin", desciption: "Overall Health | In order for your body to reach it’s full potential, it needs to be working properly on the inside. Taking a multi-vitamin will fully nourish your body both physically and mentally.")

# Food.create(food_name: "Chicken", desciption: "Lean Protein")
# Food.create(food_name: "Salmon", desciption: "Lean Protein")
# Food.create(food_name: "Egg Whites", desciption: "Lean Protein")
# Food.create(food_name: "Brown Rice", desciption: "Complex Carbs")
# Food.create(food_name: "Vegatables", desciption: "Complex Carbs")
# Food.create(food_name: "Oatmeal", desciption: "Complex Carbs")
# Food.create(food_name: "Avocado", desciption: "Lean Fat")
# Food.create(food_name: "Almonds", desciption: "Lean Fat")













