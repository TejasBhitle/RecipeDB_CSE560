
CREATE DATABASE "recipeDB"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False

-- creating tables

CREATE TABLE RECIPE (
    recipe_id_pk SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(500),
    prep_time INTEGER NOT NULL DEFAULT 15,
    meal_type VARCHAR(20) CHECK(meal_type in ('Breakfast', 'Snack', 'Full-Meal', 'Dessert')),
    servings INTEGER NOT NULL DEFAULT 1,
    img_url VARCHAR(2048),
    url VARCHAR(2048) DEFAULT NULL
);

CREATE TABLE INGREDIENT(
    ingredient_id_pk SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    calorie_per_unit INTEGER NOT NULL DEFAULT 10,
	measure_type VARCHAR(10) NOT NULL 
);

CREATE TABLE RecipeIngredientPivot (
    ingredient_pivot_id_pk SERIAL PRIMARY KEY,
    ingredient_id_fk INTEGER NOT NULL REFERENCES INGREDIENT (ingredient_id_pk)
                     ON UPDATE CASCADE 
                     ON DELETE CASCADE,
    recipe_id_fk INTEGER NOT NULL REFERENCES RECIPE (recipe_id_pk)
                 ON UPDATE CASCADE
                 ON DELETE CASCADE,
    num_of_units INTEGER NOT NULL DEFAULT 1
);

CREATE TABLE LABEL (
    label_id_pk SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);


CREATE TABLE RecipeLabelsPivot (
    recipe_label_id_pk SERIAL PRIMARY KEY,
    recipe_id_fk INTEGER NOT NULL REFERENCES RECIPE (recipe_id_pk)
                 ON UPDATE CASCADE 
                 ON DELETE CASCADE,
    label_id_fk INTEGER NOT NULl REFERENCES LABEL (label_id_pk)
                ON UPDATE CASCADE 
                ON DELETE CASCADE
);

CREATE TABLE Nutrient (
    nutrient_id_pk SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    is_macro BOOLEAN DEFAULT FALSE,
    unit VARCHAR(10) NOT NULL
);

CREATE TABLE IngredientNutrientPivot (
    ingredient_nutrient_id_pk SERIAL PRIMARY KEY,
    ingredient_id_fk INTEGER NOT NULL REFERENCES INGREDIENT (ingredient_id_pk)
                     ON UPDATE CASCADE 
                     ON DELETE CASCADE,
    nutrient_id_fk INTEGER NOT NULL REFERENCES Nutrient (nutrient_id_pk)
                   ON UPDATE CASCADE 
                   ON DELETE CASCADE,
    quantity INTEGER NOT NULL DEFAULT 1
);


CREATE TABLE CUSTOMER (
    cust_id_pk SERIAL PRIMARY KEY,
    fname VARCHAR(30) NOT NULL,
    lname VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password_hash VARCHAR(50) NOT NULL
);

CREATE TABLE AllergyLabel (
    allergy_label_id_pk SERIAL PRIMARY KEY,
    cust_id_fk INTEGER NOT NULL REFERENCES CUSTOMER (cust_id_pk)
               ON UPDATE CASCADE 
               ON DELETE CASCADE,
    label_id INTEGER NOT NULL REFERENCES LABEL (label_id_pk)
             ON UPDATE CASCADE 
             ON DELETE CASCADE
);
