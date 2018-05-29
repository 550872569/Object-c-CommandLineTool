//
//  main.m
//  Sort_0
//
//  Created by Yan on 2018/5/29.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>


void findMax(int *a, int count, int *max) {
    if (count<=0) {
        *max = -1;
    }
    int temp = a[0];
    for (int i = 0; i<count; i++) {
        if (a[i]>temp) {
            temp = a[i];
        }
    }
    *max = temp;
}

void find_2_max(int *a, int count, int *first, int *second) {
    if (count<=0) {
        *first = -1;
        *second = -1;
    }
    if (a[0]>a[1]) {
       *first = a[0];
       *second = a[1];
    } else if (a[1]>a[0]) {
        *first = a[1];
        *second = a[0];
    }
    for (int i = 2; i<count; i++) {
        if (a[i]>*first) {
            *second = *first;
            *first = a[i];
        } else if (a[i]>*second) {
            *second = a[i];
        }
    }
    
}

void sort(int *a, int count) {
    if (count<=0) {
        *a = -1;
    }
    for (int i = 0; i<count-1; i++) {
        for (int j = 0; j<count-1-i; j++) {
            int temp = a[j];
            if (a[j]>a[j+1]) {//aes
                temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }
            
            if (a[j]<a[j+1]) {//des
                temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[10] = {1,2,3,4,100,6,7,8,99,90};
        int max = 0;
        findMax(a, 10, &max);
        printf("%d\n",max);
        int first = 0;
        int second = 0;
        find_2_max(a, 10, &first, &second);
        printf("first = %d \n second = %d\n",first,second);
        
        sort(a, 10);
        for (int i = 0; i<10; i++) {
            printf("%d ",a[i]);
        }
        printf("\n");
    }
    return 0;
}
