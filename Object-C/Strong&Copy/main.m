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
        
        person.thirdName = string;
        [string appendString:@"world"];
        NSLog(@"person:%@",person);
        
        /**
         
         
         1. strong 对象类型 引用计数加一 retain 修饰基本数据类型 编译器会报错 编译不通过
         #warning property with retain or strong attribute must be of object type
         
         2. assign 基本数据类型 赋值操作 不产生引用计数
         修饰string 之后 不会报错 单不会copy 也会存在意外修改的情况
         3. copy retain 引用计数会加一 并且产生新的对象 赋值只会获取地址空间的数据不会使用原地址空间
         stirng 用strong 修饰之后， 地址和赋值的对象地址一致，不会copy 如果修改原地址数据，string数据也会被修改
         4. weak delegate 解决循环引用
         
         1. 初始化一个可变字符串
         2. 初始化一个person对象
         3. 给person 对象赋值
         将 string 赋值给person.firstName retain
         将 string 赋值给person.secondName copy
         将 string 赋值给person.thirdName assign
         (lldb) p string
         (__NSCFString *) $0 = 0x000000010050ffd0 @"hello_world"
         (lldb) p person.firstName
         (__NSCFString *) $1 = 0x000000010050ffd0 @"hello_world"
         (lldb) p person.secondName
         (NSTaggedPointerString *) $2 = 0x005f6f6c6c656865 @"hello_"
         (lldb) p person.thirdName
         (NSTaggedPointerString *) $2 = 0x005f6f6c6c656865 @"hello_world"
         
         person.firstName retain 地址 == string地址
         person.secondName copy之后 地址为新地址 值不变
         
         我只是修改了 string 地址的值并未修改 person 的任何属性 却意外修改了person.firstName
         因为 firstName 是retain 而不是copy
         
         2018-05-08 18:53:02.112392+0800 Strong&Copy[8463:1503122] person:
         firstName: hello_world
         secondName: hello_
         thirdName: hello_world
         Program ended with exit code: 0
         */
    }
    return 0;
}

