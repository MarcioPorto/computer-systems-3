/*
 * Author: Márcio Porto
 * COMP 240 - HW3 - Fall 2014
 */

typedef struct ELE *tree_ptr;

struct ELE {
    long val;
    tree_ptr left;
    tree_ptr right;
};

long trace(tree_ptr tp)
{
    long t = 0;
    while(tp != 0) {
        t = tp->val;
        tp = tp->right;
    }
    return t;
}