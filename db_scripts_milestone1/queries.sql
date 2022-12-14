
select * from nutrient;
select * from recipe;
select * from label;
select * from ingredient;
select * from customer;



-- Retreiving a receipe with least number of ingredients
select * from recipe 
where recipe_id_pk in (
	select recipe_id_fk
	from recipeingredientpivot 
	group by recipe_id_fk
	order by count(ingredient_id_fk) 
	limit 1
);


-- Retreiving incredient names that have carbs present
select I.Name from ingredient I 
inner join IngredientNutrientPivot P on I.ingredient_id_pk = P.ingredient_id_fk
inner join Nutrient N on N.nutrient_id_pk = P.nutrient_id_fk
where N.name = 'Carbohydrates'


-- Selecting all customers that dont eat non veg
select C.fname, C.lname, L.name as Does_Not_Like 
from customer C
inner join allergylabel A on C.cust_id_pk = A.cust_id_fk
inner join Label L on L.label_id_pk = A.label_id
where L.name = 'Non Veg'


-- Get all Chicken Recipes
select name, description, meal_type 
from recipe 
where name like '%Chicken%';


-- Get top 10 low calorie meals
select R.recipe_id_pk, R.name, (I.calorie_per_unit * P.num_of_units) as Calorie_Count  
from Recipe R
inner join RecipeIngredientPivot P on R.recipe_id_pk = P.recipe_id_fk
inner join Ingredient I on I.ingredient_id_pk = P.ingredient_id_fk
order by (I.calorie_per_unit * P.num_of_units) desc
limit 10;


-- get most common macro nutrient found in all ingredients
select N.name
from Nutrient N
inner join IngredientNutrientPivot P on N.nutrient_id_pk = P.nutrient_id_fk
group by N.name
order by count(1)
limit 1


-- get top 5 quickest breakfasts
select recipe_id_pk, name
from recipe
where meal_type = 'Breakfast'
order by servings desc
limit 5


-- get recipe containing highest Sugar
Select R.name
from recipe R
inner join RecipeIngredientPivot RIP on R.recipe_id_pk = RIP.recipe_id_fk
inner join Ingredient I on I.ingredient_id_pk = RIP.ingredient_id_fk
inner join IngredientNutrientPivot INP on I.ingredient_id_pk = INP.ingredient_id_fk
inner join Nutrient N on N.nutrient_id_pk = INP.nutrient_id_fk
where N.name = 'Sugars'
order by (RIP.num_of_units * INP.quantity) desc
limit 1


-- get count of High-Fiber recipes 
select count(1) as High_fiber_recipes_count
from recipe R
inner join RecipeLabelsPivot RLP on R.recipe_id_pk = RLP.recipe_id_fk 
inner join Label L on L.label_id_pk = RLP.label_id_fk
where L.name = 'High-Fiber'


-- get 5 recipe Full meal recipes with highest servings
select name, servings
from recipe
where meal_type = 'Full-Meal'
order by servings desc
limit 5

