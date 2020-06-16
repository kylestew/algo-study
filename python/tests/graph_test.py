import pytest
from lib.graph import SimpleGraph, breadth_first_search

example_graph = SimpleGraph()
example_graph.edges = {
    'A': ['B'],
    'B': ['A', 'C', 'D'],
    'C': ['A'],
    'D': ['E', 'A'],
    'E': ['B']
}

def test_simple_graph():
    assert example_graph.neighbors('B') == ['A', 'C', 'D']

def test_breadth_first_search():
    expected = {'A': None, 'B': 'A', 'C': 'B', 'D': 'B', 'E': 'D' }
    assert breadth_first_search(example_graph, 'A') == expected

