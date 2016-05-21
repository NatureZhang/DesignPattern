//
//  Father.m
//  DesignPattern_BasicKnowledge
//
//  Created by ZhangYu on 14-2-20.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "Father.h"

@implementation Father

@synthesize name;
@synthesize son;

-(Father*)init
{
    self=[super init];   //先使用父类方法进行初始化
    if (self!=nil) {
        son = [[Son alloc] init];
    }
    return self;
}

@end
