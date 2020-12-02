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

Diet.create(name: "Ketogenic", description: "The ketogenic lifestyle is a very low carb, high fat diet that shares many similarities with the Atkins and low carb diets. It involves drastically reducing carbohydrate intake and replacing it with fat. This reduction in carbs puts your body into a metabolic state called ketosis, which becomes a fat burning machine.", restriction: "No Sugar and your daily intake of carbs should be less than 50 grams a day ", calorie: 0 , water: 0 )
Diet.create(name: "Paleolithic", description: "The Paleolithic lifestyle is a weight loss plan based upon the premise of consuming only those foods available during the Paleolithic era (also known as the Stone Age). People at this time were hunter-gatherers, meaning that all animals were hunted and plants were gathered from nature.", restriction: " Processed foods, sugar, soft drinks, grains, most dairy products, legumes, artificial sweeteners, vegetable oils, margarine and trans fats.", calorie: 0 , water: 0)

User.create(username: "angie235", first_name: "Angela", last_name: "Torres", image: "6",  age: 25, height: 6, weight: 130, gender: "6", activity: "6", password: "6")
User.create(username: "joey_tech", first_name: "Joseph", last_name: "Doe", image: "6",  age: 32, height: 6, weight: 165, gender: "6", activity: "6", password:"6")

Workout.create(name: "Cycling", description: "Biking is a top-notch cardio workout. It'll strengthens your lower body, including your legs, hips, and glutes. If you want a workout that’s gentle on your back, hips, knees, and ankles, this is a great choice.", detail: "30-60 minutes", video: "", image: " " )
Workout.create(name: "Running", description: "Running is a form of cardio exercise that's easily accessible. It is one of the most straightforward ways to get the important benefits of exercise. Since it improves aerobic fitness, running is a great way to help improve cardiovascular health.", detail: "45 - 60 minutes", video: " ", image: " ")

Goal.create(name: "Fat Loss", user_id: User.all.sample.id, diet_id: Diet.all.sample.id, workout_id: Workout.all.sample.id)
Goal.create(name: "Muscle Gain", user_id: User.all.sample.id, diet_id: Diet.all.sample.id, workout_id: Workout.all.sample.id)
Goal.create(name: "Endurance", user_id: User.all.sample.id, diet_id: Diet.all.sample.id, workout_id: Workout.all.sample.id)
Goal.create(name: "Strength", user_id: User.all.sample.id, diet_id: Diet.all.sample.id, workout_id: Workout.all.sample.id)
Goal.create(name: "Maintenance/Body Recomposition", user_id: User.all.sample.id, diet_id: Diet.all.sample.id, workout_id: Workout.all.sample.id)
