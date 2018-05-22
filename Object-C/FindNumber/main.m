//
//  main.m
//  FindNumber
//
//  Created by sogou-Yan on 2018/5/22.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

int search(int array[], int count, int target) {
    
    int left = 0;
    int right = count-1;
    int mid = 0;
    while (left<=right) {
        mid = (left+right)*0.5;
        if (array[mid]>target) {
            right = mid - 1;
        } else if (array[mid]<target){
            left = mid + 1;
        } else {
            return array[mid];
        }
    }
    
    return -1;//con't find the target
}

int binarySearchIdx(int array[], int count, int key) {
    int idxLow = 0;
    int idxHigh = count-1;
    while (idxLow<=idxHigh) {
        int mid = (idxLow + idxHigh)/2;
        if (array[mid] > key) {
            idxHigh = mid - 1;
        } else if (array[mid] < key) {
            idxLow = mid + 1;
        } else {
            return mid;
        }
    }
    return -1;
}

int searchTargetInArray(int array[], int count, int target) {
    if (!array) {
        return -1;
    }
    int low, high;
    low = 0;
    high = count-1;
    while (low<high) {
        int mid = (low+high)*0.5;
        if (array[mid]>target) {//target 在左边<<
            high = mid - 1;
        } else if (array[mid]<target){//target 在右边>>
            low = mid + 1;
        } else {
            return mid;
        }
    }
    return -1;
}

int searchMaxNumber(int array[], int count) {
    if (count<=0) {
        return -1;
    }
    int max = array[0];
    for (int i = 0; i<count; i++) {
        if (max<array[i]) {
            max = array[i];
        }
    }
    return max;
}

void find_2_largest(int array[], int array_length, int *plargest, int *psecond_largest){
    
    if(array[0]>array[1]){
        *plargest=array[0];
        *psecond_largest=array[1];
    }else{
        *plargest=array[1];
        *psecond_largest=array[0];
    }
    
    for(int i=2; i<array_length; i++){
        if(array[i]>*plargest){
            *psecond_largest=*plargest;
            *plargest=array[i];
        }else if(array[i]>*psecond_largest){
            *psecond_largest=array[i];
        }
        
    }
}


void find_2_largestNumberInArray(int array[], int arrayCount, int *largestNumber, int *secondLargest) {
    if (array[0]>array[1]) {
        *largestNumber = array[0];
        *secondLargest = array[1];
    } else if (array[0]<array[1]) {
        *largestNumber = array[1];
        *secondLargest = array[0];
    }
    for (int i = 2; i<arrayCount; i++) {
        if (array[i]>*largestNumber) {
            *secondLargest = *largestNumber;
            *largestNumber = array[i];
        } else if (array[i]>*secondLargest){
            *secondLargest = array[i];
        }
    }
}

void findMax(int array[], int count, int *max) {
    if (count<=0) {
        *max = -1;
    }
    *max = array[0];
    for (int i = 0; i<count; i++) {
        if (*max<array[i]) {
            *max = array[i];
        }
    }
}


void find_2_max(int array[], int count, int *max, int *secondMax) {
    if (array[0]>array[1]) {
        *max = array[0];
        *secondMax = array[1];
    } else if (array[0]<array[1]){
        *max = array[1];
        *secondMax = array[0];
    }
    for (int i = 2; i < count; i++) {
        if (array[i]>*max) {
            *secondMax = *max;
            *max = array[i];
        } else if (array[i]>*secondMax){
            *secondMax = array[i];
        }
    }
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        int a[12] = {0,1,2,3,4,5,6,7,8,9,10};
//        printf("target -- %d\n",searchMaxNumber(a, 12));
        
        int array[10]={23,45,987,3,-90,123,987,1975,988,0};
        int largest=0;
        int second_largest=0;
        int array_length=sizeof(array)/sizeof(array[0]);
        
        find_2_largestNumberInArray(array, array_length, &largest, &second_largest);
        
        printf("The 2 largest number is: %d and %d.\n", largest, second_largest);
        
        int max = 0;
        findMax(array, sizeof(array)/sizeof(array[0]), &max);
        printf("max : %d\n",max);
        
        int firstMax = 0;
        int secondMax = 0;
        find_2_max(array,  sizeof(array)/sizeof(array[0]), &max, &firstMax);
        printf("The 2 largest number is: %d and %d.\n", max, firstMax);

    }
    return 0;
}
