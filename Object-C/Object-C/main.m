//
//  main.m
//  Object-C
//
//  Created by sogou-Yan on 2018/5/14.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

void (^globalBlock)() = ^{
    
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        __block int a = 0;
        void (^stackBlock1)() = ^{
            a = 10;
        };
    }
    return 0;
}
