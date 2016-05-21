//
//  AddFactoy.m
//  DesignPattern_FactoryMethodPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "AddFactoy.h"

@implementation AddFactoy

-(Operation*)createOperate
{
    return [[OperationAdd alloc] init];
}

@end
