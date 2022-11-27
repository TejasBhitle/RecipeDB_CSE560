-- Creating Labels
INSERT INTO label(name) VALUES 
('Dairy-Free'),
('Peanut-Free'),
('Tree-Nut-Free'),
('Soy-Free'),
('Fish-Free'),
('Shellfish-Free'),
('Pork-Free'),
('Red-Meat-Free'),
('Crustacean-Free'),
('Celery-Free'),
('Mustard-Free'),
('Non Veg'),
('Mollusk-Free'),
('Alcohol-Free'),
('Sulfite-Free'),
('Vegan'),
('Vegetarian'),
('Balanced'),
('High-Fiber'),
('High-Protein'),
('Keto'),
('Kidney friendly'),
('Kosher'),
('Low-Carb'),
('Low-Fat'),
('Low potassium'),
('Low-Sodium'),
('No oil added'),
('No-sugar'),
('Paleo'),
('Pescatarian'),
('Pork-free'),
('Red meat-free'),
('Sugar-conscious');

-- Creating nutrients
INSERT INTO nutrient(name, is_macro, unit) VALUES
('Energy', TRUE,'kcal'),
('Fat', TRUE,'g'),
('Sugars', TRUE,'g'),
('Carbohydrates', TRUE,'g'),
('Fiber', TRUE,'g'),
('Vitamin C', FALSE,'mg'),
('Vitamin A', FALSE,'mg'),
('Vitamin D', FALSE,'mg'),
('Water', TRUE,'g'),
('Cholesterol', FALSE,'mg'),
('Sodium', FALSE,'mg'),
('Calcium', FALSE,'mg'),
('Iron', FALSE,'mg'),
('Zinc', FALSE,'mg'),
('Phosphorus', FALSE,'mg'),
('Saturated', TRUE, 'g'),
('Trans', TRUE, 'g'),
('Monounsaturated', TRUE, 'g'),
('Polyunsaturated', TRUE, 'g'),
('Protein', TRUE, 'g'),
('Magnesium', FALSE, 'mg'),
('Potassium', FALSE, 'mg'),
('Vitamin A', FALSE, 'mg'),
('Vitamin C', FALSE, 'mg'),
('Thiamin (B1)', FALSE, 'mg'),
('Riboflavin (B2)', FALSE, 'mg'),
('Niacin (B3)', FALSE, 'mg'),
('Vitamin B6', FALSE, 'mg'),
('Folate', FALSE, 'mg'),
('Vitamin B12', FALSE, 'mg'),
('Vitamin E', FALSE, 'mg'),
('Vitamin K', FALSE, 'mg');


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
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Chopped Chives', 25, 'unit');
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Chicken stock', 40, 'ml');
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Soy sauce', 5, 'tablespoon');
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Cornstarch', 2, 'teaspoon');
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Ramen noodles', 40, 'pack');
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Egg', 25, 'unit' );

INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Milk', 80, 'litre' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Sugar', 10, 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Potato', 20, 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Garlic', 20, 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Spinach', 20, 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Artichoke', '47', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Arugula', '25', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Asparagus', '20', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Aubergine', '25', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Beetroot', '43', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Bell Pepper', '20', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Black Olives', '115', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Broccoli', '34', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Brussels Sprouts', '43', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Cabbage', '25', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Capsicum', '27', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Carrot', '41', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Cauliflower', '25', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Celery', '16', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Chard', '19', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Cherry Tomato', '100', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Chicory', '72', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Chinese Cabbage', '16', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Chives', '30', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Collard Greens', '32', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Corn', '365', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Courgette', '17', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Creamed Spinach', '74', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Cucumber', '16', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Eggplant', '25', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Endive', '17', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Fennel', '31', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Garlic', '149', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Gherkin', '14', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Gourd', '14', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Green Beans', '31', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Green Olives', '115', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Green Onion', '32', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Horseradish', '48', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Kale', '49', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Kohlrabi', '27', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Kumara', '86', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Leek', '61', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Lettuce', '15', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Mushrooms', '22', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Mustard Greens', '27', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Nori', '35', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Okra', '33', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Olives', '115', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Onion', '40', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Parsnips', '75', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Peas', '81', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Pepper', '27', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Potato', '77', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Pumpkin', '26', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Radishes', '16', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Red Cabbage', '31', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Rutabaga', '38', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Shallots', '72', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Spinach', '23', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Squash', '45', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Sweet Potato', '86', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Tomato', '18', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Turnip Greens', '20', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Turnips', '28', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Wasabi', '109', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Winter Squash', '34', 'unit' );
INSERT INTO ingredient(name, calorie_per_unit, measure_type) VALUES ('Zucchini', '17', 'unit' );




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