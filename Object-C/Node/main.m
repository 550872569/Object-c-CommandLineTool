//
//  main.m
//  Node
//
//  Created by Yan on 2018/5/18.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct NODE {
    struct NODE *next;
    int number;
} node;

node *createLinkedList(int length) {
    if (length<=0) {
        return NULL;
    }
    node *head,*p,*q;
    int noteNumber = 1;
    head = malloc(sizeof(node));
    head->number = noteNumber;
    head->next = NULL;
    p = q = head;
    while (++noteNumber<=length) {
        p = (node *)malloc(sizeof(node));
        p->number = noteNumber;
        p->next = NULL;
        q->next = p;//q 原本指向head的地址 ==> head-> = p(p原来也指向head 进入while之后malloc开辟新空间) 这里实际是在给head的next赋值
        q = p;//malloc 出来的新空间又给了q
    }
    return head;
}

node *reverseNode(node *head) {
    if (!head) {
        return NULL;
    }
    node *p,*q;
    p = head;//接收原始链表
    q = NULL;//初始化空链表 用于返回值
    while (p) {
        node *pNext = p -> next;//获取原始链表第一个节点之后的所有节点 ==number-++i（i=1）
        p -> next = q;//原始链表和p置空
        q = p;//空链表赋值
        p = pNext;//临时变量接收 原始链表第一个节点之后的所有节点
    }
    return q;
}

void printLinkList(node *head) {
    if (head == NULL) {
        return;
    }
    node *p = head;
    while (p) {
        printf("%d ", p->number);
        p = p -> next;
    }
    printf("\n");
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        node *head = createLinkedList(7);
        if (head) {
            printLinkList(head);
            node *reHead = reverseNode(head);
            printLinkList(reHead);
            free(reHead);
        }
        free(head);
    }
    return 0;
}
