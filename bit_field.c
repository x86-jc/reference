/********************************************************
 * Title:          Basic Bit Field						*
 * Creator:        John J. Coleman						*
 * Creation Date:  2026.05.14							*
 * Modified Date:  2026.05.14							*
 *******************************************************/
#include <stdio.h>

/* 4 1-bit fields in a single unsigned int. */
struct bit_field_test
{
        unsigned int bit0 : 1;
        unsigned int bit1 : 1;
        unsigned int bit2 : 1;
        unsigned int bit3 : 1;
};

int main(int argc, char *argv[])
{
        struct bit_field_test test;
        struct bit_field_test *ptr = &test;

        fprintf(stdout, "Size of bit_field_test: %d\n", sizeof(struct bit_field_test));

        test.bit0 = 1;
        test.bit1 = 0;
        test.bit2 = 0;
        test.bit3 = 1;

        fprintf(stdout, "bit0: %d\nbit1: %d\nbit2: %d\nbit3: %d\n", test.bit0, test.bit1, test.bit2, test.bit3);
        fprintf(stdout, "bit_field_test address: %p\nbit_field_test content: %d\n", ptr, *ptr);

        return 0;
}
