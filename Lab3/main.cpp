#include <iostream>
#include <gtest/gtest.h>

#include "utils/programmerDetails.h"
#include "utils/argumentParsing.h"


/** 

   Przyklad wywolania: 
   g++ *.cpp ./utils/*.cpp ./utils/*.cc -lgtest -pthread -o exercise
   ./exercise

**/

int main(int argc, char* argv[])
{
    StudentsInfo::validateStudentsInfo();

    ArgumentParsing::reactToProgramArgumentsPossibilyExit(argc, argv);

    ::testing::InitGoogleTest(&argc, argv);

    return RUN_ALL_TESTS();
}
