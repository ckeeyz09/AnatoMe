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

Workout.create(name: "Russian Twists", description: "Sit with your feet on the floor and knees bent. Hold your arms straight in front of you with the fingers entwined. Lean back approximately 45 degrees, and then twist side to side from your waist.", video_url: "GBNowwdWXJQ", musclegroup_id: 1)
Workout.create(name: "Hanging Leg Raises", description: "Grasp and hang from high bar with slightly wider than shoulder width overhand grip. Raise legs by flexing hips and knees until hips are completely flexed or knees are well above hips. Return until hips and knees are extended downward. Repeat.", video_url: "C2o6fdtXU6I", musclegroup_id: 2)
Workout.create(name: "Squats", description: "The width of your grip will be dependent on flexibility, but generally a narrower, grip will help create a meaty shelf for you to place the bar on out of the muscles in your upper back, the bar will end up sitting on your rear deltoids. If you lack the flexibility for the narrower grip, start out wider, then slowly bring it in as you get more flexible. Once the bar is on your back, stand up, brace your core, tighten your glutes and flex your stomach and step back. From here, set up just like you did for your bodyweight squat – feet slightly wider than hip width apart, toes slightly pointing outward, butt back, squat down slowly, drop so the tops of your legs are parallel or lower, and stand back up.", video_url: "1xMaFs0L3ao", musclegroup_id: 3)
Workout.create(name: "Tricep Dip", description: "Sit on inside of one of two benches placed parallel, slightly less than leg's length away. Place hands on edge of bench, straighten arms, slide rear end off of bench, and position heels on adjacent bench with legs straight. Lower body by bending arms until slight stretch is felt in chest or shoulder, or rear end touches floor. Raise body and repeat.", video_url: "0326dy_-CzM", musclegroup_id: 4)
Workout.create(name: "Bicep Curl", description: "Position two dumbbells to sides, palms facing in, arms straight. With elbows to sides, raise one dumbbell and rotate forearm until forearm is vertical and palm faces shoulder. Lower to original position and repeat with opposite arm. Continue to alternate between sides.", video_url: "av7-8igSXTs", musclegroup_id: 5)
Workout.create(name: "Dumbbell Flies", description: "Grasp two dumbbells. Lie supine on bench. Support dumbbells above chest with arms fixed in slightly bent position. Internally rotate shoulders so elbows point out to sides. Lower dumbbells to sides until chest muscles are stretched with elbows fixed in slightly bent position. Bring dumbbells together in hugging motion until dumbbells are nearly together. Repeat.", video_url: "y_Z2LftZDvk", musclegroup_id: 6)
Workout.create(name: "Dumbbell Press", description: "Position dumbbells to each side of shoulders with elbows below wrists. Press dumbbells upward until arms are extended overhead. Lower to sides of shoulders and repeat.", video_url: "B-aVuyhvLHU", musclegroup_id: 7)
Workout.create(name: "Seated Dumbbell Wrist Curl", description: "Sit and grasp dumbbell with underhand grip. Rest forearm on thigh with wrist just beyond knee. Allow dumbbell to roll out of palm down to fingers. Raise dumbbell back up by gripping and pointing knuckles up as high as possible. Lower and repeat.", video_url: "7ac_qmBjkFI", musclegroup_id: 8)
Workout.create(name: "Reverse Calf Raise", description: "Place barbell on power rack upper chest height and calf block under barbell. Position back of shoulders under barbell with both hands to sides. Position heels on forward edge of calf block. Lean barbell against rack and raise from supports by extending knees and hips. Support barbell against verticals with both hands to sides. Pull forefoot of both feet up toward body as far as possible. Return by extending feet until toes are pointed downward. Repeat.", video_url: "f7tJLVELfZA", musclegroup_id: 9)
Workout.create(name: "Barbell Side Bends", description: "Grasp dumbbell with arm straight to side. Bend waist to opposite side of dumbbell until slight stretch is felt. Lower to opposite side, same distance and repeat. Continue with opposite side.", video_url: "9_kAFDM6l6o", musclegroup_id: 1)
Workout.create(name: "Ab Roller", description: "Hold the Ab Roller with both hands and kneel on the floor. Now place the ab roller on the floor in front of you so that you are on all your hands and knees (as in a kneeling push up position). This will be your starting position. Slowly roll the ab roller straight forward, stretching your body into a straight position.", video_url: "PwqJTPsI6i0", musclegroup_id: 2)
Workout.create(name: "Reverse Barbell Lunge", description: "From rack with barbell upper chest height, position bar on back of shoulders and grasp barbell to sides. Dismount bar from rack. Step back with one leg while bending supporting leg. Plant forefoot far back on floor. Lower body by flexing knee and hip of supporting leg until knee of rear leg is almost in contact with floor. Return to original standing position by extending hip and knee of forward supporting leg and return rear leg next to supporting leg. Repeat movement with opposite legs alternating between sides.", video_url: "ZZvRoS5Y48Q", musclegroup_id: 3)
Workout.create(name: "Tricep Extension", description: "Position one dumbbell over head with both hands under inner plate (heart shaped grip). With elbows over head, lower forearm behind upper arm by flexing elbows. Flex wrists at bottom to avoid hitting dumbbell on back of neck. Raise dumbbell over head by extending elbows while hyperextending wrists. Return and repeat.", video_url: "YbX7Wd8jQ-Q", musclegroup_id: 4)
Workout.create(name: "Close-Grip EZ Bar Curl", description: "Grasp bar with less than shoulder width underhand grip. With elbows to side, raise bar until forearms are vertical. Lower until arms are fully extended. Repeat.", video_url: "o74HeVd6BIw", musclegroup_id: 5)
Workout.create(name: "Cable Crossover 21s", description: "Feet together, leaning forward from your hips, and bending your knees. Bending our knees, bring your arms together, crossing over, contracting our chest. Slow on the way out. Crossing over, slow on the way back out. Repeat. ", video_url: "Iwe6AmxVf7o", musclegroup_id: 6)
Workout.create(name: "Prone Reverse Flye", description: "Grasp dumbbells and lie prone on flat bench. With arm flexed hold dumbbell under bench, just above floor. Move dummbells upward to sides by flexing back and shoulder blades. Keep arms slightly flexed. Return and repeat.", video_url: "BCrk5C52ZSI", musclegroup_id: 7)
Workout.create(name: "Plate Pinch", description: "Grab two wide-rimmed plates and put them together with the smooth sides facing outward. Use your fingers to grip the outside part of the plate and your thumb for the other side thus holding both plates together. This is the starting position. Squeeze the plate with your fingers and thumb. Hold this position for as long as you can. Switch arms and repeat the movements.", video_url: "vNbatvOweWw", musclegroup_id: 8)
# Workout.create(name: "", description: "", video_url: "", musclegroup_id: 9)
Workout.create(name: "Medicine Ball Throw", description: "Stand facing partner throwing distance apart with one foot forward. First person raises medicine ball above head with arms bent. Partner has arm in front ready to receive ball. First person throws medicine ball just above partner's head forcefully, extending both arms forward. Partner catches ball with both hands, recoils ball behind head, and immediately throws ball back to first person in same manner. First person catches ball and repeats volley. Continue to throw ball, back and forth.", video_url: "ZlrvmNflFJw", musclegroup_id: 1)
Workout.create(name: "Spiderman Plank Crunch", description: "The first thing you’re going to do is get into a forearm position, here. Make sure your elbows are aligned with your shoulders. You’re going to lift your knees off the ground, you’re going to make sure that you’re engaging your core. Your pelvis is tucked under. You’re going to raise your right knee up to your right elbow. You’re going to alternate your left knee up to your left elbow. So, you can to this for timed sets, 30 seconds, 45 seconds, or you can go 15 reps on each side. It’s totally your call.", video_url: "2WFI7dmEdnw", musclegroup_id: 2)
Workout.create(name: "Lunge Extension", description: "Sit on apparatus with back against padded back support. Place front of lower legs under padded lever. Position knee articulation at same axis as lever fulcrum. Grasp handles to sides for support. Move lever forward and upward by extending knees until legs are straight. Return lever to original position by bending knees. Repeat.", video_url: "YyvSfVjQeL0", musclegroup_id: 3)
Workout.create(name: "Tricep Pushdown", description: "Attach a straight or angled bar to a high pulley and grab with an overhand grip (palms facing down) at shoulder width. Standing upright with the torso straight and a very small inclination forward, bring the upper arms close to your body and perpendicular to the floor.", video_url: "LAMcpzODU", musclegroup_id: 4)
Workout.create(name: "Standing Bicep Curl", description: "Grasp low pulley cable bar with shoulder width underhand grip. Stand close to pulley. With elbows to side, raise bar until forearms are vertical. Lower until arms are fully extended. Repeat.", video_url: "AKFzK7n7PNg", musclegroup_id: 5)
Workout.create(name: "Close-Grip Weighted Push-Up", description: "Lie prone on floor with hands under shoulders or slightly narrower. Position body up off floor with extended arms and body straight. Partner can place weight plate(s) on back if needed. Keeping body straight, lower body to floor by bending arms. Push body up until arms are extended. Repeat.", video_url: "sbuS9gUtsZ8", musclegroup_id: 6)
Workout.create(name: "Bent-Over Reverse Fly 21s", description: "Start in a bent-over position with your core tight and knees slightly bent. Perform the first seven reps with a neutral grip (palms facing each other). Retract the scapula, squeeze, and slowly resist the negative. Lead with the pinkies out as you squeeze the rear delts during each rep. Keep the shoulders down as your raise the dumbbells and slowly lower them with control.", video_url: "ttvfGg9d76c", musclegroup_id: 7)
Workout.create(name: "Finger Curls", description: "Hold a barbell with both hands and your palms facing up; hands spaced about shoulder width. Place your feet flat on the floor, at a distance that is slightly wider than shoulder width apart. This will be your starting position. Lower the bar as far as possible by extending the fingers. Allowing the bar to roll down the hands, catch the bar with the final joint in the fingers. Now curl bar up as high as possible by closing your hands while exhaling. Hold the contraction at the top.", video_url: "oUqgPSZmhro", musclegroup_id: 8)
# Workout.create(name: "", description: "", video_url: "", musclegroup_id: 9)


Appointment.create(workout_id: "1", user_id: "1")
Appointment.create(workout_id: "2", user_id: "2")
Appointment.create(workout_id: "3", user_id: "3")
Appointment.create(workout_id: "4", user_id: "4")
Appointment.create(workout_id: "5", user_id: "1")
Appointment.create(workout_id: "6", user_id: "2")
Appointment.create(workout_id: "7", user_id: "3")
Appointment.create(workout_id: "8", user_id: "4")

# Supplement.create(name: "Protein", description: "Lean Muscle Gain | Protein powder is one of the most lean sources of protein that you can consume. When taken at the appropriate time and with the correct dosage, it can help with fat loss and lean muscle gain.",)
# Supplement.create(name: "Thermogenic", description: "Fat Loss | Produces heat through metabolic stimulation causing the body to produce more sweat and burn more fat.")
# Supplement.create(name: "BCAA", description: "Fat Loss and Muscle Gain | Aids in Branch Chain Amino Acids are the building blocks of protein. Sipping on your aminos during your workout will not only hydrate you, but it will aid in maintaining your muscle while burning fat.  Although aminos are extremely beneficial during your workout – they also help on your rest days. We recommend sipping your aminos in a gallon of water on your rest days to prevent any muscle loss.")
# Supplement.create(name: "Muscle Gainer", description: "Muscle Gain and Weight Gain | Gainers are high in protein and are typically consumed both before and after your workout. Taking this supplement will help you put on lean muscle, if taken properly.")
# Supplement.create(name: "Multi-Vitamin", description: "Overall Health | In order for your body to reach it’s full potential, it needs to be working properly on the inside. Taking a multi-vitamin will fully nourish your body both physically and mentally.")

# Food.create(name: "Chicken", description: "Lean Protein", musclegroup_id: 1)
# Food.create(name: "Salmon", description: "Lean Protein", musclegroup_id: 2)
# Food.create(name: "Egg Whites", description: "Lean Protein", musclegroup_id: 3)
# Food.create(name: "Brown Rice", description: "Complex Carbs", musclegroup_id: 4)
# Food.create(name: "Vegatables", description: "Complex Carbs", musclegroup_id: 5)
# Food.create(name: "Oatmeal", description: "Complex Carbs", musclegroup_id: 6)
# Food.create(name: "Avocado", description: "Lean Fat", musclegroup_id: 7)
# Food.create(name: "Almonds", description: "Lean Fat", musclegroup_id: 8)
# Food.create(name: "Almonds", description: "Lean Fat", musclegroup_id: 9)
# Food.create(name: "Chicken", description: "Lean Protein", musclegroup_id: 1)
# Food.create(name: "Salmon", description: "Lean Protein", musclegroup_id: 2)
# Food.create(name: "Egg Whites", description: "Lean Protein", musclegroup_id: 3)
# Food.create(name: "Brown Rice", description: "Complex Carbs", musclegroup_id: 4)
# Food.create(name: "Vegatables", description: "Complex Carbs", musclegroup_id: 5)
# Food.create(name: "Oatmeal", description: "Complex Carbs", musclegroup_id: 6)
# Food.create(name: "Avocado", description: "Lean Fat", musclegroup_id: 7)
# Food.create(name: "Almonds", description: "Lean Fat", musclegroup_id: 8)
# Food.create(name: "Almonds", description: "Lean Fat", musclegroup_id: 9)
# Food.create(name: "Chicken", description: "Lean Protein", musclegroup_id: 1)
# Food.create(name: "Salmon", description: "Lean Protein", musclegroup_id: 2)
# Food.create(name: "Egg Whites", description: "Lean Protein", musclegroup_id: 3)
# Food.create(name: "Brown Rice", description: "Complex Carbs", musclegroup_id: 4)
# Food.create(name: "Vegatables", description: "Complex Carbs", musclegroup_id: 5)
# Food.create(name: "Oatmeal", description: "Complex Carbs", musclegroup_id: 6)
# Food.create(name: "Avocado", description: "Lean Fat", musclegroup_id: 7)
# Food.create(name: "Almonds", description: "Lean Fat", musclegroup_id: 8)
# Food.create(name: "Almonds", description: "Lean Fat", musclegroup_id: 9)



# add the musclegroup_id to the supplement table and the food table 








