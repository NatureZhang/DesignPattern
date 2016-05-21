//
//  IntelFactoryBase.m
//  DesignPattern_AbstractFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import "IntelFactory.h"

@implementation IntelFactory

-(CpuBase*)createCpu
{
    IntelCPU* intelCpu = [[IntelCPU alloc] init];
    intelCpu.pins = 755;
    return intelCpu;
}

-(MainBoardBase*)createMainBoard
{
    MainBoardBase* intelMainBoard = [[IntelMainBoard alloc] init];
    intelMainBoard.cpuHoles = 755;
    return intelMainBoard;
}

@end
