CREATE DATABASE "recipeDB"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False

-- creating tables

CREATE TABLE RECIPE (
    recipe_id_pk INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(500),
    prep_time INTEGER DEFAULT 15,
    meal_type VARCHAR(20) CHECK(meal_type in ('Breakfast', 'Snack', 'Full-Meal', 'Dessert')),
    servings INTEGER DEFAULT 1
);

CREATE TABLE INGREDIENT(
    ingredient_id_pk INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    calorie_per_unit INTEGER DEFAULT 10,
	measure_type VARCHAR(10) CHECK(measure_type in ('mg', 'ml'))
);

CREATE TABLE RecipeIngredientPivot (
    ingredient_pivot_id_pk INTEGER PRIMARY KEY,
    ingredient_id_fk INTEGER REFERENCES INGREDIENT (ingredient_id_pk),
    recipe_id_fk INTEGER REFERENCES RECIPE (recipe_id_pk),
    num_of_units INTEGER DEFAULT 1
);

CREATE TABLE LABEL (
    label_id_pk INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);


CREATE TABLE RecipeLabelsPivot (
    recipe_label_id_pk INTEGER PRIMARY KEY,
    recipe_id_fk INTEGER REFERENCES RECIPE (recipe_id_pk),
    label_id_fk INTEGER REFERENCES LABEL (label_id_pk)
);

CREATE TABLE Nutrient (
    nutrient_id_pk INTEGER PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    is_macro BOOLEAN DEFAULT FALSE
);

CREATE TABLE IngredientNutrientPivot (
    ingredient_nutrient_id_pk INTEGER PRIMARY KEY,
    ingredient_id_fk INTEGER REFERENCES INGREDIENT (ingredient_id_pk),
    nutrient_id_fk INTEGER REFERENCES Nutrient (nutrient_id_pk),
    quantity INTEGER DEFAULT 1
);


CREATE TABLE CUSTOMER (
    cust_id_pk INTEGER PRIMARY KEY,
    fname VARCHAR(30) NOT NULL,
    lname VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    password_hash VARCHAR(50) NOT NULL
);

CREATE TABLE AllergyLabel (
    allergy_label_id_pk INTEGER PRIMARY KEY,
    cust_id_fk INTEGER REFERENCES CUSTOMER (cust_id_pk),
    label_id INTEGER REFERENCES LABEL (label_id_pk)
);
