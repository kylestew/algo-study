import pytest
from lib.stack import Stack, parChecker, postfixEval

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
        parens = '{({([][])}())}'
        assert parChecker(parens) == True

    def test_broken_multicase(self):
        parens = '[{()]'
        assert parChecker(parens) == False

    def test_empty_is_balanced(self):
        parens = ""
        assert parChecker(parens) == True

    def test_postfix_simple_op(self):
        op = "7 8 +"
        assert postfixEval(op) == 15

    def test_postfix_complex_op(self):
        op = "7 8 + 3 2 + /"
        assert postfixEval(op) == 3

        
