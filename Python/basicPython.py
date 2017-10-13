"""This is the file to collect lessons from Treehouse."""

print('Hello World!')
# Different errors:
# [NameError, unsupported operand type(s), SyntaxError, EOL = end of line]

"""Variables"""
fav_fruit = 'blueberries'
fav_num = 14

years = 41
days = years * 365
weeks = days / 7

flavors = ['chocolate', 'mint', 'strawberry']
strFlavors = ', '.join(flavors)

# print("My favorite flavors are " + strFlavors)
print("My favorite flavors are: {}".format(", ".join(flavors)))

available = "banana split;hot fudge;cherry;malted;black and white"
sundaes = available.split(';')
print(sundaes)

var_one = 'hellot world'
print(var_one[5])
var_two = 'hellot world'
print(var_two[-2])
