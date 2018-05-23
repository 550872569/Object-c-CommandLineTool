//
//  main.m
//  Sort_0
//
//  Created by Yan on 2018/5/23.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

void findMax(int *a, int count, int *max) {
    if (count<=0) {
        *max = -1;
    }
    *max = a[0];
    for (int i = 0; i<count; i++) {
        if(a[i] > *max) {
            *max = a[i];
        }
    }
}

int searchTargetIndex(int *a, int count, int target) {
    if (count<=0) {
        return -1;
    }
    int low = 0;
    int high = count - 1;
    int mid = 0;
    while (low<high) {
        mid = (low+high)*0.5;
        if (a[mid]>target) {
            high = mid - 1;
        } else if (a[mid]<target){
            low = mid + 1;
        } else {
            return mid;
        }
    }
    return -1;
}

void sort(int *a, int count) {
    for (int i = 0;  i<count-1; i++) {
        for (int j = 0; j<count-i-1; j++) {
            if (a[j] > a[j+1]) {
                int temp = a[j];//aes
                a[j]  = a[j+1];
                a[j+1] = temp;
            }
        }
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[10] = {1,2,4,56,8,6,54,45,3};
        int max = 0;
        findMax(a, 10, &max);
        printf("max = %d \n",max);
        int b[10]  = {1,2,3,4,5,6,7,8,9,10};
        printf("searchTargetIndex = %d \n",searchTargetIndex(b, 10, 5));
        sort(a, 10);
        for (int i = 0; i<10; i++) {
            printf("%d ",a[i]);
        }
        printf("\n");
    }
    return 0;
}
