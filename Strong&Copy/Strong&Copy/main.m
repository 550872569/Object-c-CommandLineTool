//
//  main.m
//  Strong&Copy
//
//  Created by sogou-Yan on 2018/5/8.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableString *string = [NSMutableString string];
        [string appendString:@"hello_"];
        Person *person = [[Person alloc] init];
        person.firstName = string;
        person.secondName = string;
        [string appendString:@"world"];
        NSLog(@"person:%@",person);
    }
    return 0;
}
