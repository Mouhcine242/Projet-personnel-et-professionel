import 'package:flutter/material.dart';


class MealScreen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(

        slivers:<Widget> [
          SliverAppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
              opacity: 20,
            ),
            expandedHeight: 300,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(child: Image.asset("assets/diet.jpg",fit: BoxFit.cover,),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(height: 20,),
                ListTile(
                  title: Text("Build Mass",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 24,color: Colors.black),),
                  subtitle: Text("How to do it?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.blueGrey),),
                ),
                SizedBox(height: 20,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(articl,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),)
              ])),

        ],
      ),

    );
  }

}

 String articl = """Bodybuilding is centered around building your body’s muscles through weightlifting and nutrition.
Whether recreational or competitive, bodybuilding is often referred to as a lifestyle, as it involves both the time you spend in and outside the gym.
In order to maximize your results from the gym, you must focus on your diet, as eating the wrong foods can be detrimental to your bodybuilding goals.
This article explains what to eat and avoid on a bodybuilding diet and provides a one-week sample menu.

BODYBUILDING BASICS 

Bodybuilding differs from powerlifting or Olympic lifting in that it’s judged on a competitor’s physical appearance rather than physical strength.
As such, bodybuilders aspire to develop and maintain a well-balanced, lean and muscular physique.
To do this, many bodybuilders start with an off-season followed by an in-season way of eating — referred to as a bulking and cutting phase, respectively.
During the bulking phase, which can last months to years, bodybuilders eat a high-calorie, protein-rich diet and lift weights intensely with the goal of building as much muscle as possible (1Trusted Source).

The following cutting phase focuses on losing as much fat as possible while maintaining muscle mass developed during the bulking phase. This is achieved through specific changes in diet and exercise over a period of 12–26 weeks (1Trusted Source).
CALORIE NEEDS and MACRONUTRIENTS

The goal for competitive bodybuilders is to increase muscle mass in the bulking phase and reduce body fat in the cutting phase. Hence, you consume more calories in the bulking phase than in the cutting phase

BODYBUILDING NUTRITION: FOODS TO EAT AND AVOID

Like training, diet is a vital part of bodybuilding.
Eating the right foods in the appropriate amounts provides your muscles with the nutrients they need to recover from workouts and grow bigger and stronger.
Conversely, consuming the wrong foods or not consuming enough of the right ones will leave you with subpar results.
Here are foods you should focus on and foods to limit or avoid:

FOODS TO FOCUS ON :

he foods you eat don’t need to differ between the bulking and cutting phase — usually, it’s the amounts that do.
Foods to eat include (7Trusted Source):

Meats, poultry and fish: Sirloin steak, ground beef, pork tenderloin, venison, chicken breast, salmon, tilapia and cod.
Dairy: Yogurt, cottage cheese, low-fat milk and cheese.
Grains: Bread, cereal, crackers, oatmeal, quinoa, popcorn and rice.
Fruits: Oranges, apples, bananas, grapes, pears, peaches, watermelon and berries.
Starchy vegetables: Potatoes, corn, green peas, green lima beans and cassava.
Vegetables: Broccoli, spinach, leafy salad greens, tomatoes, green beans, cucumber, zucchini, asparagus, peppers and mushrooms.
Seeds and nuts: Almonds, walnuts, sunflower seeds, chia seeds and flax seeds.
Beans and legumes: Chickpeas, lentils, kidney beans, black beans and pinto beans.
Oils: Olive oil, flaxseed oil and avocado oil.

FOODS TO LIMIT:

While you should include a variety of foods in your diet, there are some you should limit.

These include:

Alcohol: Alcohol can negatively affect your ability to build muscle and lose fat, especially if you consume it in excess (8Trusted Source).
Added sugars: These offer plenty of calories but few nutrients. Foods high in added sugars include candy, cookies, doughnuts, ice cream, cake and sugar-sweetened beverages, such as soda and sports drinks(5Trusted Source).
Deep-fried foods: These may promote inflammation and — when consumed in excess — disease. Examples include fried fish, french fries, onion rings, chicken strips and cheese curds (9Trusted Source).
In addition to limiting these, you may also want to avoid certain foods before going to the gym that can slow digestion and cause stomach upset during your workout.

These include:

High-fat foods: High-fat meats, buttery foods and heavy sauces or creams.
High-fiber foods: Beans and cruciferous vegetables like broccoli or cauliflower.
Carbonated beverages: Sparkling water or diet soda.

BODYBUILDING SUPPLEMENTS:

Many bodybuilders take dietary supplements, some of which are useful while others are not (10Trusted Source, 11Trusted Source).
The best bodybuilding supplements include:

Whey protein: Consuming whey protein powder is an easy and convenient way to increase your protein intake.
Creatine: Creatine provides your muscles with the energy needed to perform an additional rep or two. While there are many brands of creatine, look for creatine monohydrate as it’s the most effective (12Trusted Source).
Caffeine: Caffeine decreases fatigue and allows you to work harder. It’s found in pre-workout supplements, coffee or tea (13Trusted Source).
A multi-vitamin and mineral supplement may be helpful if you’re limiting your calorie intake in an effort to reduce body fat during your cutting phase.

ONE WEEK SIMPLE MENU:

The diets of bodybuilders are commonly described as restrictive, repetitive and boring.
Traditional bodybuilding diets typically contain limited food selections and little variety among and within food groups, which can lead to an inadequate intake of essential minerals and vitamins (14Trusted Source).
For this reason, it’s important to incorporate variety into your diet to ensure your nutritional needs are being met — especially during a cutting phase when you eat limited calories.
Each meal and snack should contain 20–30 grams of protein to optimally support muscle building (15Trusted Source).
When you’re in a bulking phase, your food intake will be much higher than when you’re in a cutting phase.
You can enjoy the same foods in the cutting phase that you would when bulking — just in smaller portions.
Here is a sample one-week bodybuilding menu:

MONDAY
Breakfast: Scrambled eggs with mushrooms and oatmeal.
Snack: Low-fat cottage cheese with blueberries.
Lunch: Venison burger, white rice and broccoli.
Snack: Protein shake and a banana.
Dinner: Salmon, quinoa and asparagus.
TUESDAY
Breakfast: Protein pancakes with light-syrup, peanut butter and raspberries.
Snack: Hard-boiled eggs and an apple.
Lunch: Sirloin steak, sweet potato and spinach salad with vinaigrette.
Snack: Protein shake and walnuts.
Dinner: Ground turkey and marinara sauce over pasta.
WEDNESDAY
Breakfast: Chicken sausage with egg and roasted potatoes.
Snack: Greek yogurt and almonds.
Lunch: Turkey breast, basmati rice and mushrooms.
Snack: Protein shake and grapes.
Dinner: Mackerel, brown rice and salad leaves with vinaigrette.
THURSDAY
Breakfast: Ground turkey, egg, cheese and salsa in a whole-grain tortilla.
Snack: Yogurt with granola.
Lunch: Chicken breast, baked potato, sour cream and broccoli.
Snack: Protein shake and mixed berries.
Dinner: Stir-fry with chicken, egg, brown rice, broccoli, peas and carrots.
FRIDAY
Breakfast: Blueberries, strawberries and vanilla Greek yogurt on overnight oats.
Snack: Jerky and mixed nuts.
Lunch: Tilapia fillets with lime juice, black and pinto beans and seasonal veggies.
Snack: Protein shake and watermelon.
Dinner: Ground beef with corn, brown rice, green peas and green beans.
SATURDAY
Breakfast: Ground turkey and egg with corn, bell peppers, cheese and salsa.
Snack: Can of tuna with crackers.
Lunch: Tilapia fillet, potato wedges and bell peppers.
Snack: Protein shake and pear.
Dinner: Diced beef with rice, black beans, bell peppers, cheese and pico de gallo.
SUNDAY
Breakfast: Eggs sunny-side up and avocado toast.
Snack: Protein balls and almond butter.
Lunch: Pork tenderloin slices with roasted garlic potatoes and green beans.
Snack: Protein shake and strawberries.
Dinner: Turkey meatballs, marinara sauce and parmesan cheese over pasta.


""" ;