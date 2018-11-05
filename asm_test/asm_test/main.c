//
//  main.c
//  asm_test
//
//  Created by grady player on 11/3/18.
//  Copyright © 2018 ObjectivelyBetter, LLC. All rights reserved.
//

#include <stdio.h>
#include <inttypes.h>

int64_t add(int64_t a, int64_t b);
int64_t sum(int64_t ints[], int64_t n);
int64_t divide_with_remainder(int64_t dividend, int64_t divisor, int64_t *remainder);
int64_t divide_with_remainder2(int64_t dividend, int64_t divisor, int64_t *remainder)
{
    *remainder = dividend % divisor;
    return dividend / divisor;
}
void jmptest();


int main(int argc, const char * argv[]) {
    // insert code here...
//   printf("add 56 + 67 = %" PRId64 "\n", add(56,67) );
    
    int64_t is[] = {1,2,3,4,5,6};
    
//jmptest();
    printf("sum 1..6 is %" PRId64 "\n", sum(is, sizeof(is)/sizeof(*is)) );
    printf("sum 1..6 is %" PRId64 "\n", sum(NULL, 0) );
    int64_t i = 0;
    printf(" 29 %% 4 = %"PRId64"R%" PRId64 "\n", divide_with_remainder(29, 4, &i),i );
    
    return 0;
}
