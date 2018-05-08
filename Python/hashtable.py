#!python

from likedlist import LinkedList


class HashTable(object):

    def __init__(self, init_size=8):
        '''Initialize this hash table with the given initial size'''
        self.buckets = [LinkedList() for i in range(init_size)]
        self.size = 0 # Number of key-value entries

    def _bucket_index(self, key):
        return hash(key) % len(buckets)

    def keys(self):
        '''Return a list with all the keys in this HashTable'''
        # Collect all keys in each of the buckets
        pass

    def values(self):
        '''Return a list of all the values in this HashTable'''
        pass

    def items(self):
        '''Return a list of all the entries in this HashTable'''
        pass

    def length(self):
        '''Return the number of key-value entries by traversing it's buckets'''
        pass

    def contains(self, key):
        '''Return a boolean value whether this hashtable contains a given key'''
        pass

    def get(self, key):
        '''Return the value associated with the given key, else raise KeyError'''
        pass

    def set(self, key, value):
        '''Insert or update the given key with its associated value'''
        pass

    def delete(self, key):
        '''Delete the given key and its associated value, or raise KeyError'''
        pass

    
