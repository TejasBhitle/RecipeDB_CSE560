from flask import Flask, request
import psycopg2
from psycopg2.extras import RealDictCursor
from flask_cors import CORS, cross_origin

app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'

conn = psycopg2.connect(
    host="localhost",
    database="recipeDB",
    user="postgres",
    password="pexplorer"
)


def execute_query(query1):
    curr = conn.cursor(cursor_factory=RealDictCursor)
    curr.execute(query1)
    return curr.fetchall()


@app.route('/hello')
@cross_origin()
def get_data1():
    return "Hello World"


@app.route('/get_data')
@cross_origin()
def get_data():
    query_arg = request.args.get("query")
    final_result = []

    if query_arg == 'recipe_sugar':
        sqlquery = """
        Select R.name, SUM(RIP.num_of_units * INP.quantity) as sugar_count
        from recipe R
        inner join RecipeIngredientPivot RIP on R.recipe_id_pk = RIP.recipe_id_fk
        inner join Ingredient I on I.ingredient_id_pk = RIP.ingredient_id_fk
        inner join IngredientNutrientPivot INP on I.ingredient_id_pk = INP.ingredient_id_fk
        inner join Nutrient N on N.nutrient_id_pk = INP.nutrient_id_fk
        where N.name = 'Sugars'
        group by R.name
        order by sugar_count desc
        limit 1
        """
        res = execute_query(sqlquery)
        for r in res:
            final_result.append({
                'param1': 'Recipe Name: ' + r['name'],
                'param2': 'Sugar Count: ',
                'param3': sqlquery,
                'param4': r['sugar_count']
            })
    elif query_arg == 'low_calorie_meal':
        sqlquery = """
        select R.recipe_id_pk, R.name, (I.calorie_per_unit * P.num_of_units) as Calorie_Count  
        from Recipe R
        inner join RecipeIngredientPivot P on R.recipe_id_pk = P.recipe_id_fk
        inner join Ingredient I on I.ingredient_id_pk = P.ingredient_id_fk
        order by (I.calorie_per_unit * P.num_of_units) desc
        limit 10;
        """
        res = execute_query(sqlquery)
        for r in res:
            final_result.append({
                'param1': 'Recipe Name: ' + r['name'],
                'param2': 'Calorie Count: ',
                'param3': sqlquery,
                'param4': r['Calorie_Count']
            })
    elif query_arg == 'common_macro_nutrient':
        sqlquery = """
        select N.name
        from Nutrient N
        inner join IngredientNutrientPivot P on N.nutrient_id_pk = P.nutrient_id_fk
        group by N.name
        order by count(1)
        limit 1
        """
        res = execute_query(sqlquery)
        for r in res:
            final_result.append({
                'param1': 'Name: Nutrient',
                'param2': 'Nutrient: ',
                'param3': sqlquery,
                'param4': r['name']
            })
    elif query_arg == 'quickest_breakfasts':
        sqlquery = """
        select recipe_id_pk, name, url
        from recipe
        where meal_type = 'Breakfast'
        order by servings desc
        limit 5
        """
        res = execute_query(sqlquery)
        for r in res:
            final_result.append({
                'param1': 'Recipe Name: ' + r['name'],
                'param2': 'Breakfast Recipe',
                'param3': sqlquery,
                'param4': r['url']
            })
    elif query_arg == 'recipe_least_ingredients':
        sqlquery = """
        select * from recipe 
        where recipe_id_pk in (
            select recipe_id_fk
            from recipeingredientpivot 
            group by recipe_id_fk
            order by count(ingredient_id_fk) 
            limit 1
        );
        """
        res = execute_query(sqlquery)
        for r in res:
            final_result.append({
                'param1': 'Recipe Name: ' + r['name'],
                'param2': 'Description: ' + r['description'],
                'param3': sqlquery,
                'param4': 'Prep Time: ' + r['prep_time'] + '  with  ' + 'Servings: ' + r['servings']
            })
    elif query_arg == 'customer_non_veg':
        sqlquery = """
        select C.fname, C.lname, L.name as Does_Not_Like 
        from customer C
        inner join allergylabel A on C.cust_id_pk = A.cust_id_fk
        inner join Label L on L.label_id_pk = A.label_id
        where L.name = 'Non Veg'
        limit 15
        """
        res = execute_query(sqlquery)
        for r in res:
            final_result.append({
                'param1': 'Customer Name: ' + r['fname'] + ' ' + r['lname'] ,
                'param2': 'Description: ' + r['description'],
                'param3': sqlquery,
                'param4': 'Prep Time: ' + r['prep_time'] + '  with  ' + 'Servings: ' + r['servings']
            })
    elif query_arg == 'recipe_highest_servings':
        sqlquery = """
        select name, servings
        from recipe
        where meal_type = 'Full-Meal'
        order by servings desc
        limit 5
        """
        res = execute_query(sqlquery)
        for r in res:
            final_result.append({
                'param1': 'Recipe Name: ' + r['name'],
                'param2': 'Servings: ',
                'param3': sqlquery,
                'param4': r['servings']
            })
    elif query_arg == 'chicken_recipes':
        sqlquery = """
        select name, description, meal_type, url
        from recipe 
        where name like '%Chicken%'
        limit 15
        """
        res = execute_query(sqlquery)
        for r in res:
            final_result.append({
                'param1': 'Recipe Name: ' + r['name'] + ' (' + r['meal_type'] + ' Meal)',
                'param2': 'Description: ' + r['description'],
                'param3': sqlquery,
                'param4': r['url']
            })

    return final_result


if __name__ == '__main__':
    app.run()
