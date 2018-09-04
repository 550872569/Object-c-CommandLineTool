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

void quickSort(int *a, int left, int right) {
    int i = 0, j = 0, key = 0;
    if (left>right) {
        return;
    }
    i = left;
    j = right;
    key = a[left];
    while (i<j) {
        while (i<j && a[j] > key) {
            j--;
        }
        a[i] = a[j];
        while (i<j && a[i] < key) {
            i++;
        }
        a[j] = a[i];
    }
    a[i] = key;
    quickSort(a, left, i-1);
    quickSort(a, i+1, right);
    
}

int findTarget(int *a, int count, int target) {
    if (count<=0) {
        return  -1;
    }
    int low = 0;
    int high = count-1;
    while (low<high) {
        int mid = (low+high)*0.5;
        if (a[mid]>target) {
            high = mid-1;
        } else if (a[mid]<target) {
            low = mid+1;
        } else {
            return mid;
        }
    }
    return -1;
}

void quickSorts(int *a, int left, int right) {
    if (left>right) {
        return;
    }
    int i = left;
    int j = right;
    int key = a[left];
    while (i<j) {
        while (i<j && a[j] > key) {
            j--;
        }
        a[i] = a[j];
        while (i<j && a[i] < key) {
            i++;
        }
        a[j] = a[i];
    }
    a[i] = key;
    quickSorts(a, left, i-1);
    quickSorts(a, i+1, right);
    
}

int findTargetIndex(int *a, int count, int target) {
    if (count<=0) {
        return -1;
    }
    for (int i = 0; i<count; i++) {
        if (target==a[i]) {
            return i;
        }
    }
    return -1;
}

int findTargetIdx(int *a, int count, int target) {
    if (count<=0) {
        return -1;
    }
    int low = 0;
    int high = count-1;
    int number = 0;
    while (++number<count) {
        int mid = (low+high)*0.5;
        if (a[mid] > target) {
            high = mid-1;
        } else if (a[mid] < target){
            low = mid +1;
        } else {
            return mid;
        }
        
    }
    
    
    return -1;
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
        quickSort(a, 0, 9);
        for (int i = 0; i<10; i++) {
            printf("%d ",a[i]);
        }
        printf("\n");
        int b[10] = {1,2,3,4,5,6,7,8,9,10};
        int targetIndex = findTarget(b, 10, 10);
        printf("targetIndex = %d \n",targetIndex);
        
        int c[10] = {1,2,3,4,100,6,7,8,99,90};
        quickSorts(c, 0, 9);
        for (int i = 0; i<10; i++) {
            printf("%d ",c[i]);
        }
        int idx = findTargetIndex(c, 10, 100);
        printf("taret idx =%d",idx);
        
        int idxtarget = findTargetIdx(c, 10, 4);
        printf("taret idx =%d",idxtarget);

    }
    return 0;
}
