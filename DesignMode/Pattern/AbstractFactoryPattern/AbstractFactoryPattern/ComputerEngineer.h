//
//  ComputerEngineer.h
//  DesignPattern_AbstractFactoryPattern
//
//  Created by ZhangYu on 14-2-21.
//  Copyright (c) 2014年 ZhangYu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CpuBase.h"
#import "MainBoardBase.h"
#import "FactoryBase.h"


@interface ComputerEngineer : NSObject

@property(nonatomic,retain)CpuBase* cpu;
@property(nonatomic,retain)MainBoardBase* mainBoard;
-(void)makeComputer:(FactoryBase*)factoryBase;
-(void)prepareHardwares:(FactoryBase*)factoryBase;

@end
