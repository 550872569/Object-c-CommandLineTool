//
//  main.m
//  Object-C
//
//  Created by sogou-Yan on 2018/5/14.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

//void (^globalBlock)() = ^{
//
//};
//
//void blockDeme() {
//    __block int a = 0;
//    NSObject *o = [[NSObject alloc] init];
//    __block NSObject *b = [[NSObject alloc] init];
//
//    void (^stackBlock1)() = ^{
//        a = 10;//捕获基本数据类型 局部变量 __block 修饰 会_block_byref 操作
//        NSLog(@"o:%@",o);//捕获对象类型局部变量 未被__block 修饰 只是增加引用计数不进行 block_byref_
//        NSLog(@"b:%@",b);//捕获对象类型局部变量 被__block 修饰 行 block_byref_ 增加引用计数进 block field is obj
//    };
//}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int i = 10;
        void (^block)() = ^{i;};
        
//        __weak void (^weakBlock)() = ^{i;};
        
        void (^stackBlock)() = ^{};
        
        NSLog(@"blcok0:%@",^{});
        NSLog(@"blcok1:%@",^{i;});

        /*
        // ARC情况下
        
        // 创建时，都会在栈中
        // <__NSStackBlock__: 0x7fff5fbff730>
        NSLog(@"%@", ^{i;});
        
        // 因为block为strong类型，且捕获了外部变量，所以赋值时，自动进行了copy
        // <__NSMallocBlock__: 0x100206920>
        NSLog(@"%@", block);
        
        // 如果是weak类型的block，依然不会自动进行copy
        // <__NSStackBlock__: 0x7fff5fbff728>
        NSLog(@"%@", weakBlock);
        
        // 如果block是strong类型，并且没有捕获外部变量，那么就会转换成__NSGlobalBlock__
        // <__NSGlobalBlock__: 0x100001110>
        NSLog(@"%@", stackBlock);
         */
    }
    return 0;
}
