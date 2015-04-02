/*
 * Author: Márcio Porto
 * COMP 240 - HW3 - Fall 2014
 */

int arith(int x, int y, int z)
{
    int t1 = y + x;
    int t2 = t1 + z;
    int t3 = t2 + 4*x;
    int t4 = t2 << 5;
    int t5 = t3 + t4;
    return t5;
}