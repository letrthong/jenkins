#include "gtest/gtest.h"

TEST(firstTest, abs)
{
  EXPECT_EQ(1, abs( -1 ));
}


TEST(secondTest, abs)
{
  EXPECT_EQ(1, abs( -1 ));
}

TEST(third, abs)
{
  EXPECT_EQ(2, abs( -1 ));
}

//g++ -I../include testmain.cc mytest.cc libgtest.a libgtest_main.a -pthread  -o mytes
