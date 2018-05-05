
def printNums(n, i=1):

    if i < n + 1:
        print(i)
        printNums(n, i+1)


printNums(20)



"""
  Given:

    You are given a rectangular black & white image
    as a 2D array of zeros and ones: 0 = black, 1 = white.
    Within that image there is one and only one white
    rectangle.

  Problem:

    Find the white rectangle.  Solution can be expressed
    as coordinates of the opposing corners; or a coordinate
    of one corner, width, and height of the rectangle.

"""

# Iterate through the outter list
# Interate through the inner lists
# look for 1's that are next to each other
# look for all the inner lists that have the same indices of 1's
# Output, coordinate ex. (0, 0)

def findRect(image):
    first_coord = 0
    last_coord = 0

    for _list in range(len(image)):
        inner_list = image[_list]

        for i in range(len(inner_list)):

            if inner_list[i] == 1:
                if first_coord == 0:
                    first_coord = (i, _list)
                    first_coord = ('first_coord: {}'.format(first_coord))

            if  inner_list[i] == 1 and inner_list[i+1] == 0:
                last_coord = (i, _list)
                last_coord = ('first_coord: {}'.format(last_coord))
                
    print(first_coord, last_coord)


image = [
  [0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
]

findRect(image)
