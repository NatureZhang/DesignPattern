//
//  MulFactory.m
//  DesignPattern_FactoryMethodPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "MulFactory.h"

@implementation MulFactory

-(Operation*)createOperate
{
    return [[OperationMultiply alloc] init];
}

@end
