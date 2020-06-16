import pytest
from lib.tree import BinaryTree, ParseTree

def test_parse_tree():
    pt = ParseTree("( ( 10 + 5 ) * 3 )")
    assert pt.evaluate() == (10 + 5) * 3
