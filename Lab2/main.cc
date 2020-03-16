#include <iostream>
#include <gtest/gtest.h>

#include "utils/programmerDetails.h"
#include "utils/argumentParsing.h"

/*
    Przykladowa kompilacja i wywolanie:
        g++ *.cc ./utils/*.cc -lgtest -pthread -o exercise
        ./exercise

    Lukasz Jezapkowicz
*/

int main(int argc, char* argv[])
{
	StudentsInfo::validateStudentsInfo();

    ArgumentParsing::reactToProgramArgumentsPossibilyExit(argc, argv);

    ::testing::InitGoogleTest(&argc, argv);

    return RUN_ALL_TESTS();
}
