#!python

from hashtable import HashTable
from linkedlist import LinkedList

class Set(object):

    def __init__(self, elements=None):
        '''Initialize a new empty set structure, and add each element if a sequence is given.'''
        self.data = HashTable(8)
        self.size = 0 # Number of entries

    def contains(self, element):
        '''Return a boolean indicating whether element is in this set'''
        '''Use the method from the HashTable clss to test if contains'''
        pass

    def add(self, element):
        '''Add element to this set, if not present already'''
        # Use hashtable set func, takes a key-value pair
        pass

    def remove(self, element):
        '''Remove element from this set, if present, or else raise KeyError'''
        pass

    def union(self, other_set):
        '''Return a new set that is the union of this set and other_set'''
        pass

    def intersection(self, other_set):
        '''Return a new set that is comprised of all the elements present in both sets'''
        pass

    def difference(self, other_set):
        '''Return a new set that is comprised of elements that are only in set1 and set2'''
        pass

    def is_subset(self, other_set):
        '''Return a boolean indicating whether other_set is comprised of only elements
        that are in set1.'''
        pass
        
