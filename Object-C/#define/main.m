//
//  main.m
//  #define
//
//  Created by sogou-Yan on 2018/5/11.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
#define SECONDS_PER_YEAR    (60 * 60 * 24 * 365)UL
        
#define MIN(a,b)            ((a)<=(b)?(a):(b))
        
#define SQR(a)              ((a)*(a))
        
        
        const int a;
        int const b;
        const int *c; //&c not assign
        int * const d;
//        c = 9;
//        d = 10;
//        &d = 10;
//        d= 10;
        
        
    }
    return 0;
}

