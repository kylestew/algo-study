import pytest
from lib.stack import Stack, parChecker

class TestStack:

    def test_balanced_parens(self):
        parens = "((()))"
        assert parChecker(parens) == True

    def test_unbalanced_parens(self):
        parens = "((())"
        assert parChecker(parens) == False

    def test_over_pop_parens(self):
        parens = "((())))"
        assert parChecker(parens) == False

    def test_tricky_parens(self):
        parens = "((0))((()(2)))"
        assert parChecker(parens) == True

    def test_empty_is_balanced(self):
        parens = ""
        assert parChecker(parens) == True
        
