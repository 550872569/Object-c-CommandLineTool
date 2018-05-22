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



int findMax(int a[], int count, int target) {
    if (count<=0) {
        return -1;
    }
    int left, right, mid;
    left = 0;
    right = count-1;
    mid = 0;
    while (left<=right) {
        mid = (left+right)*0.5;
        if (a[mid]>target) {
            right = mid -1;
        } else if (a[mid]<target) {
            left = mid + 1;
        } else {
            return mid;
        }
    }
    return -1;
}

void searchMax(int a[], int count, int *max) {
    if (count<=0) {
        *max = -1;
    }
    *max = a[0];
    for (int i = 0; i<count; i++) {
        if (a[i]>*max) {
            *max = a[i];
        }
    }
}

void find_2_max(int a[], int count, int *first, int *second) {
    if (a[0]>a[1]) {
        *first = a[0];
        *second = a[1];
    } else if (a[0]<a[1]) {
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


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[17] = {1,9,5,8,2,7,6,10,20,56,23,32,1,9,20,60,60};
//        sorts(&a, 12);
        
//        for (int i = 0; i<12; i++) {
//            printf(" %d ",a[i]);
//        }
//        int a[12] = {1,2,3,4,5,6,7,8,9,12,13,14};

        printf("max idx = %d\n",findMax(a, 12, 5));
        int max;
        searchMax(a, 12, &max);
        printf("max = %d\n ",max);
        
        int first = 0;
        int second = 0;
        find_2_max(a, 17, &first, &second);
        printf("first:%d , second:%d \n",first,second);
    }
    return 0;
}
