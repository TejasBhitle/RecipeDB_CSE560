import random
i = 0
outputLines = [ ]
# open(filename, )
with open("load_recipes.sql", 'r' , encoding="utf8") as input_file:
    while True:
         line = input_file.readline()
         if not line:
             break
         if line == " " or line =="\n":
             continue

        #  process(line)
         outputLines.append(line)
         i+=1
         print(str(i))


random.shuffle(outputLines)


with open("load_recipes_shuffled.sql", 'w+', encoding="utf8") as output:
      for item in outputLines:
            output.write("%s"  % item)