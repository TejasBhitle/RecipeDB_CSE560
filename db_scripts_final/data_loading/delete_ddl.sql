DROP TABLE IngredientNutrientPivot;
DROP TABLE RecipeLabelsPivot;
DROP TABLE RecipeIngredientPivot;
DROP TABLE AllergyLabel;

DROP TABLE RECIPE;
DROP TABLE INGREDIENT;
DROP TABLE LABEL;
DROP TABLE CUSTOMER;
DROP TABLE Nutrient;
DROP TABLE Preferences;

DROP TRIGGER IF EXISTS add_preference_trigger
ON "customer";
