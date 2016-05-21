//
//  DivFactory.m
//  DesignPattern_FactoryMethodPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "DivFactory.h"

@implementation DivFactory

-(Operation*)createOperate
{
    return [[OperationDivide alloc] init];
}

@end
