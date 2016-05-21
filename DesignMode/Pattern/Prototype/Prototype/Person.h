//
//  Person.h
//  Prototype
//
//  Created by zhangdong on 15/7/16.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying, NSMutableCopying>

@property (nonatomic, copy) NSMutableString *name;
@property (nonatomic, copy) NSString *sex;
@property (nonatomic, assign) int age;

- (id)initWithName:(NSMutableString *)name andSex:(NSString *)sex andAge:(int)age;
@end
