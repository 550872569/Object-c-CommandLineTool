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

typedef struct NODE {
    struct NODE *next;
    int number;
} node;

node * createLinkLish(int length) {
    if (!length) {
        return NULL;
    }
    node *head,*p,*q;
    int number = 1;
    head = (node *)malloc(sizeof(node));
    head->number = 1;
    head->next = head;
    p = q = head;
    while (++number<=length) {
        p = (node *)malloc(sizeof(node));
        p->number = number;
        p->next = NULL;
        q->next = p;
        q = p;
    }
    return head;
}

void printfLinkLish(node *head) {
    if (head==NULL) {
        return;
    }
    node *p = head;
    while (p) {
        node *q = p->next;
        printf("%d %d \n",p->number,q->number);
        p = p->next;
    }
    printf("\n");
}

node * reverseFunc(node *head) {
    if (head==NULL) {
        return head;
    }
    node *p,*q;
    p = head;
    q = NULL;
    while (p) {
        node *pNext = p->next;
        p->next = q;
        q = p;
        p = pNext;
    }
    return q;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        int a[12] = {1,9,5,8,2,7,6,10,20,56,23,32};
//        for (int i = 0; i<12; i++) {
//            printf(" %d ",a[i]);
//        }
        
        
        node *head = createLinkLish(7);
        if (head) {
            printfLinkLish(head);
//            node *reverseHead = reverseFunc(head);
//            printfLinkLish(reverseHead);
//            free(reverseHead);
        }
        reverseFunc(nil);
    }
    return 0;
}
