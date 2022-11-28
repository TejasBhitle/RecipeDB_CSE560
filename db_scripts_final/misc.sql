select 
(select count(*) from RECIPE) as RECIPE_Count,
(select count(*) from INGREDIENT) as INGREDIENT_Count,
(select count(*) from LABEL) as LABEL_Count,
(select count(*) from CUSTOMER) as CUSTOMER_Count,
(select count(*) from Nutrient) as Nutrient_Count,
(select count(*) from IngredientNutrientPivot) as IngredientNutrient_Count,
(select count(*) from RecipeLabelsPivot) as RecipeLabels_Count,
(select count(*) from RecipeIngredientPivot) as RecipeIngredient_Count,
(select count(*) from AllergyLabel) as AllergyLabel_Count