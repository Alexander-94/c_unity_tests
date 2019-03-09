#include "unity.h"
#include "add.h"

void setUp(void)
{
    //printf("\nset up runs before each test");
}

void tearDown(void)
{
    //printf("\ntear down after test");
}

void testFuncShouldDoAdd(void)
{
    int summ = add(5,2);
    TEST_ASSERT_EQUAL_INT(7, summ);
}

int main(void)
{
    UNITY_BEGIN();
    RUN_TEST(testFuncShouldDoAdd);
    return UNITY_END();
}
