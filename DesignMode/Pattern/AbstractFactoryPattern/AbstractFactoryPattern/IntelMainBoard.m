//
//  IntelMainBoardBase.m
//  DesignPattern_AbstractFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "IntelMainBoard.h"

@implementation IntelMainBoard

-(void)installCpuHoles
{
    NSLog(@"Intel的主板Cpu插槽总数为：%i",self.cpuHoles);
}

@end
