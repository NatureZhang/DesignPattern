//
//  AMDFactory.m
//  DesignPattern_AbstractFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "AMDFactory.h"

@implementation AMDFactory

-(CpuBase*)createCpu
{
    AMDCpu* amdCpu = [[AMDCpu alloc] init];
    amdCpu.pins = 938;
    return amdCpu;
}

-(MainBoardBase*)createMainBoard
{
    MainBoardBase* amdMainBoard = [[AMDMainBoard alloc] init];
    amdMainBoard.cpuHoles = 938;
    return amdMainBoard;
}

@end
