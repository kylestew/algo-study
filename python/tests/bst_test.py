import pytest
from lib.bst import BinarySearchTree, TreeNode

class TestBinarySearchTree:

    def test_data_is_retained(self):
        expected = TreeNode("4", None, None)
        bst = BinarySearchTree(["4"])
        self.assertTreeEqual(bst.data(), expected)

    def test_smaller_number_at_left_node(self):
        expected = TreeNode("4", TreeNode("3", None, None), None)
        bst = BinarySearchTree(["4", "3"])
        self.assertTreeEqual(bst.data(), expected)

    def test_same_number_at_left_node(self):
        expected = TreeNode("4", TreeNode("4", None, None), None)
        self.assertTreeEqual(BinarySearchTree(["4", "4"]).data(), expected)

    def test_greater_number_at_right_node(self):
        expected = TreeNode("4", None, TreeNode("5", None, None))
        self.assertTreeEqual(BinarySearchTree(["4", "5"]).data(), expected)

    def test_can_create_complex_tree(self):
        expected = TreeNode(
            "4",
            TreeNode("2", TreeNode("1", None, None), TreeNode("3", None, None)),
            TreeNode("6", TreeNode("5", None, None), TreeNode("7", None, None)),
        )
        self.assertTreeEqual(
            BinarySearchTree(["4", "2", "6", "1", "3", "5", "7"]).data(), expected
        )

    def test_can_sort_single_number(self):
        expected = ["2"]
        assert BinarySearchTree(["2"]).sorted_data() == expected

    def test_can_sort_if_second_number_is_smaller_than_first(self):
        expected = ["1", "2"]
        assert BinarySearchTree(["2", "1"]).sorted_data() == expected

    def test_can_sort_if_second_number_is_same_as_first(self):
        expected = ["2", "2"]
        assert BinarySearchTree(["2", "2"]).sorted_data() == expected

    def test_can_sort_if_second_number_is_greater_than_first(self):
        expected = ["2", "3"]
        assert BinarySearchTree(["2", "3"]).sorted_data() == expected

    def test_can_sort_complex_tree(self):
        expected = ["1", "2", "3", "5", "6", "7"]
        assert BinarySearchTree(["2", "1", "3", "6", "7", "5"]).sorted_data() == expected

    # Utilities
    def assertTreeEqual(self, tree_one, tree_two):
        """
        Two trees are equal if the data at each node is equal
        and the tree structures are the same.
        Use a recursive approach to visit all nodes in the tree.
        """
        assert tree_one.data == tree_two.data

        # compare left tree
        assert (tree_one.left is None) == (tree_two.left is None), "left tree path is not equal"
        if tree_one.left and tree_two.left:
            self.assertTreeEqual(tree_one.left, tree_two.left)

        # compare right tree
        assert (tree_one.right is None) == (tree_two.right is None), "right tree path is not equal"
        if tree_one.right and tree_two.right:
            self.assertTreeEqual(tree_one.right, tree_two.right)

