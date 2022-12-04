import random

recipe_id_pk_max = 1646
label_id_pk_max = 34
cust_id_pk_max = 1004
nutrient_id_pk_max = 30
ingredient_id_pk_max=113


def create_recipe_ingredient():
    sql = "INSERT INTO recipeingredientpivot(ingredient_id_fk, recipe_id_fk, num_of_units) VALUES"

    for i in range(1, recipe_id_pk_max+1):
        ingredients = []
        for _ in range(random.randint(0, 10)):
            ingredients.append(random.randint(1, ingredient_id_pk_max))
        
        ingredients = list(set(ingredients))
        for j in ingredients:
            queries.append(sql + "("+str(j)+", "+str(i)+", "+str(random.randint(1, 10))+");")
    
    queries.append("\n")


def create_ingredient_nutrient():
    sql = "INSERT INTO ingredientnutrientpivot(ingredient_id_fk, nutrient_id_fk, quantity) VALUES "

    for i in range(1, ingredient_id_pk_max+1):
        nutrients = []
        for _ in range(random.randint(0, 10)):
            nutrients.append(random.randint(1, nutrient_id_pk_max))
        
        nutrients = list(set(nutrients))
        for j in nutrients:
            queries.append(sql + "("+str(i)+", "+str(j)+", "+str(random.randint(1, 10))+");")
    
    queries.append("\n")


def create_recipe_label():
    sql = "INSERT INTO recipelabelspivot(recipe_id_fk, label_id_fk) VALUES "

    for i in range(1, recipe_id_pk_max+1):
        labels = []
        for _ in range(random.randint(0, 5)):
            labels.append(random.randint(1, label_id_pk_max))
        
        labels = list(set(labels))
        for j in labels:
            queries.append(sql + "("+str(i)+", "+str(j)+");")
    
    queries.append("\n")


def create_allergy_label():
    sql = "INSERT INTO allergylabel( cust_id_fk, label_id) VALUES "

    for i in range(1, cust_id_pk_max+1):
        
        if random.randint(0, 2) == 0:
            a_labels = []
            for _ in range(random.randint(0, 3)):
                a_labels.append(random.randint(1, label_id_pk_max))
            
            a_labels = list(set(a_labels))
            for j in a_labels:
                queries.append(sql + "("+str(i)+", "+str(j)+");")
    
    queries.append("\n")


queries = []
create_recipe_ingredient()
create_ingredient_nutrient()
create_recipe_label()
create_allergy_label()

with open("mappings_dml.sql", 'w+', encoding="utf8") as output:
    for item in queries:
            output.write("%s\n"  % item)