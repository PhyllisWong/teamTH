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
        all_keys = []
        for bucket in self.buckets:
            for key, value in bucket.items:
                all_keys.append(key)
        return all_keys

    def values(self):
        '''Return a list of all the values in this HashTable'''
        all_values = []
        for bucket in self.buckets:
            for key, value in bucket.items:
                all_values.append(value)
        return all_values

    def items(self):
        '''Return a list of all the entries in this HashTable'''
        all_items = []
        for bucket in self.buckets:
            # extend appends each item of an iterable
            all_items.extend(bucket.items())
        return all_items

    def length(self):
        '''Return the number of key-value entries by traversing it's buckets'''
        item_count = 0
        for bucket in self.buckets:
            item_count += len(bucket)
        self.size = item_count
        return item_count

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
