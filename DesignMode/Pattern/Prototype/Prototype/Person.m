//
//  Person.m
//  Prototype
//
//  Created by zhangdong on 15/7/16.
//  Copyright (c) 2015年 __Nature__. All rights reserved.
//

#import "Person.h"

@implementation Person
- (id)initWithName:(NSMutableString *)name andSex:(NSString *)sex andAge:(int)age
{
    if (self = [super init]) {
        self.name = name;
        self.sex = sex;
        self.age = age;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone
{
    Person *person = [[self class] allocWithZone:zone];
    person.name = [self.name copy];
    person.sex = [self.sex copy];
    person.age = self.age;
    
    return person;
}

- (id)mutableCopyWithZone:(NSZone *)zone
{
    Person *obj = [[self class] allocWithZone:zone];
    
    obj.name = [self.name mutableCopy];
    
    obj.sex = [self.sex mutableCopy];
    
    obj.age = self.age;

    return obj;
}
@end
