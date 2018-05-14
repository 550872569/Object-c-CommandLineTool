//
//  main.m
//  *and&
//
//  Created by sogou-Yan on 2018/5/11.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

void pointer() {
    int *str;
    str = (int *)0x8000;
    *str = 0xaabb;//bad address
    
}

void pointerConst() {
    void (*f)();
    int * a();
    //    const int *;
    //    int* const;
    //    const int* const;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        pointer();
    }
    return 0;
}



//值传递 引用传递
void change(int *a,int b,int c) {
    c = *a;
    b = 3;
    *a = 2;
}
void addressUseForParam(void) {
    int a = 1,b = 2, c = 3;
    change(&a, b, c);
    // a  地址传递 修改a 的地址中的数据 b c 值传递不影响本身
    NSLog(@"a:%d b:%d c:%d",a,b,c);//a:2 b:2 c:3
}

char *GetMemory(void) {
    char p[] = "hello world";
    char *g = "asd";
    return g;
}
void addressAndRefreshReference(void) {
    // 声明变量并初始化
    int iv;
    int iv2=1024;
    // 声明引用 必须初始化
    //        int &reiv; //fail
    //        int &reiv = iv;
    // 声明指针
    int *pi;
    //        *pi = 5;//指针必须指向一个地址 之后才可以赋值 直接赋值错误
    pi = &iv2;//指针pi赋值指向iv2的实际地址
    const double di;//const 声明常量必须初始化
    const double max = 10.0;
    const double *pc = &max;
    
    char *str = NULL;
    str = GetMemory();
    
    printf("%p \n",str);
}

