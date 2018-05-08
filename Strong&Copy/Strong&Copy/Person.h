//
//  Person.h
//  Strong&Copy
//
//  Created by sogou-Yan on 2018/5/8.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//strong  -> retain 引用计数加一
@property(nonatomic, strong) NSString *firstName;
//copy 创建新的地址空间存储目标数据
@property(nonatomic, copy) NSString *secondName;

@end
