#include <gtest/gtest.h>

#include "BST.h"

TEST(BinarySearchTreeFixture, EmptyTree) {
    BST t;
    EXPECT_EQ(t.size(), 0);
}

TEST(BinarySearchTreeFixture, InsertValue) {
    BST t;
    t.insert(20);
    EXPECT_EQ(t.size(), 1);
}

TEST(BinarySearchTreeFixture, InsertMultipleValues) {
    BST t;
    t.insert(20);
    t.insert(25);
    t.insert(15);
    EXPECT_EQ(t.size(), 3);
}
