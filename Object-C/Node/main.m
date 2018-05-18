//
//  main.m
//  Node
//
//  Created by Yan on 2018/5/18.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

#include <stdio.h>

#include <stdlib.h>


typedef struct NODE {
    
    struct NODE *next;
    
    int num;
    
}node;

node *createLinkList(int length) {    
    if (length <= 0) {
        return NULL;
    }
    node *head,*p,*q;
    int number = 1;
    head = (node *)malloc(sizeof(node));
    head->num = 1;
    head->next = head;
    p = q = head;
    while (++number <= length) {
        p = (node *)malloc(sizeof(node));
        p->num = number;
        p->next = NULL;
        q->next = p;
        q = p;
    }
    return head;
}

void printLinkList(node *head) {
    if (head == NULL) {
        return;
    }
    node *p = head;
    while (p) {
        printf("%d ", p->num);
        p = p -> next;
    }
    printf("\n");
}

node *reverseFunc1(node *head) {
    if (head == NULL) {
        return head;
    }
    node *p,*q;
    p = head;
    q = NULL;
    while (p) {
        node *pNext = p -> next;
        p -> next = q;
        q = p;
        p = pNext;
    }
    return q;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        node *head = createLinkList(7);
        if (head) {
            printLinkList(head);
            node *reHead = reverseFunc1(head);
            printLinkList(reHead);
            free(reHead);
        }
        free(head);
    }
    return 0;
}
