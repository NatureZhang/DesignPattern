//
//  AMDMainBoard.m
//  DesignPattern_AbstractFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "AMDMainBoard.h"

@implementation AMDMainBoard

-(void)installCpuHoles
{
    NSLog(@"AMD的主板Cpu插槽总数为：%i",self.cpuHoles);
}

@end
