CREATE INDEX recipe_pk_idx on recipe(recipe_id_pk);
CREATE INDEX ingredient_pk_idx on ingredient(ingredient_id_pk);
CREATE INDEX nutrient_pk_idx on nutrient(nutrient_id_pk);
CREATE INDEX recipeingredient_idx on recipeingredientpivot(ingredient_id_fk, recipe_id_fk);
CREATE INDEX ingredientnutrient_idx on ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk);









