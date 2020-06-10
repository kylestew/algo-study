#include <gtest/gtest.h>

#include <stack>
#include <string>

using namespace std;

string divideBy2(int decNumber) {
    stack<int> remstack;

    while (decNumber > 0) {
        // if /2 has a remainder, a 1 exist at the current LSB
        int rem = decNumber % 2;
        remstack.push(rem);
        decNumber /= 2;
    }

    // stack now contains binary version of decimal number
    // convert to string
    string binString = "";
    while (!remstack.empty()) {
        binString.append(to_string(remstack.top()));
        remstack.pop();
    }

    return binString;
}

TEST(StackTests, ConvertSimple) {
    int given = 42;
    string expected = "101010";
    string result = divideBy2(given);
    EXPECT_EQ(result, expected);
}

/*
TEST(StackTests, InsertValue) {
    BST t;
    t.insert(20);
    EXPECT_EQ(t.size(), 1);
}

TEST(StackTests, InsertMultipleValues) {
    BST t;
    t.insert(20);
    t.insert(25);
    t.insert(15);
    EXPECT_EQ(t.size(), 3);
}
*/
