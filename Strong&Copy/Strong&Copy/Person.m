//
//  Person.m
//  Strong&Copy
//
//  Created by sogou-Yan on 2018/5/8.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)description {
    return [NSString stringWithFormat:@"\n firstName: %@ \n secondName: %@ \n thirdName: %@", self.firstName,self.secondName,self.thirdName];
}

@end
