//
//  AMDCpu.m
//  DesignPattern_AbstractFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "AMDCpu.h"

@implementation AMDCpu

-(void)calculate
{
    NSLog(@"AMD的Cpu针脚数为：%i",self.pins);
}

@end
