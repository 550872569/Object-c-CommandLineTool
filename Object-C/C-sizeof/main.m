//
//  main.m
//  C-sizeof
//
//  Created by sogou-Yan on 2018/5/11.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int **a[3][4];
        int *b[3][4];
        printf("\n **a-%ld \n",sizeof(**a));
        printf("\n *b-%ld \n",sizeof(*b));
        printf("\n b-%ld \n",sizeof(b));
        /**
         **a-8
         
         *b-32
         
         b-96
         */
    }
    return 0;
}

