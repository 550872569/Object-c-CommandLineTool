//
//  main.m
//  Sort
//
//  Created by sogou-Yan on 2018/5/16.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdlib.h>
#include <stdio.h>

void quickSort(int *a, int indexLeft,int indexRight) {
    int i = 0, j = 0, key = 0;
    if (indexLeft>indexRight) {
        return;
    }
    i = indexLeft;
    j = indexRight;
    key = a[indexLeft];
    while (i<j) {
        while (i<j&& a[j] > key) {
            j--;
        }
        a[i] = a[j];
        while (i<j && a[i] < key) {
            i++;
        }
        a[j] = a[i];
    }
    a[i] = key;
    quickSort(a, indexLeft, i-1);
    quickSort(a, i+1, indexRight);
}

void sortES(int *a,int count) {
    for (int i = 0; i<count-1; i++) {
        for (int j = 0; j<count-i-1; j++) {
            int tempDes=0;
            if (a[j] > a[j+1]) {
                tempDes = a[j];
                a[j] = a[j+1];
                a[j+1] = tempDes;
            }
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[12] = {1,9,5,8,2,7,6,10,20,56,23,32};
        for (int i = 0; i<12; i++) {
            printf(" %d ",a[i]);
        }
    }
    return 0;
}
