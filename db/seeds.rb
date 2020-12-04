# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Diet.destroy_all 
User.destroy_all
Workout.destroy_all
Goal.destroy_all 


keto = Diet.create(name: "Ketogenic", description: "A Ketogenic lifestyle is a very low carb, high fat diet that shares many similarities with the Atkins and low carb diets. It involves drastically reducing carbohydrate intake and replacing it with fat. This reduction in carbs puts your body into a metabolic state called ketosis, which becomes a fat burning machine.", restriction: "No sugar and your daily intake of carbohydrates should be less than 50 grams a day ", calorie: 0 , water: 0 )
paleo = Diet.create(name: "Paleolithic", description: "A Paleolithic lifestyle is based upon the premise of consuming only those foods available during the Paleolithic era (also known as the Stone Age). People at this time were hunter-gatherers, meaning that all animals were hunted and plants were gathered from nature.", restriction: "Processed foods, sugar, soft drinks, grains, most dairy products, legumes, artificial sweeteners, vegetable oils, margarine and trans fats.", calorie: 0 , water: 0)
clean = Diet.create(name: "Low Fat", description: "A Low Fat lifestyle is one that restricts fat, and often saturated fat and cholesterol as well. Low-fat diets are intended to reduce the occurrence of conditions such as heart disease and obesity. Fat carries a higher number of calories per gram than carbohydrates or proteins and so reducing fat can help to reduce your overall calorie intake. Whole grain versions of foods such as bread are recommended in preference to non-whole grain versions (such as white bread) partly because they are turned into blood sugar more slowly. The fibre and extra nutrients they contain are also healthier than white versions. It is recommended to include a significant proportion of fruit and vegetables through each day.", restriction: " Limit saturated fat to less than 7% of your total daily calories. Avoid trans fat as much as possible, which is typically used in fried and baked foods. ", calorie: 0 , water: 0 )
plant = Diet.create(name: "Plant Based", description: "A Plant-Based or Plant-Forward eating pattern focuses on foods primarily from plants. This includes not only fruits and vegetables, but also nuts, seeds, oils, whole grains, legumes, and beans. It doesn’t mean that you are vegetarian or vegan and never eat meat or dairy. Rather, you are proportionately choosing more of your foods from plant sources.", restriction: "Try to avoid fast food, desserts and sweetened beverages, packaged foods and processed meats.", calorie: 0 , water: 0 )
protein = Diet.create(name: "High Protein", description: "A High-Protein lifestyle encourages eating more protein and fewer carbohydrates or fat to boost weight loss, improve energy, and enhance athletic performance. Protein is an essential nutrient for health and is responsible for a number of important functions in the body, including hormones, enzymes, and cell repair and maintenance. In general, a high-protein diet recommends getting more than 20% of your total calories from protein.", restriction: "Eat less refined carbohydrates, such as bread, pasta and white rice, saturated fats and sugar.", calorie: 0 , water: 0)


cycling = Workout.create(name: "Cycling", description: "Cycling is a great exercise to help you lose weight and great for people of all fitness levels, which can be done outdoors on a bicycle or indoors on a stationary bike. It has been linked to various health benefits, including increased insulin sensitivity and a reduced risk of certain chronic diseases. ", detail: "Aim to cycle for 30 -60 minutes, 4-6 times per week at a moderate speed level. ", video: "ttps://www.youtube.com/watch?v=x4WHeVf5DN4", image: "https://static.euronews.com/articles/stories/04/96/92/54/945x531_cmsv2_46d24b9b-1eec-58cf-ad75-cc31ea0a204d-4969254.jpg" )
jogging = Workout.create(name: "Jogging", description: "A great exercise to help you lose weight. Jogging helps build strong bones, strengthen muscles and improve cardiovascular fitness. If you find jogging outdoors to be hard on your joints, try jogging on softer surfaces like grass. Also, many treadmills have built-in cushioning, which may be easier on your joints. ", detail: "Aim to jog for 45-60 minutes, 3-4 times per week.", video: "https://www.youtube.com/watch?v=brFHyOtTwH4", image: "https://cdn.cdnparenting.com/articles/2019/01/21120025/1195922569-H.jpg")
weight  = Workout.create(name: "Weight training", description: "Weight training helps build strength and promote muscle growth, which can raise your resting metabolic rate(RMR), or how many calories your body burns at rest. Weight training can help you lose weight by burning calories during and after your workout. ", detail: "Aim to weight training for 1-2 hours, 4-5 times a week with a rest day in between each day. ", video: "https://www.youtube.com/watch?v=Im5wJLdudDg", image: "https://i.ndtvimg.com/i/2016-08/weight-training-625_625x350_81470727588.jpg" )
hiit = Workout.create(name: " High- intensity interval training (HIIT) ", description: " Interval training refers to short burst of intense exercise that alternate with recovery periods. It is an effective weight loss strategy that can be applied to many types of exercises, including running, jumping, biking and more. All you need to do is choose a type of exercise, such as running, jumping, or biking, and your exercise and rest times. ", detail: "Aim to have a High-intensity interval training for 45-60 minutes, 5 times per week. ", video: " https://www.youtube.com/watch?v=1YrKGvgwJE8", image: " https://purlifefitness.com/wp-content/uploads/2016/09/HIIT-Training.jpg")
yoga = Workout.create(name: "Yoga", description: "Yoga is a mind and body practice with a 5,000-year history in ancient Indian philosophy. Various styles of yoga combine physical postures, breathing techniques, and meditation or relaxation.", detail: "30-60 minutes/session for 2-3 days/week", video: "", image: "")
swimming = Workout.create(name: "Swimming", description: "Swimming is a fun way to lose weight and get in shape. Swimming is a great low-impact exercise, meaning that it’s easier on your joints. This makes it a great option for people who have injuries or joint pain. It may help improve your flexibility and reduce risk factors for various diseases.", detail: "Aim to swim for 30 minutes, 3 times per week.", video: "https://www.youtube.com/watch?v=nlGsZTsZaFc", image: "https://res.cloudinary.com/grohealth/image/upload/$wpsize_!_cld_full!,w_2560,h_1920,c_scale/v1588106919/action-athlete-blue-863988-scaled.jpg")
jiujitsu = Workout.create(name: "Jiu Jitsu", description: "", detail: "", video: "", image: "")
basketball = Workout.create(name: " Basketball", description: "", detail: "", video: "", image: "")
walking = Workout.create(name: "Walking", description: "A convenient and an easy way for beginners to start exercising without feeling overwhelmed or needing to purchase equipment. Also, it’s a lower-impact exercise, meaning it doesn’t stress your joints. You can gradually increase the duration or frequency of your walks as you become more fit.", detail: "Aim to walk for 30 minutes, 3-4 times a week. ", video: "https://www.youtube.com/watch?v=3Ka7B3hCg08&t=215s", image: "./app/assets/image/walking.jpeg")
dancing = Workout.create(name: "Dancing", description: "", detail: "", video: "", image: "")

weightloss = Goal.create(name: "Weight Loss", diet_id: keto.id)
muscle = Goal.create(name: "Muscle Gain", diet_id: paleo.id)
endurance = Goal.create(name: "Endurance", diet_id: plant.id)
strength = Goal.create(name: "Strength",  diet_id: protein.id)
maintainence = Goal.create(name: "Maintenance",  diet_id: clean.id)
self_defense = Goal.create(name: "Self Defense",  diet_id: clean.id)

a = GoalWorkout.create(goal_id: weightloss.id, workout_id: walking.id)
b = GoalWorkout.create(goal_id: weightloss.id, workout_id: jogging.id)
c = GoalWorkout.create(goal_id: weightloss.id, workout_id: cycling.id)
d = GoalWorkout.create(goal_id: weightloss.id, workout_id: swimming.id)
e = GoalWorkout.create(goal_id: weightloss.id, workout_id: hiit.id)
f = GoalWorkout.create(goal_id: weightloss.id, workout_id: weight.id)
g = GoalWorkout.create(goal_id: muscle.id, workout_id: yoga.id)
h = GoalWorkout.create(goal_id: muscle.id, workout_id: weight.id)
i = GoalWorkout.create(goal_id: maintainence.id, workout_id: swimming.id)


angela = User.create(username: "angie235", first_name: "Angela", last_name: "Torres", image: "https://vignette.wikia.nocookie.net/theoffice/images/b/b6/111423.jpg/revision/latest?cb=20101116030321",  age: 25, height: 6, weight: 130, gender: "6", activity: "6", password: "6", goal_id: weightloss.id)

joseph = User.create(username: "joey_tech", first_name: "Joseph", last_name: "Doe", image: "https://pbs.twimg.com/media/DAM0C36VwAA19DM.jpg:large",  age: 32, height: 6, weight: 165, gender: "6", activity: "6", password:"6", goal_id: muscle.id )


GoalDiet.create(user_id: angela.id, diet_id: protein.id, goal_id: weightloss.id) 
GoalDiet.create(user_id: joseph.id, diet_id: keto.id, goal_id: muscle.id)
