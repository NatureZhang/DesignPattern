//
//  Son.m
//  DesignPattern_BasicKnowledge
//
//  Created by ZhangYu on 14-2-20.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "Son.h"
#import "Father.h"
@implementation Son

@synthesize name;
@synthesize father;

-(Son*)init
{
    self=[super init];   //先使用父类方法进行初始化
    if (self!=nil) {
//        father = [[Father alloc] init];
    }
    return self;
}

@end
