/*
 * Author: Márcio Porto
 * COMP 240 - HW3 - Fall 2014
 */

struct matrix_entry{

  short a;

  char b;

  int c;

  double d; 

};

struct matrix_entry matrix[2][5];

int return_entry(int i, int j){
   return matrix[i][j].c;
}

