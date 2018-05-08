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
        //strong
        person.firstName = string;
        //copy
        person.secondName = string;
        [string appendString:@"world"];
        NSLog(@"person:%@",person);
        
        /**
         1. 初始化一个可变字符串
         2. 初始化一个person对象
         3. 给person 对象赋值
            将 string 赋值给person.firstName
            将 string 赋值给person.secondName
         (lldb) p string
         (__NSCFString *) $0 = 0x000000010050ffd0 @"hello_world"
         (lldb) p person.firstName
         (__NSCFString *) $1 = 0x000000010050ffd0 @"hello_world"
         (lldb) p person.secondName
         (NSTaggedPointerString *) $2 = 0x005f6f6c6c656865 @"hello_"
         
         person.firstName retain 地址 == string地址
         person.secondName copy之后 地址为新地址 值不变
         
         我只是修改了 string 地址的值并未修改 person 的任何属性 却意外修改了person.firstName
         因为 firstName 是retain 而不是copy
         
         2018-05-08 18:53:02.112392+0800 Strong&Copy[8463:1503122] person:
         firstName: hello_world
         secondName: hello_
         Program ended with exit code: 0
         */
    }
    return 0;
}
