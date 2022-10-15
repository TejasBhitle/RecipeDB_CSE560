-- Creating Labels
INSERT INTO label(name) VALUES ('Dairy-Free');
INSERT INTO label(name) VALUES ('Peanut-Free');
INSERT INTO label(name) VALUES ('Tree-Nut-Free');
INSERT INTO label(name) VALUES ('Soy-Free');
INSERT INTO label(name) VALUES ('Fish-Free');
INSERT INTO label(name) VALUES ('Shellfish-Free');
INSERT INTO label(name) VALUES ('Pork-Free');
INSERT INTO label(name) VALUES ('Red-Meat-Free');
INSERT INTO label(name) VALUES ('Crustacean-Free');
INSERT INTO label(name) VALUES ('Celery-Free');
INSERT INTO label(name) VALUES ('Mustard-Free');
INSERT INTO label(name) VALUES ('Non Veg');
INSERT INTO label(name) VALUES ('Mollusk-Free');
INSERT INTO label(name) VALUES ('Alcohol-Free');
INSERT INTO label(name) VALUES ('Sulfite-Free');
INSERT INTO label(name) VALUES ('Vegan');
INSERT INTO label(name) VALUES ('Vegetarian');

-- Creating nutrients
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Energy', TRUE,'kcal');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Fat', TRUE,'g');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Sugars', TRUE,'g');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Carbohydrates', TRUE,'g');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Fiber', TRUE,'g');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Vitamin C', FALSE,'mg');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Vitamin A', FALSE,'mg');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Vitamin D', FALSE,'mg');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Water', TRUE,'g');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Cholesterol', FALSE,'mg');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Sodium', FALSE,'mg');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Calcium', FALSE,'mg');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Iron', FALSE,'mg');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Zinc', FALSE,'mg');
INSERT INTO nutrient(name, is_macro, unit) VALUES ('Phosphorus', FALSE,'mg');


-- Creating recipe
INSERT INTO recipe(name, description, prep_time, meal_type, servings, img_url, url)
VALUES (
    'Green salad with avocado', 
    'A simple, fresh-tasting salad to serve as part of a summery buffet', 
    30, 
    'Snack', 
    2, 
    'https://edamam-product-images.s3.amazonaws.com/web-img/ffb/ffb0fd1a00346183ed14d76486201470.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEA4aCXVzLWVhc3QtMSJGMEQCIAixgrY3s0Oq8TdTG9S6LlZ%2Fj4eqJUQeGdgeZc1XVAqJAiAk0r1Q0xmFtgetwyzXRYnHaa978M76vz9hpJcnY3OLzirVBAjX%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDE4NzAxNzE1MDk4NiIMT%2FfcOY9h%2FcE5RLVOKqkE%2FWb5ECMkrIsOMY4GMQ3FpGrhRMNE%2Bg%2BxwsYrWrtjgL4FtdUX50jxD85lr0VbMZilTfEfdVFBO50PHfjLxjxQ9CNXu7%2FODpF6KM3P7svAqQ3vaOR4bjO3gIpV8cmk8uZxyRKvWaf3qTF%2FUXP%2BsLXFDVS4562CeBDQ2ciGKOYfpIqMUgSqU9xxf67Ebqy58iN9x8aVg5xti8STVG1cI8zdRN%2F1B4yUdaB5y8KE0Ma3fy44lioTKMiuLkLZaS3B%2Bei6n6LZhE4zJmZEkXXLlbC8QpGJGxXeabDCwIpGJMmJ76nCV8z%2FZxkk6GbFZCI4pw3QEw7uhti9ft9CJKuqiLtcm79LXxJMSJ8s8v44qmZyJswS7JNgB6nSTvStZFigVb1h3hfR9oMyz6IjtwaPRYYuIirvdcaJarPunGr5KR8dm%2FdMs%2BsdOcazNMK%2BtlXy%2BjorNsGg31K5uYZ6zJ5izJbXqij4UuonOENGMXZsSNve%2BbmAXapJ83D798IUsanKXNRPGDDO3jPYXyk4YM1S3VEs8slGBJRDd%2Br2Z8fRMm2kA3yco0gYSCWeBHdz2udTNKFV3UVO1DP9SCzROOIJQJsHB6nQMC0Ll%2FfemY9qqLb8ipjrwD2sV0MSkpGsrprbDW4W3W%2BzXp%2FpOW8tXeJQVZQoIndgtoWjWsBi2CVeKDCrJtYFcwG5eJg5KvUJ9H%2FexlAXEx9GYQmRGb62Bzi4W%2FtLRrKZ%2F6gCSzxzEzCd8qqaBjqqAV75GitSmZPEEvVvw8hjb1%2FBcuItDhd%2BgHwralJgwcg3fDZQOQzwhqk5OzSd7j43NzykOxUe3vEcK1MFHgS3Seygqx5sZKjeGwOxFvCxuM2j2EcVIW5hwlSt5ptnKnYZXvK0MHzWgxIIiP1ErIcpC%2BylFhK3Zle3FQO6jaH3mMD4PJRg%2FxJvGsrjv3T4%2BHFDUa%2Bdhc%2B4ocakhdcGh7flHAVNG8%2BvB3imoYd7&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221015T151928Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFN3CF67NV%2F20221015%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=5b715bffb6e3b762b9b46a7ce6e88e6021ac5344b1c34a851b2f98c3b023d602',
    'https://www.bbcgoodfood.com/recipes/green-salad-avocado'
);

INSERT INTO recipe(name, description, prep_time, meal_type, servings, img_url, url)
VALUES (
    'Chicken and Dumplings', 
    'A family favorite chicken recipe', 
    45, 
    'Full-Meal', 
    16, 
    'https://edamam-product-images.s3.amazonaws.com/web-img/51e/51ec6da33b8078114bf995d4b5d2a682-s.JPG?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEA4aCXVzLWVhc3QtMSJGMEQCIAixgrY3s0Oq8TdTG9S6LlZ%2Fj4eqJUQeGdgeZc1XVAqJAiAk0r1Q0xmFtgetwyzXRYnHaa978M76vz9hpJcnY3OLzirVBAjX%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDE4NzAxNzE1MDk4NiIMT%2FfcOY9h%2FcE5RLVOKqkE%2FWb5ECMkrIsOMY4GMQ3FpGrhRMNE%2Bg%2BxwsYrWrtjgL4FtdUX50jxD85lr0VbMZilTfEfdVFBO50PHfjLxjxQ9CNXu7%2FODpF6KM3P7svAqQ3vaOR4bjO3gIpV8cmk8uZxyRKvWaf3qTF%2FUXP%2BsLXFDVS4562CeBDQ2ciGKOYfpIqMUgSqU9xxf67Ebqy58iN9x8aVg5xti8STVG1cI8zdRN%2F1B4yUdaB5y8KE0Ma3fy44lioTKMiuLkLZaS3B%2Bei6n6LZhE4zJmZEkXXLlbC8QpGJGxXeabDCwIpGJMmJ76nCV8z%2FZxkk6GbFZCI4pw3QEw7uhti9ft9CJKuqiLtcm79LXxJMSJ8s8v44qmZyJswS7JNgB6nSTvStZFigVb1h3hfR9oMyz6IjtwaPRYYuIirvdcaJarPunGr5KR8dm%2FdMs%2BsdOcazNMK%2BtlXy%2BjorNsGg31K5uYZ6zJ5izJbXqij4UuonOENGMXZsSNve%2BbmAXapJ83D798IUsanKXNRPGDDO3jPYXyk4YM1S3VEs8slGBJRDd%2Br2Z8fRMm2kA3yco0gYSCWeBHdz2udTNKFV3UVO1DP9SCzROOIJQJsHB6nQMC0Ll%2FfemY9qqLb8ipjrwD2sV0MSkpGsrprbDW4W3W%2BzXp%2FpOW8tXeJQVZQoIndgtoWjWsBi2CVeKDCrJtYFcwG5eJg5KvUJ9H%2FexlAXEx9GYQmRGb62Bzi4W%2FtLRrKZ%2F6gCSzxzEzCd8qqaBjqqAV75GitSmZPEEvVvw8hjb1%2FBcuItDhd%2BgHwralJgwcg3fDZQOQzwhqk5OzSd7j43NzykOxUe3vEcK1MFHgS3Seygqx5sZKjeGwOxFvCxuM2j2EcVIW5hwlSt5ptnKnYZXvK0MHzWgxIIiP1ErIcpC%2BylFhK3Zle3FQO6jaH3mMD4PJRg%2FxJvGsrjv3T4%2BHFDUa%2Bdhc%2B4ocakhdcGh7flHAVNG8%2BvB3imoYd7&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221015T143049Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFN3CF67NV%2F20221015%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=b75e0c0bc524befe8c917b9ff3674fe003057f47a24e5b2f978d13c48502b587',
    'https://food52.com/recipes/11995-chicken-and-dumplings'
);


INSERT INTO recipe(name, description, prep_time, meal_type, servings, img_url, url)
VALUES (
    'Popeye Tso Chicken', 
    'High Protein chicken recipe', 
    30, 
    'Full-Meal', 
    4, 
    'https://edamam-product-images.s3.amazonaws.com/web-img/0c5/0c5ba5e925e8de4a16deaa1864cb1812-s.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEA4aCXVzLWVhc3QtMSJGMEQCIAixgrY3s0Oq8TdTG9S6LlZ%2Fj4eqJUQeGdgeZc1XVAqJAiAk0r1Q0xmFtgetwyzXRYnHaa978M76vz9hpJcnY3OLzirVBAjX%2F%2F%2F%2F%2F%2F%2F%2F%2F%2F8BEAAaDDE4NzAxNzE1MDk4NiIMT%2FfcOY9h%2FcE5RLVOKqkE%2FWb5ECMkrIsOMY4GMQ3FpGrhRMNE%2Bg%2BxwsYrWrtjgL4FtdUX50jxD85lr0VbMZilTfEfdVFBO50PHfjLxjxQ9CNXu7%2FODpF6KM3P7svAqQ3vaOR4bjO3gIpV8cmk8uZxyRKvWaf3qTF%2FUXP%2BsLXFDVS4562CeBDQ2ciGKOYfpIqMUgSqU9xxf67Ebqy58iN9x8aVg5xti8STVG1cI8zdRN%2F1B4yUdaB5y8KE0Ma3fy44lioTKMiuLkLZaS3B%2Bei6n6LZhE4zJmZEkXXLlbC8QpGJGxXeabDCwIpGJMmJ76nCV8z%2FZxkk6GbFZCI4pw3QEw7uhti9ft9CJKuqiLtcm79LXxJMSJ8s8v44qmZyJswS7JNgB6nSTvStZFigVb1h3hfR9oMyz6IjtwaPRYYuIirvdcaJarPunGr5KR8dm%2FdMs%2BsdOcazNMK%2BtlXy%2BjorNsGg31K5uYZ6zJ5izJbXqij4UuonOENGMXZsSNve%2BbmAXapJ83D798IUsanKXNRPGDDO3jPYXyk4YM1S3VEs8slGBJRDd%2Br2Z8fRMm2kA3yco0gYSCWeBHdz2udTNKFV3UVO1DP9SCzROOIJQJsHB6nQMC0Ll%2FfemY9qqLb8ipjrwD2sV0MSkpGsrprbDW4W3W%2BzXp%2FpOW8tXeJQVZQoIndgtoWjWsBi2CVeKDCrJtYFcwG5eJg5KvUJ9H%2FexlAXEx9GYQmRGb62Bzi4W%2FtLRrKZ%2F6gCSzxzEzCd8qqaBjqqAV75GitSmZPEEvVvw8hjb1%2FBcuItDhd%2BgHwralJgwcg3fDZQOQzwhqk5OzSd7j43NzykOxUe3vEcK1MFHgS3Seygqx5sZKjeGwOxFvCxuM2j2EcVIW5hwlSt5ptnKnYZXvK0MHzWgxIIiP1ErIcpC%2BylFhK3Zle3FQO6jaH3mMD4PJRg%2FxJvGsrjv3T4%2BHFDUa%2Bdhc%2B4ocakhdcGh7flHAVNG8%2BvB3imoYd7&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20221015T143049Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFN3CF67NV%2F20221015%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=72d1d8cf8f67dfac9b0359d52d333946500473c1b95283e15174c89b9b8524ce',
    'https://www.seriouseats.com/popeye-tsos-chicken-general-tsos-chicken-made-with-popeyes-chicken-nuggets-recipe'
);


-- Creating Incredients
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Lemon Juice', 10, 'tbsp' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Salt', 5, 'pinch' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Olive oil', 1, 'tbsp' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Avocado', 20, 'tbsp' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Chopped Chives', 25, 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Chicken stock', 40, 'ml' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Soy sauce', 5, 'tablespoon' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Cornstarch', 2, 'teaspoon' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Ramen noodles', 40, 'pack' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Egg', 25, 'unit' );



-- Creating recipeingredientpivot
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 1, 5, 1);
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 2, 5, 1);
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 3, 5, 3);
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 4, 5, 2);
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 5, 5, 30);

INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 6, 6, 400);
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 7, 6, 20);
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 8, 6, 5);
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 2, 6, 2);

INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 6, 7, 600);
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 9, 7, 1);
INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES ( 10, 7, 2);


-- Creating recipelabelspivot
INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (5, 1);
INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (5, 2);
INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (5, 3);
INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (5, 17);

INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (6, 8);
INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (6, 2);
INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (6, 12);

INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (6, 7);
INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (6, 12);
INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES (6, 13);


-- Creating ingredientnutrientpivot
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (1, 3, 2);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (1, 6, 4);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (1, 7, 2);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (2, 11, 5);

INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (3, 2, 10);

INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (4, 13, 5);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (4, 14, 4);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (4, 15, 3);

INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (5, 4, 3);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (5, 5, 4);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (5, 9, 1);

INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (6, 11, 5);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (6, 12, 6);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (6, 13, 3);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (6, 14, 7);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (6, 15, 8);

INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (9, 5, 4);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (9, 8, 4);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (9, 3, 1);
INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES (9, 4, 6);


-- Creating customer
INSERT INTO customer(fname, lname, email, password_hash) 
VALUES ('Pam', 'Beasly', 'PamBeasly@dmifflin.com', '2FODpF6KM3P7svAqQ3v');
INSERT INTO customer(fname, lname, email, password_hash) 
VALUES ('Jim', 'Halpert', 'JimHalpert@dmifflin.com', 'aOR4bjO3gIpV8cmke3r');
INSERT INTO customer(fname, lname, email, password_hash) 
VALUES ('Michael', 'Scott', 'MichaelScott@dmifflin.com','8uZxyRKvWaf3qTFjOgI');
INSERT INTO customer(fname, lname, email, password_hash) 
VALUES ('Dwight', 'Schrute', 'DwightSchrute@dmifflin.com','F6KMbjO3gIpV3P7svA');


-- Creating allergylabel
INSERT INTO allergylabel( cust_id_fk, label_id) VALUES (4, 12);
INSERT INTO allergylabel( cust_id_fk, label_id) VALUES (7, 17);
INSERT INTO allergylabel( cust_id_fk, label_id) VALUES (6, 1);