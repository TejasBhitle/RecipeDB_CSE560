CREATE INDEX recipe_pk_idx on recipe(recipe_id_pk);
CREATE INDEX ingredient_pk_idx on ingredient(ingredient_id_pk);
CREATE INDEX nutrient_pk_idx on nutrient(nutrient_id_pk);
CREATE INDEX recipeingredient_idx on recipeingredientpivot(ingredient_id_fk, recipe_id_fk);
CREATE INDEX ingredientnutrient_idx on ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk);

CREATE INDEX customer_idx on customer(cust_id_pk, choice);
CREATE INDEX allergylabel_idx on allergylabel(cust_id_fk, label_id);
CREATE INDEX recipelabels_idx on recipelabelspivot(recipe_id_fk, label_id_fk);
CREATE INDEX preferences_idx on preferences(cust_id_fk);


DROP INDEX IF EXISTS recipe_pk_idx;
DROP INDEX IF EXISTS ingredient_pk_idx;
DROP INDEX IF EXISTS nutrient_pk_idx;
DROP INDEX IF EXISTS recipeingredient_idx;
DROP INDEX IF EXISTS ingredientnutrient_idx;
DROP INDEX IF EXISTS customer_idx;
DROP INDEX IF EXISTS allergylabel_idx;
DROP INDEX IF EXISTS recipelabels_idx;
DROP INDEX IF EXISTS preferences_idx;