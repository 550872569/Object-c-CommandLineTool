//
//  main.m
//  Sort
//
//  Created by sogou-Yan on 2018/5/16.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

void quickSort(int *a ,int idxLeft,int idxRight) {
    int i = 0,j = 0,key = 0;
    if (idxLeft>idxRight) {//如果左边索引大于或者等于右边的索引就代表已经整理完成一个组了
        return;
    }
    key = a[idxLeft];//定义基准
    i = idxLeft;
    j = idxRight;
    while (i<j) {

        while (a[j]>=key && i<j) {
            j--;
        }
        a[i] = a[j];
        
        while (a[i]<key && i<j) {
            i++;
        }
        a[j] = a[i];
    }
   

    a[i] = key;
    printf("i=%d j=%d key=%d",i,j,key);
    printf("\n");
    for (int i = 0; i<12; i++) {
        printf(" %d ",a[i]);
    }
    printf("\n");
    quickSort(a, idxLeft, i-1);
    quickSort(a, i+1, idxRight);
    
}










void quick(int *a,int idxLeft,int idxRight) {
    int i=0,j=0,key=0;
    if (idxLeft>idxRight) {
        return;
    }
    i=idxLeft;
    j=idxRight;
    key=a[idxLeft];
    while (i<j) {
        while (i<j && key<a[j]) {
            j--;
        }
        a[i] = a[j];
        while (i<j &&key>a[i]) {
            i++;
        }
        a[j] = a[i];
    }
    a[i] = key;
    quick(a, idxLeft, i-1);
    quick(a, i+1, idxRight);
}

void sort(int *a,int count) {
    for (int i = 0; i<count-1; i++) {
        for (int j = 0; j<count-i-1; j++) {
            int temp = 0;
            if (a[j]<a[j+1]) {
                temp=a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }
        }
    }
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[12] = {1,9,5,8,2,7,6,10,20,56,23,32};
//        quick(&a, 0, 11);
        sort(&a, 12);
        for (int i = 0; i<12; i++) {
            printf(" %d ",a[i]);
        }
    }
    return 0;
}
