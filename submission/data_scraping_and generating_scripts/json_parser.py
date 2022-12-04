import json
import random

if __name__ == '__main__':

    # JSON file
    f = open('input.json', "r")

    starting = [
        "A simple, fresh-tasting to serve as a part of family buffet",
        "A family favorite ",
        "High Protein recipe",
        "A healthy and tasty recipe",
        "An absolute delicacy whose taste will last long",
        "A excellent savoury recipe",
        "A well-prepared delectable meal with great presentation and an interesting flavor you have never experienced before.",
        "The food of the gods",
        "This appetizing dish was prepared with great care and attention to detail",
        "A divine combination of different food elements came together to create this innovative dish",
        "The most luscious dishes",
        "A lip-smacking experience",
        "Add a whole new dimension to the taste with this recipe",
        "A recipe that will seriously make you hungry",
        "The recipe of your dreams",
        "An absolute delight to eat",
        "A pleasant looking recipe",
        "A exquisite recipe that will touch your hearts",
        "A homely beautiful recipe",
        "A wholesome and refreshing recipe"
    ]

    # Reading from file
    data = json.loads(f.read())

    SQL = 'INSERT INTO recipe(name, description, prep_time, meal_type, servings, img_url, url) VALUES'

    dda = data['hits']
    for d in dda:
        recipe = d['recipe']
        recipename = recipe['label']
        description = random.choice(starting)
        prep_time = random.choice(range(30, 130))
        meal_type = recipe['mealType'][0]
        servings = random.choice([1, 2, 4])
        img_url = recipe['images']['SMALL']['url']
        url = recipe['uri']
        print(
            "{SQL} ('{recipename}', '{description}', {preptime}, '{mealtype}', {serving}, '{imageurl}', '{url}');".format(
                recipename = recipename, description = description, preptime = prep_time, mealtype = meal_type, serving = servings, imageurl = img_url, url = url)
        )
