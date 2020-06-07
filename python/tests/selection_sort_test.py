import pytest
from lib.selection_sort import selectionSort

class TestSelectionSort:
    def test_simple_sort(self):
        array = [22, 11, 99, 88, 9, 42, 7]
        expected = [7, 9, 11, 22, 42, 88, 99]
        assert selectionSort(array) == expected

    def test_sort_empty(self):
        array = []
        expected = []
        assert selectionSort(array) == expected

