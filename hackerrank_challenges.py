a = fsqoiaidfaukvngpsugszsnseskicpejjvytviya
b = ksmfgsxamduovigbasjchnoskolfwjhgetnmnkmcphqmpwnrrwtymjtwxget

#
# We define an hourglass in  to be a subset of values with indices falling in this pattern in 's graphical representation:
#
# a b c
#   d
# e f g
# There are  hourglasses in , and an hourglass sum is the sum of an hourglass' values.
#
# Task
# Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum.
#
# Note: If you have already solved the Java domain's Java 2D Array challenge, you may wish to skip this challenge.
#
# Input Format
#
# There are  lines of input, where each line contains  space-separated integers describing 2D Array ; every value in  will be in the inclusive range of  to .
#
# Constraints
#
# Output Format
#
# Print the largest (maximum) hourglass sum found in .
# */
# def number_needed(a, b):
#     count = 0
#
#     list_a = list(a)
#     set_a = sorted(list(set(a)))
#     count += len(list_a) - len(set_a)
#
#     list_b = list(b)
#     set_b =  sorted(list(set(b)))
#     count += len(list_b) - len(set_b)
#
#     for i in set_a:
#         if i not in set_b:
#             count += 1
#     for j in set_b:
#         if j not in set_a:
#             count += 1
#     return count
#
#
# a = input().strip()
# b = input().strip()
#
# print(number_needed(a, b))


# import sys
# from treelib import *
# from treelib.tree import DuplicatedNodeIdError
# from itertools import izip_longest
#
#
# def createTree():
#     items = [1, 2, 3, 4, 5, 6, 7]
#     # tree = BinarySearchTree(items)
#     tree = Tree(items)
#     return tree
#
#
# def check(self, root, min, max):
#     print('min: {}, max: {}'.format(min, max))
#     if root == None:
#         return True
#     if root.data <= min or root.data >= max:
#         return False
#     return check(root.left, min, root.data) and check(root.right, root.data, max)
#
#
# def check_binary_search_tree_(self, root):
#     return check(root, float('-inf'), float('inf'))
#
#
# def test_binary_search_tree(tree):
#     node = Node(root.data)
#     node.check_binary_search_tree_(root)

for j in range(1,n-1):
    if (a[i][j] > a[i+1][j] and a[i][j] > a[i-1][j] and
        a[i][j] > a[i][j+1] and a[i][j] > a[i][j-1]):
        a[i][j]="X"


def main(self):
    # tree = createTree()
    # print(tree)




if __name__ == '__main__':
      main()
    # test_binary_search_tree()
