import sys
from treelib import *
from treelib.tree import DuplicatedNodeIdError
from itertools import izip_longest


def createTree():
    items = [1, 2, 3, 4, 5, 6, 7]
    # tree = BinarySearchTree(items)
    tree = Tree(items)
    return tree


def check(self, root, min, max):
    print('min: {}, max: {}'.format(min, max))
    if root == None:
        return True
    if root.data <= min or root.data >= max:
        return False
    return check(root.left, min, root.data) and check(root.right, root.data, max)


def check_binary_search_tree_(self, root):
    return check(root, float('-inf'), float('inf'))


def test_binary_search_tree(tree):
    node = Node(root.data)
    node.check_binary_search_tree_(root)



def main(self):
    tree = createTree()
    print(tree)




if __name__ == '__main__':
      # main()
    test_binary_search_tree()
