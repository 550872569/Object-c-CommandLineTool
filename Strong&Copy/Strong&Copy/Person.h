//
//  Person.h
//  Strong&Copy
//
//  Created by sogou-Yan on 2018/5/8.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic, strong) NSString *firstName;

@property(nonatomic, copy) NSString *secondName;

@end
