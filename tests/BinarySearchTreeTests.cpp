#include "gtest/gtest.h"

//#include "BinarySearchTree.h"

TEST(BinarySearchTreeFixture, InsertValue) { EXPECT_EQ(0, 1); }

/*
TEST_F(LedDriverFixture, TurnOnLedOne) {
    LedDriver_TurnOn(1);
    ASSERT_EQ(1, virtualLeds);
}

TEST_F(LedDriverFixture, TurnOffLedOne) {
    LedDriver_TurnOn(1);
    LedDriver_TurnOff(1);
    ASSERT_EQ(0, virtualLeds);
}

TEST_F(LedDriverFixture, TurnOnMultipleLeds) {
    LedDriver_TurnOn(9);
    LedDriver_TurnOn(8);
    ASSERT_EQ(0x180, virtualLeds);
}

TEST_F(LedDriverFixture, TurnOffAnyLed) {
    LedDriver_TurnAllOn();
    LedDriver_TurnOff(8);
    ASSERT_EQ(0xff7f, virtualLeds);
}

TEST_F(LedDriverFixture, LedMemoryIsNotReadable) {
    virtualLeds = 0xffff;
    LedDriver_TurnOn(8);
    ASSERT_EQ(0x80, virtualLeds);
}

TEST_F(LedDriverFixture, UpperAndLowerBounds) {
    LedDriver_TurnOn(1);
    LedDriver_TurnOn(16);
    ASSERT_EQ(0x8001, virtualLeds);
}
*/

/*
int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
*/
