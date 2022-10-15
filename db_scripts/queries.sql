
select * from nutrient;
select * from recipe;
select * from label;
select * from ingredient;
select * from customer;



-- Retreiving a receipe with least number of ingredients
select * from recipe 
where recipe_id_pk in (
	select recipe_id_fk, count(ingredient_id_fk) 
	from recipeingredientpivot 
	group by recipe_id_fk
	order by count(ingredient_id_fk) 
	limit 1;
)

