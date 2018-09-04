//
//  main.m
//  String
//
//  Created by Yan on 2018/6/6.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#include <string.h>

char *string_recerse(char *string) {
    if (!string) {
        string = NULL;
    }
    int n = strlen(string) / 2;
    int i = 0;
    char temp = 0;
    for (i = 0; i < n; i++) {
        temp = string[i];
        string[i] = string[strlen(string)-i-1];
        string[strlen(string)-i-1] = temp;
    }
    return string;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        char s[] = "Hello, World!";
        printf("%s \n",string_recerse(s));
//        printf("%s \n",str_reverse(s));

    }
    
    return 0;
}
