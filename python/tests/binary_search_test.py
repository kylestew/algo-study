import pytest
from lib.binary_search import binarySearch

class TestBinarySearch:
    def test_find_value(self):
        primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
        assert binarySearch(primes, 73) == 20

    def test_value_not_found(self):
        primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
        assert binarySearch(primes, 8) == -1

    def test_empty_search(self):
        assert binarySearch([], 8) == -1

        
