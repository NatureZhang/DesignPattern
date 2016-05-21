//
//  IntelCPU.m
//  DesignPattern_AbstractFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "IntelCPU.h"

@implementation IntelCPU

-(void)calculate
{
    NSLog(@"Intel CPU的针脚数：%i",self.pins);
}

@end
